# ADR-004 — Migration Strategy

## Status

Accepted

---

## Context

The Integration Catalog Database evolves continuously.

New requirements may require:

- new tables
- new columns
- new constraints
- schema refactoring
- data migrations

Without a clear migration strategy, different environments may diverge and the history of schema changes becomes difficult to understand and maintain.

---

## Problem Statement

How should database changes be managed over time?

Should existing schema files be modified?

Or should new migration files be created?

---

## Decision

Once a schema version has been committed and considered valid, existing schema files must not be modified.

Schema evolution must be implemented through new migration files.

---

## Principles

### Principle 1

Schema history must remain traceable.

The database should tell the story of its own evolution.

Examples:

```text
V001 → Initial reference tables
V002 → Initial business tables
V003 → Junction tables
V008 → Integration status reference table
V009 → Status refactoring
```

---

### Principle 2

Existing migrations are immutable.

Avoid:

```text
Modify V001
Modify V002
Modify V003
```

Prefer:

```text
Create V010
Create V011
Create V012
```

---

### Principle 3

Schema changes and data migrations are different concerns.

Schema changes:

```sql
CREATE TABLE
ALTER TABLE
ADD COLUMN
DROP COLUMN
ADD CONSTRAINT
```

Data migrations:

```sql
UPDATE
DELETE
INSERT INTO existing records
```

---

## Repository Structure

The project distinguishes multiple categories of SQL scripts.

### Schema

Location:

```text
database/schema/
```

Purpose:

```text
Create and evolve database structures.
```

Examples:

```text
V001__create_reference_tables.sql
V009__refactor_integration_status.sql
```

---

### Seed

Location:

```text
database/seed/
```

Purpose:

```text
Load reference data and demo data.
```

Examples:

```text
S001__seed_integration_types.sql
S014__seed_integration_status.sql
```

---

### Migrations

Location:

```text
database/migrations/
```

Purpose:

```text
Transform existing business data.
```

Examples:

```text

```
