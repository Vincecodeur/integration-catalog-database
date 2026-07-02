# ADR-001 — Database Engine Selection

## Status

Accepted

## Context

The project requires a relational database engine suitable for learning SQL, modeling professional integration data and supporting future architecture projects.

## Decision

PostgreSQL 17 is used as the database engine.

## Rationale

PostgreSQL supports:

- Relational modeling
- Primary keys
- Foreign keys
- Constraints
- Joins
- Aggregations
- Advanced SQL features
- Future usage with APIs and backend applications

## Consequences

The project will be more representative of a professional SaaS architecture than a lightweight SQLite-only learning project.
