# Normalization Roadmap

## Objective

Apply ADR-003 (Reference Data Strategy) across the Integration Catalog Database.

The objective is to progressively replace business-critical free-text attributes with governed reference data tables.

---

# Completed

## integration_type

Status: Implemented

Reference data used to classify integrations.

Examples:

- Carrier
- Marketplace
- CMS
- ERP
- TMS

---

## capability

Status: Implemented

Reference data used to describe integration capabilities.

Examples:

- Tracking
- Manifest
- DDP
- Hazmat

---

## country

Status: Implemented

Reference country catalog.

---

## platform_product

Status: Implemented

Reference catalog of products consuming integrations.

---

## integration_method

Status: Implemented

Previous approach:

```text
connection_type
```

Current approach:

```text
integration_method
integration_method_mapping
```

Examples:

- REST API
- SOAP API
- GraphQL API
- Webhook
- FTP
- SFTP
- EDI

Purpose:

Support integrations using multiple integration methods.

---

# In Progress

## integration_status

Current:

```text
integration.status
```

Target:

```text
integration_status
integration.status_id
```

Lifecycle:

```text
Idea
Planned
Analysis
Development
QA
Released
Pilot
Available
Deprecated
Retired
```

Migration Files:

```text
V008__create_integration_status_table.sql
S014__seed_integration_status.sql
V009__refactor_integration_status.sql
M001__integration_status_migration.sql
```

Status:

In Progress

---

## documentation_type

Current:

```text
documentation.document_type
```

Target:

```text
documentation_type
documentation.documentation_type_id
```

Examples:

- API Documentation
- Business Guide
- User Guide
- Configuration Guide
- Operational Guide
- Troubleshooting Guide
- FAQ
- Release Notes
- Training Material

Priority:

High

Status:

Planned

---

# Planned

## contact_role

Current:

```text
contact.role
```

Target:

```text
contact_role
contact.contact_role_id
```

Examples:

- Technical Account Manager
- Support Contact
- Partner Manager
- Business Contact

Priority:

High

---

## endpoint_status

Current:

```text
integration_endpoint.endpoint_status
```

Target:

```text
endpoint_status
integration_endpoint.endpoint_status_id
```

Examples:

- Active
- Beta
- Deprecated
- Retired

Priority:

Medium

Reason:

Used for filtering, reporting and lifecycle management.

## endpoint_environment

Status: Planned

Purpose:

Represent environments associated with integration endpoints.

Examples:

- Sandbox
- UAT
- Production

Priority:

High

---

# Architectural Roadmap

## integration_endpoint

Priority:

High

Purpose:

Represent real integration architecture.

Planned entities:

```text
endpoint_type
authentication_method
integration_endpoint
```

Business Value:

Enable documentation and governance of:

- Sandbox endpoints
- Production endpoints
- Tracking APIs
- Shipment APIs
- Label APIs
- Authentication APIs
- Webhooks
- Pickup APIs
- Relay Point APIs

---

## integration_status_history

Priority:

Medium

Purpose:

Retain integration lifecycle history.

Examples:

```text
Development
→ QA
→ Released
→ Pilot
→ Available
```

Benefits:

- Governance
- KPI tracking
- Lead time analysis
- Release monitoring

---

# Future Candidates

## integration_topic

Purpose:

Improve documentation discovery and knowledge management.

Examples:

- Authentication
- Tracking
- Shipment Creation
- Label Generation
- Manifest
- Returns
- DDP
- Hazmat
- PUDO

Priority:

Medium

---

## documentation_topic

Purpose:

Link documentation to business and technical subjects.

Examples:

```text
Documentation
    ↔
Topic
```

Business Questions:

- Where is the Hazmat documentation?
- Which documents explain Tracking?
- Which documents cover DDP?

Priority:

Medium

---

# Long-Term Vision

The Integration Catalog Database evolves toward a complete Integration Knowledge Repository.

The repository should eventually provide:

- Technical documentation
- Business documentation
- Operational procedures
- Integration architecture
- Endpoint catalog
- Authentication catalog
- Knowledge discovery
- Lifecycle governance
- Reporting and analytics

The objective is to make the repository a central source of integration knowledge across the organization.
