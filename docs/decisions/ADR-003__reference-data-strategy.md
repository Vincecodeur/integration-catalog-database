# ADR-003 — Reference Data Strategy

## Status

Accepted

---

## Context

As the Integration Catalog Database grows, some attributes may initially be implemented as free text fields.

While free text fields are flexible, they introduce several risks:

- Typing mistakes
- Inconsistent values
- Reporting inaccuracies
- Filtering issues
- Poor data quality
- Difficult application logic

Examples:

```text
Production
production
PRODUCTION
Prod
Live
```

Functionally these values may represent the same concept but are stored differently.

---

## Problem Statement

Business-critical data should not depend on uncontrolled free-text values.

Whenever a value is used to:

- classify records
- filter records
- aggregate records
- drive workflows
- control application behavior
- create relationships between entities

free-text becomes a potential source of inconsistency.

---

## Decision

The project adopts the following rule:

> If a value is used for classification, filtering, aggregation, workflow management, reporting, application logic or relationships, it should be considered a candidate for normalization into a reference table.

---

## Normalization Criteria

A value becomes a candidate for a reference table when at least one of the following conditions is met:

### Repeated Values

The same value appears repeatedly across records.

Examples:

```text
Carrier
Marketplace
CMS
ERP
```

---

### Reporting Usage

The value is used in reporting queries.

Example:

```sql
GROUP BY status
```

---

### Filtering Usage

The value is frequently used in WHERE clauses.

Example:

```sql
WHERE status = 'Production'
```

---

### Workflow Usage

The value participates in a business process or workflow.

Examples:

```text
Idea
Planned
Analysis
Development
QA
Pilot
Production
Deprecated
Retired
```

---

### Architectural Dependency

Application behavior depends on the value.

Examples:

```text
REST API
SOAP API
GraphQL API
Webhook
```

---

## Reference Data Examples

The following entities are considered reference data:

- integration_type
- capability
- country
- integration_method
- platform_product

Future reference entities:

- integration_status
- documentation_type
- contact_role

---

## Acceptable Free Text Examples

Free text remains appropriate when values are inherently unique and not used for classification.

Examples:

```text
long_description
notes
comments
business_context
implementation_guidance
```

---

## Benefits

This strategy improves:

- Data consistency
- Reporting quality
- Maintainability
- Scalability
- Referential integrity
- User experience

---

## Consequences

The model prioritizes:

```text
Controlled reference data
```

over

```text
Unrestricted free text
```

for all business-critical information.

---

## Practical Rule

When designing a new attribute, ask:

> "Will this value be filtered, grouped, counted, used in workflows, drive application behavior or appear in reports?"

If the answer is yes:

```text
Create or consider a reference table.
```

If the answer is no:

```text
A free-text field may be appropriate.
```

---

## Example Application

Current candidates for normalization:

```text
integration.status
documentation.document_type
contact.role
```

Future implementation roadmap:

1. integration_status
2. documentation_type
3. contact_role
