# Quality Gate

## Purpose

This quality gate defines the minimum checks before public template changes are merged or published.

## Required Checks

| Gate | Required Outcome |
| --- | --- |
| Public safety | Templates contain placeholders only and no private records. |
| Entity voice | Foundation voice is preserved and not written as company marketing. |
| Boundary | Private, sealed, sensitive, incident, telemetry, model, dataset, and secret material is excluded. |
| Status language | Planned/scaffolded/experimental/released/deprecated language is accurate. |
| Reuse clarity | Target repositories can adapt the template without ambiguity. |
| Graph consistency | Mermaid maps match template reuse and review workflow. |
| Validation | `scripts/validate-doc-templates.sh` passes. |

## Done Means

Work is done when:

- required files are present;
- templates are public-safe;
- placeholders are clear;
- Foundation independence is preserved;
- no private or sealed material is exposed;
- relevant graphs are updated;
- validation passes.
