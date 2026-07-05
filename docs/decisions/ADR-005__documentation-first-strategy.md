# ADR-005 — Documentation First Strategy

## Status

Accepted

---

## Context

The Integration Catalog Database began as a technical catalog used to store information about integrations, partners, capabilities and connectivity.

As the project evolved, it became clear that the primary value of the catalog is not the integration record itself, but the knowledge attached to it.

In real-world organizations, users rarely start by looking for a contact person.

They usually start by looking for:

- Documentation
- Functional explanations
- API references
- Operational procedures
- Troubleshooting information
- Configuration guidance

---

## Problem Statement

How should knowledge about integrations be organized?

Should knowledge primarily rely on contact information?

Or should documentation become the primary source of information?

---

## Decision

Documentation is considered the primary source of knowledge within the Integration Catalog Database.

Contacts are considered secondary sources used when documentation is insufficient or unavailable.

---

## Principles

### Principle 1

Documentation must be preferred over tribal knowledge.

Information should be documented rather than remaining dependent on individuals.

---

### Principle 2

Documentation should answer most questions without requiring direct contact with a subject matter expert.

---

### Principle 3

The catalog should progressively evolve into a searchable knowledge repository.

---

## Knowledge Hierarchy

Preferred information sources:

```text
Documentation
    ↓
Reference Data
    ↓
Operational Procedures
    ↓
Contacts
```

---

## Documentation Categories

The catalog supports multiple categories of documentation.

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

---

## Benefits

This strategy improves:

- Knowledge sharing
- Scalability
- Onboarding
- Operational autonomy
- Support efficiency
- Long-term maintainability

---

## Consequences

Future architecture decisions should favor:

```text
Documented knowledge
```

over:

```text
Person-dependent knowledge
```

When information can exist in documentation, documentation should be preferred over relying on contacts.

---

## Future Direction

The documentation repository may evolve toward:

- Knowledge topics
- Searchable documentation catalog
- Operational tutorials
- Business process references
- Integration implementation guides
- Troubleshooting repositories

The long-term objective is to make the Integration Catalog Database a central source of integration knowledge.
