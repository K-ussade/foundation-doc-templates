# Foundation Document Templates

## Purpose

This repository provides public-safe documentation templates for 218 Network Foundation repositories. It standardizes README structure, AGENTS rules, governance templates, transparency report templates, release notes, boundary documents, quality gates, and Mermaid graph file structure.

This repository contains templates and placeholder examples only. It does not contain real donor records, student data, school private data, volunteer private data, private Foundation operations, private incident data, raw datasets, model weights, private evaluations, sealed YOSO-YAi LLC IP, or unreviewed public claims.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded |
| Entity owner | 218 Network Foundation |
| Authority | Foundation documentation standards authority |
| Canonical source | GitHub public template source |
| GitHub role | Reusable public documentation templates |
| Hugging Face role | Provides public-safe text patterns for model cards, dataset cards, Space READMEs, and release notes |
| Public surface | Documentation standards, templates, graph requirements, boundary language, and versioning rules |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`foundation-governance`](https://github.com/K-ussade/foundation-governance) | Governance authority and publication boundary. |
| [`foundation-transparency-reports`](https://github.com/K-ussade/foundation-transparency-reports) | Transparency report patterns and correction policy. |
| [`civic-ai-safety-notes`](https://github.com/K-ussade/civic-ai-safety-notes) | Safety note and limitation patterns. |
| [`foundation-model-cards`](https://github.com/K-ussade/foundation-model-cards) | Model card and release checklist patterns. |
| [`foundation-dataset-cards`](https://github.com/K-ussade/foundation-dataset-cards) | Dataset card and privacy exclusion patterns. |

## Template Inventory

| Path | Role |
| --- | --- |
| `templates/README.md` | Repository README template. |
| `templates/AGENTS.md` | Codex operating rules template. |
| `templates/governance.md` | Governance document template. |
| `templates/transparency-report.md` | Transparency report template. |
| `templates/release-notes.md` | Release notes template for GitHub and Hugging Face companion releases. |
| `templates/public-private-boundary.md` | Boundary document template. |
| `templates/quality-gate.md` | Quality gate template. |
| `templates/graph.md` | Mermaid graph document template. |
| `templates/model-card.md` | Lightweight model card reference template. |
| `templates/dataset-card.md` | Lightweight dataset card reference template. |
| `templates/space-readme.md` | Lightweight Space README reference template. |

## Documentation Standards

| Document | Role |
| --- | --- |
| `docs/template-guide.md` | How to use and adapt templates. |
| `docs/public-boundary-rules.md` | Required public/private/sealed exclusions in templates. |
| `docs/versioning-policy.md` | Template versioning and change control. |
| `docs/reuse-policy.md` | How other repos adopt templates without copying private material. |
| `docs/quality-gate.md` | Required checks before template changes are published. |
| `docs/graphs/documentation-standard-map.md` | Mermaid map of template reuse and review flow. |

## Public Boundary

Allowed:

- public-safe templates;
- placeholder examples;
- generic boundary language;
- documentation standards;
- graph file structure;
- release status vocabulary.

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
- private evaluations;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys;
- security-sensitive NEURONA operational details;
- unreviewed claims about releases, audits, impact, grants, or programs.

## Validation

Run:

```bash
scripts/validate-doc-templates.sh
```

## First Milestone

Template v0.1 is complete when the core templates, template guide, public boundary rules, versioning policy, reuse policy, quality gate, and documentation standard map are reviewed by human Foundation authority.
