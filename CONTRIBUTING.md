# Contributing

## Purpose

Public contributions should improve reusable documentation patterns, boundary language, template consistency, graph structure, and validation coverage.

## Contribution Rules

| Area | Rule |
| --- | --- |
| Examples | Use placeholders or synthetic examples only. |
| Sensitive data | Do not submit donor, student, school, volunteer, customer, partner, telemetry, incident, legal, or secret material. |
| Claims | Do not add real impact, grant, audit, release, model, dataset, Space, or program claims. |
| Entity voice | Preserve Foundation voice and boundary references. |
| Templates | Keep placeholders clear and reusable. |
| Graphs | Update Mermaid maps when template reuse, review, or boundary behavior changes. |

## Pull Request Checklist

- [ ] The change is public-safe.
- [ ] Placeholders are generic and clearly marked.
- [ ] No private, sealed, donor, student, school, volunteer, customer, telemetry, incident, legal, or secret material is included.
- [ ] No fake models, datasets, Spaces, audits, reports, grants, or impact metrics are introduced.
- [ ] Affected docs, graphs, and quality gates are updated.
- [ ] `scripts/validate-doc-templates.sh` passes.

## Security And Privacy

Do not report secrets, private records, sensitive incidents, or security-sensitive operational details in public issues. Use the private security path in `SECURITY.md`.
