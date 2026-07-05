# Changelog

All notable changes to this project will be documented in this file.

---

## [0.1.0] - 2026-07-02

### Added

- PostgreSQL project structure
- Integration catalog data model
- Integration types
- Partners
- Integrations
- Capabilities
- Countries
- Platform products
- Integration-capability relationships
- Integration-country relationships
- Integration-product relationships

### Documentation

- README
- Data Dictionary
- Domain Model
- ERD
- Architecture Decision Records
- Learning Notes

### Reporting Queries

- Integrations by product
- Integrations by country
- Capabilities by integration
- Carrier coverage by country

### GitHub

- Repository initialized
- Initial project structure committed

## [0.2.0] - 2026-07-05

### Added

- Contact entity
- Documentation entity
- Integration Method entity
- Integration Method Mapping junction table

### Reporting

- Contacts by Partner
- Integration Methods by Integration

### Architecture

- ADR-003 Reference Data Strategy

### Improvements

- Reference data governance strategy documented
- Normalization roadmap defined
- Future normalization candidates identified:
  - integration_status
  - documentation_type
  - contact_role
