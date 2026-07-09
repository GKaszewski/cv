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

#text("Systems engineer with 5 years of professional experience. Co-founder of jestzlecenie.pl (registered LLC). Co-author of peer-reviewed research in Nature. Ships production systems in Rust and Python — from federated social platforms with hexagonal/DDD architecture to enterprise microfrontend shells. Self-hosts all projects on own Proxmox/Docker/Traefik infrastructure managed via Ansible.", size: 9pt)

= Experience

#resume-entry(
  title: "Co-founder & Backend Engineer",
  location: link("https://jestzlecenie.pl"),
  date: "2024 - Present",
  description: "JESTZLECENIE SP. Z O.O.",
)

#resume-item[
  - Co-founded a job marketplace — built the backend: Django, PostgreSQL with trigram search, Celery async tasks, real-time messaging, KNN-based recommendations, moderation, notifications.
]

#resume-entry(
  title: "Software Engineer",
  location: "Remote | Warsaw, PL",
  date: "May 2021 - Present",
  description: "Digimonkeys (clients: WPP / Choreograph / Wavemaker, GIAP)",
)

#resume-item[
  *WPP — Backend & Infrastructure* (Sep 2023 - Present)
  - Designed and shipped backend services and internal tools in Python (FastAPI, Django), deployed to Kubernetes across GCP and Azure.
  - Architected microfrontend platform using Angular and Module Federation, unifying standalone tools into a single enterprise shell.

  *GIAP — GIS Engineering* (May 2021 - Feb 2023)
  - Optimized PostGIS/PostgreSQL cross-database queries using CTEs — reduced execution from 5+ minutes to under 15 seconds.
  - Built a public GIS web application for the City of Gdańsk (#link("https://geogdansk.pl")) with React, TypeScript, and ArcGIS JS API.
]

= Projects

#resume-entry(
  title: "Movies Diary",
  location: link("https://movies.gabrielkaszewski.dev"),
  date: "2025",
  description: "Self-hosted federated movie diary — Rust",
)

#resume-item[
  - Hexagonal architecture (DDD), 35 crates — swappable adapters for SQLite/PostgreSQL, filesystem/S3, in-process/NATS event bus. ActivityPub federation (reviews appear on Mastodon), Jellyfin/Plex webhooks, full-text search, TUI, React SPA, OpenAPI docs.
]

#resume-entry(
  title: "Thoughts",
  location: "",
  date: "2024 - Present",
  description: "Federated microblogging server — Rust, Next.js frontend",
)

#resume-item[
  - Full ActivityPub implementation with NATS JetStream fan-out. Same hexagonal architecture; reuses k-ap, a shared ActivityPub library extracted and published across both projects.
]

= Skills

#resume-skill-item(
  "Languages",
  (strong("Rust"), strong("Python"), strong("TypeScript"), "C#", "C++"),
)
#resume-skill-item(
  "Backend & Infra",
  (strong("Axum"), strong("FastAPI"), strong("Django"), "Celery", "Docker", "Kubernetes", "Ansible", "Proxmox", "Traefik"),
)
#resume-skill-item(
  "Data & Messaging",
  (strong("PostgreSQL"), "SQLite", "PostGIS", "NATS JetStream", "S3"),
)
#resume-skill-item(
  "Frontend",
  ("React", "Next.js", "Angular", "TailwindCSS"),
)
#resume-skill-item(
  "Platforms",
  ("GCP", "Azure", "GitLab CI"),
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
  - *Thesis:* "Modeling evolutionary processes using cellular automata"
  - *Publication:* Co-authored in Nature Scientific Reports (#link("http://dx.doi.org/10.1038/s41598-023-44488-7")[DOI]).
]

#text(
  style: "italic",
  weight: "light",
  size: 6pt,
)[
  I agree to the processing of personal data provided in this document for realising the recruitment process pursuant to the Personal Data Protection Act of 10 May 2018 (Journal
  of Laws 2018, item 1000) and in agreement with Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons
  with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation).
]
