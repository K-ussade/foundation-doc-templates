# Document Review Flow

## Purpose

This graph shows the review sequence before a template-derived document becomes public, Foundation-facing, client-facing, or portfolio-facing.

## Mermaid Diagram

```mermaid
flowchart TB
  draft["Template-derived draft"]:::workflow

  subgraph gates["Review Gates"]
    status["Status review"]:::risk
    entity["Entity voice review"]:::risk
    privacy["Privacy and data review"]:::risk
    security["Security review"]:::risk
    release["Release-claim review"]:::risk
    portfolio["Portfolio claim review"]:::risk
  end

  subgraph outcomes["Publication Outcomes"]
    revise["Revise or keep private"]:::workflow
    publish["Publish public-safe document"]:::public
    link["Link from GitHub, HF, or portfolio"]:::release
  end

  draft --> status
  status --> entity
  entity --> privacy
  privacy --> security
  security --> release
  release --> portfolio
  portfolio --> publish
  status -. issue found .-> revise
  entity -. issue found .-> revise
  privacy -. issue found .-> revise
  security -. issue found .-> revise
  release -. issue found .-> revise
  portfolio -. issue found .-> revise
  publish --> link

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- A structurally valid document can still fail publication review.
- Release-claim review blocks unsupported claims about models, datasets, Spaces, schools, NEURONA, deployments, or services.
- Portfolio review is required before monetization-facing claims.

## Boundary Notes

- Documents derived from private or mixed sources remain private until reviewed.
- Generated summaries, screenshots, and examples inherit source boundaries.
- Foundation references must not become company marketing or client bait.

## Follow-Up Actions

- Record review status in the target repository.
- Add reviewer notes outside public repos when sensitive.
- Re-run validation after revisions.
