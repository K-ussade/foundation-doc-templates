# Template To Repo Map

## Purpose

This graph maps the template kit to the public repositories that may reuse it.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph kit["Template Kit"]
    readme["README template"]:::public
    report["Public report template"]:::public
    program["Program page template"]:::public
    releaseNotes["Release notes template"]:::public
    boundary["Boundary template"]:::public
  end

  subgraph github["GitHub Public Surfaces"]
    profile["K-ussade profile"]:::release
    graphKit["foundation-graph-kit"]:::release
    roadmap["foundation-public-roadmap"]:::release
    models["foundation-model-cards"]:::release
    datasets["foundation-dataset-cards"]:::release
  end

  subgraph future["Future Reviewed Surfaces"]
    web["218.network public docs"]:::workflow
    hf["Hugging Face companion docs"]:::workflow
    portfolio["Portfolio artifacts after review"]:::workflow
  end

  readme --> profile
  readme --> graphKit
  report --> roadmap
  releaseNotes --> models
  releaseNotes --> datasets
  boundary --> models
  boundary --> datasets
  program --> web
  releaseNotes --> hf
  report --> portfolio

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- Existing public repositories can use templates as public documentation infrastructure.
- Future `218.network`, Hugging Face, and portfolio reuse requires status review.
- Template reuse does not imply any model, dataset, Space, school, NEURONA, deployment, or service has been released.

## Boundary Notes

- Links must not imply missing artifacts exist.
- Hugging Face companion docs require model-card, dataset-card, or Space review before release.
- Portfolio use stays draft until Alexandra approves the claim and proof link.

## Follow-Up Actions

- Update this map as public repositories adopt the templates.
- Keep repository statuses aligned with `foundation-public-roadmap`.
- Add review notes in target repositories before publication.
