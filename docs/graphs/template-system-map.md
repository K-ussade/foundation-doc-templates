# Template System Map

## Purpose

This graph shows how the template kit separates standards, templates, synthetic examples, validation, and downstream public repositories.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph authority["Foundation Documentation Authority"]
    human["Human review authority"]:::authority
    rules["Template standard"]:::public
    boundary["Public/private boundary rules"]:::risk
  end

  subgraph kit["foundation-doc-templates"]
    templates["Reusable templates"]:::public
    examples["Synthetic examples"]:::public
    graphs["Mermaid maps"]:::public
    validator["Validation script"]:::workflow
  end

  subgraph downstream["Public-Safe Reuse"]
    github["GitHub repositories"]:::release
    hf["Hugging Face companion docs"]:::release
    portfolio["Future portfolio artifacts"]:::workflow
  end

  human --> rules
  rules --> templates
  boundary --> templates
  templates --> examples
  templates --> graphs
  graphs --> validator
  examples --> validator
  validator --> github
  validator --> hf
  validator --> portfolio

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Templates are downstream from human documentation authority and boundary rules.
- Synthetic examples are allowed because they do not describe real Foundation operations.
- Validation checks structure; it does not replace human publication review.

## Boundary Notes

- Private examples, donor data, student data, volunteer data, customer data, sealed IP, and release claims are blocked.
- Hugging Face reuse is limited to companion documentation and release-ready public cards.
- Portfolio reuse requires Alexandra review before claims are published.

## Follow-Up Actions

- Add version tags after human review.
- Link downstream repositories as they adopt the templates.
- Expand validation if new template families are added.
