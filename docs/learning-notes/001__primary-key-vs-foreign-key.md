# Primary Key vs Foreign Key

## Primary Key

A Primary Key uniquely identifies a row in a table.

Examples:

- integration_id
- partner_id
- country_id

Characteristics:

- Unique
- Not null
- Stable

## Foreign Key

A Foreign Key references a Primary Key in another table.

Examples:

- integration.partner_id
- integration.type_id

## Purpose

Maintain referential integrity and prevent orphan records.
