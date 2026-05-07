# Foundation Doc Templates

## Purpose

This repository is a public-safe documentation template kit for Foundation-aligned repositories, public reports, governance documents, release notes, review checklists, Hugging Face companion documentation, and future portfolio artifacts.

It contains templates, standards, synthetic examples, Mermaid maps, and validation checks only. It does not contain real donor records, student data, school private data, volunteer private data, private Foundation operations, private incident data, raw datasets, model weights, private evaluations, sealed YOSO-YAi LLC IP, customer data, secrets, tokens, or unreviewed public claims.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded / published |
| Entity owner | 218 Network Foundation |
| Authority | Foundation documentation standards authority |
| Canonical source | GitHub public template source |
| GitHub role | Reusable public documentation templates |
| Hugging Face role | Provides public-safe text patterns for model cards, dataset cards, Space READMEs, and release notes |
| Portfolio role | Future proof surface for documentation architecture and boundary discipline after Alexandra review |
| Public surface | Documentation standards, templates, graph requirements, boundary language, synthetic examples, and versioning rules |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`K-ussade`](https://github.com/K-ussade/K-ussade) | K-ussade public GitHub profile and status language stewarded by Alexandra Caussade. |
| [`foundation-graph-kit`](https://github.com/K-ussade/foundation-graph-kit) | Mermaid graph classes, structure, and public-safe graph rules. |
| [`foundation-public-roadmap`](https://github.com/K-ussade/foundation-public-roadmap) | Public status ledger for planned, scaffolded, and released Foundation-aligned surfaces. |
| [`foundation-model-cards`](https://github.com/K-ussade/foundation-model-cards) | Model card and release checklist patterns. |
| [`foundation-dataset-cards`](https://github.com/K-ussade/foundation-dataset-cards) | Dataset card and privacy exclusion patterns. |

## Template Inventory

| Path | Role |
| --- | --- |
| `templates/README.template.md` | Public repository README template. |
| `templates/governance-doc.template.md` | Governance or policy document template. |
| `templates/public-report.template.md` | Public transparency or status report template. |
| `templates/program-page.template.md` | Public program description template. |
| `templates/release-notes.template.md` | GitHub or Hugging Face companion release notes template. |
| `templates/review-checklist.template.md` | Human review gate checklist. |
| `templates/public-private-boundary.template.md` | Boundary statement template. |
| `templates/technical-overview.template.md` | Public-safe technical overview template. |
| `templates/status-table.template.md` | Status ledger table template. |

## Documentation Standards

| Document | Role |
| --- | --- |
| `docs/architecture.md` | Repository structure and authority model. |
| `docs/template-standard.md` | Required sections, placeholders, and status language. |
| `docs/public-private-boundaries.md` | Required public/private/sealed exclusions. |
| `docs/review-before-publishing.md` | Review gates before client, Foundation, or portfolio use. |
| `docs/usage-guide.md` | How to use the templates in GitHub, Hugging Face companions, and portfolio artifacts. |
| `docs/graphs/` | Public-safe Mermaid maps with interpretation and boundary notes. |

## Usage

Use these templates when starting or polishing a public-safe repository:

1. Pick the closest template from `templates/`.
2. Replace placeholders without adding private facts or unsupported claims.
3. Add a repository-specific status table.
4. Add or adapt Mermaid graphs using the graph file structure.
5. Run `scripts/validate-doc-templates.sh`.
6. Require human review before client-facing, Foundation-facing, or portfolio-facing publication.

Hugging Face companion docs may reuse release notes, status tables, boundary statements, and technical overviews. Hugging Face must remain a release surface only, not a private development workspace.

Future portfolio or Upwork materials may cite this repository only as a public template proof surface after Alexandra reviews the claim. This repository does not publish live offer copy, pricing, turnaround promises, client results, or final Upwork profile text.

## Public Boundary

Allowed:

- public-safe templates;
- placeholder examples;
- generic boundary language;
- documentation standards;
- graph file structure;
- release status vocabulary;
- synthetic examples clearly labeled as synthetic/public-safe.

Forbidden:

- real donor records;
- student data;
- school private data;
- volunteer private data;
- private Foundation operations;
- private board notes;
- legal drafts or privileged material;
- private incident records;
- private partner records;
- customer data;
- raw datasets;
- private telemetry;
- model weights;
- private training corpora;
- private evaluations;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details;
- unreviewed claims about releases, audits, impact, grants, or programs.

## Review Gates

Before publishing a document created from these templates, confirm:

| Gate | Required outcome |
| --- | --- |
| Status review | Planned, scaffolded, released, paused, deprecated, or private/not-public status is explicit. |
| Entity review | Foundation, company, product, and personal-account voices are not collapsed. |
| Privacy review | Donor, student, volunteer, customer, and private operations material is absent. |
| Release review | No model, dataset, Space, school, NEURONA, deployment, or service is claimed unless public artifacts exist. |
| Portfolio review | Alexandra approves any monetization or portfolio claim using the document. |

## Validation

Run:

```bash
scripts/validate-doc-templates.sh
```

## First Milestone

Template v0.1 is complete when the template set, synthetic examples, public boundary rules, review gates, usage guide, validation script, and Mermaid maps are reviewed by human Foundation authority.
