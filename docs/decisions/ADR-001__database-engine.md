# ADR-001 — Database Engine Selection

## Status

Accepted

## Context

The project requires a relational database engine suitable for learning SQL and simulating a professional environment.

## Decision

PostgreSQL 17 is selected.

## Rationale

PostgreSQL provides:

- Strong relational modeling support
- PK/FK constraints
- Advanced SQL features
- Excellent documentation
- Scalability
- High adoption in modern SaaS platforms

## Consequences

All SQL developments target PostgreSQL compatibility.
