# Joins and Reporting

## Purpose

JOIN statements combine information from multiple tables.

## Example

Integration + Partner

```sql
SELECT
    i.name,
    p.company_name
FROM integration i
JOIN partner p
    ON i.partner_id = p.partner_id;
```

## Reporting Examples

- Integrations by product
- Integrations by country
- Capabilities by integration
- Carrier coverage by country

## Benefits

- Analytics
- Reporting
- Data exploration
- Business insights
