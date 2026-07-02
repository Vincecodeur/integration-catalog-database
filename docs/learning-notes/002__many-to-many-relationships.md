# Many-to-Many Relationships

## Definition

A many-to-many relationship exists when:

- One record can relate to many records.
- The other side can also relate to many records.

## Examples

Integration ↔ Capability

Integration ↔ Country

Integration ↔ Platform Product

## Solution

Use a junction table.

Examples:

- integration_capability
- integration_country
- integration_product

## Benefits

- Normalization
- Flexibility
- Scalability
