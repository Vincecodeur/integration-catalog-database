# ADR-002 — Junction Table Strategy

## Status

Accepted

## Context

Several business relationships are many-to-many:

- Integration to Capability
- Integration to Country
- Integration to Anchanto Product

## Decision

Each many-to-many relationship is modeled using a dedicated junction table.

## Junction Tables

- integration_capability
- integration_country
- integration_product

## Rationale

This design ensures:

- Data normalization
- Referential integrity
- Extensibility
- Query flexibility
- Avoidance of repeated columns such as country_1, country_2 or capability_1

## Consequences

Queries require joins, but the model remains clean, scalable and professional.
