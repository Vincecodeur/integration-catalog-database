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

# [2.0.0]

## Added

### Governance

- ADR-003 Reference Data Strategy
- ADR-004 Migration Strategy
- ADR-005 Documentation First Strategy

### Reference Data

- integration_status
- documentation_type
- contact_role
- endpoint_type
- authentication_method
- endpoint_environment

### Business Entities

- contact
- documentation
- integration_endpoint
- integration_status_history

### Endpoint Architecture

Introduced endpoint architecture:

Integration
→ Endpoint
→ Environment
→ URL

### Documentation

Added:

- Integration Lifecycle
- Normalization Roadmap
- V2 Release Documentation

## Changed

### Architecture

Refactored status management:

integration.status
→ integration_status

Refactored documentation classification:

documentation.document_type
→ documentation_type

Refactored contact roles:

contact.role
→ contact_role

## Migration

Added migration framework:

- M001 integration_status migration
- M002 documentation_type migration
- M003 contact_role migration
