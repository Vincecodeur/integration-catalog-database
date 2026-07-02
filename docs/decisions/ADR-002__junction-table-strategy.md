# ADR-002 — Junction Table Strategy

## Status

Accepted

## Context

Several relationships are many-to-many.

Examples:

- Integration ↔ Capability
- Integration ↔ Country
- Integration ↔ Platform Product

## Decision

Use dedicated junction tables.

## Implementations

- integration_capability
- integration_country
- integration_product

## Benefits

- Database normalization
- Flexibility
- Referential integrity
- Better reporting capabilities

## Consequences

Queries require JOIN operations but remain scalable and maintainable.
