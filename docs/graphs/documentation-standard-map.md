# Documentation Standard Map

## Purpose

This graph shows how public Foundation repositories reuse templates through review, boundary checks, local adaptation, and validation.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph source["Template Source"]
    templates["foundation-doc-templates"]:::public
    guide["Template guide"]:::public
    boundary["Public boundary rules"]:::risk
  end

  subgraph review["Review And Adaptation"]
    localOwner["Target repo owner"]:::authority
    adapt["Local adaptation"]:::workflow
    validate["Local validation"]:::workflow
  end

  subgraph targets["Target Repository Families"]
    governance["Governance and transparency repos"]:::foundation
    aiDocs["Model, dataset, and safety repos"]:::release
    programDocs["Program public docs"]:::foundation
    standards["Graph kit and roadmap repos"]:::public
  end

  templates --> guide
  guide --> boundary
  boundary --> localOwner
  localOwner --> adapt
  adapt --> validate
  validate --> governance
  validate --> aiDocs
  validate --> programDocs
  validate --> standards

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef foundation fill:#fff3d7,stroke:#9a6b00,color:#463100;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Templates are a public starting point, not automatic authority.
- Each target repo must adapt templates to its own owner, status, boundary, and validation.
- Boundary rules are part of the reuse path, not optional documentation.

## Boundary Notes

- Templates must not include real private examples.
- Target repos must not use template reuse to bypass governance, safety, data, or release review.
- Generated examples inherit source boundaries until reviewed.

## Follow-Up Actions

- Add template version tags after the first human review.
- Link target repos as they adopt templates.
- Update this map when new template families are added.
