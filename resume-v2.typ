#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Gabriel",
    lastname: "Kaszewski",
    email: "gabrielkaszewski@gmail.com",
    homepage: "https://gabrielkaszewski.dev",
    github: "GKaszewski",
    linkedin: "gabriel-kaszewski-5344b3183",
    positions: (
      "Software Engineer",
      "Systems & Infrastructure",
    ),
  ),
  date: datetime.today().display(),
  language: "en",
  colored-headers: false,
  show-footer: false,
  accent-color: "#020101",
  profile-picture: none,
)

= Summary

#text("Systems engineer with 5 years of professional experience. Co-founder of jestzlecenie.pl (registered LLC). Co-author of peer-reviewed research in Nature Portfolio. Ships production systems in Rust and Python, from GenAI services to federated social platforms. Self-hosts everything on own Proxmox/Docker/Traefik stack, managed via Ansible.", size: 9pt)

= Experience

#resume-entry(
  title: "Co-founder & Backend Engineer",
  location: link("https://jestzlecenie.pl"),
  date: "2024 - Present",
  description: "JESTZLECENIE SP. Z O.O.",
)

#resume-item[
  - Co-founded a local-jobs marketplace, live with 750+ users. Lead the backend — Django/DRF on PostgreSQL + PostGIS (radius and map-viewport geospatial search, trigram full-text, KNN recommendations), Celery/Redis, real-time messaging, moderation, notifications — and own infrastructure and deployments end to end: Docker behind Traefik, GitHub Actions CI/CD, Prometheus/Grafana. Two years in production, no ops team.
]

#resume-entry(
  title: "Software Engineer",
  location: "Remote | Warsaw, PL",
  date: "May 2021 - Present",
  description: "Digimonkeys (clients: WPP / Choreograph / Wavemaker, GIAP)",
)

#resume-item[
  *WPP — Backend & Infrastructure* (Sep 2023 - Present)
  - Backend owner of a GenAI audience-persona service (FastAPI, async SQLAlchemy/PostgreSQL, BigQuery, Vertex AI + Imagen): API, generation worker and Pub/Sub event-sync worker, on Kubernetes via Helm with Terraform-managed GCP infrastructure.
  - Hardened async job lifecycle under production load — stale/abandoned job reclamation, bounded sweeper cycles, shorter DB transactions, pooled connections released before third-party calls. Authored a resilience audit of retry, jitter and timeout policy across five service clients.
  - Maintain internal Python packages consumed by sibling services (audience-definition translation across survey waves and country-specific demographic rules), semver with changelogs.
  - Architected an Angular + Module Federation microfrontend platform, unifying standalone tools into one enterprise shell.

  *GIAP — GIS Engineering* (May 2021 - Feb 2023)
  - Optimized PostGIS/PostgreSQL cross-database queries using CTEs — cut execution from 5+ minutes to under 15 seconds. Built a public GIS web app for the City of Gdańsk (#link("https://geogdansk.pl")) with React, TypeScript and ArcGIS JS API.
]

= Projects

#resume-entry(
  title: "Movies Diary · Thoughts · k-ap",
  location: link("https://gabrielkaszewski.dev"),
  date: "2025 - Present",
  description: "Self-hosted federated services — Rust",
)

#resume-item[
  - Two ActivityPub services (federated movie diary, microblogging server) interoperating with Mastodon. Hexagonal/DDD Rust workspaces — 37 crates, swappable SQLite/PostgreSQL, filesystem/S3 and in-process/NATS adapters, JetStream fan-out to separate workers, Jellyfin/Plex webhooks, React SPA.
  - Extracted the shared protocol layer into k-ap: composable trait facades, idempotent inbound handling, SSRF-hardened fetching. v0.5.0, 13 tagged releases.
]

= Skills

#resume-skill-item(
  "Languages",
  (strong("Rust"), strong("Python"), strong("TypeScript"), "C#", "C++"),
)
#resume-skill-item(
  "Backend & Infra",
  (strong("Axum"), strong("FastAPI"), strong("Django"), "Celery", "Docker", "Kubernetes", "Helm", "Terraform", "Ansible", "Proxmox", "Traefik"),
)
#resume-skill-item(
  "Data & Messaging",
  (strong("PostgreSQL"), "BigQuery", "SQLite", "PostGIS", "Redis", "NATS JetStream", "Pub/Sub", "S3"),
)
#resume-skill-item(
  "Frontend",
  ("React", "Next.js", "Angular", "TailwindCSS"),
)
#resume-skill-item(
  "Platforms",
  ("GCP", "Azure", "GitHub Actions", "GitLab CI"),
)
#resume-skill-item("Spoken", ("Polish (Native)", "English (C1)"))

= Education

#resume-entry(
  title: "University of Gdańsk",
  location: "Gdańsk, PL",
  date: "2021 - 2025",
  description: "B.S. in Bioinformatics",
)

#resume-item[
  - *Thesis:* "Modeling evolutionary processes using cellular automata" · *Publication:* Nature Scientific Reports (#link("http://dx.doi.org/10.1038/s41598-023-44488-7")[DOI]).
]

#text(
  style: "italic",
  weight: "light",
  size: 6pt,
)[
  I agree to the processing of my personal data for the purposes of this recruitment process, pursuant to the Personal Data Protection Act of 10 May 2018 (Journal of Laws 2018, item 1000) and Regulation (EU) 2016/679 (GDPR).
]
