#set page(margin: (x: 2cm, y: 1.8cm))
#set text(font: "New Computer Modern", size: 10pt)
#set par(justify: true)

#let accent = rgb("#1a1a1a")
#let muted = rgb("#555555")

#let section(title) = {
  v(0.4em)
  line(length: 100%, stroke: 0.5pt + accent)
  v(-0.2em)
  text(weight: "bold", size: 11pt, upper(title))
  v(0.3em)
}

#align(center)[
  #text(size: 18pt, weight: "bold")[Gabriel Kaszewski]
]

#section("Education")

#grid(
  columns: (1fr, auto),
  [*University of Gdańsk* — B.S. in Bioinformatics],
  text(fill: muted)[2021 -- 2025],
)
- Thesis: _"Modeling evolutionary processes using cellular automata"_
- Built an evolutionary simulation in Rust using the Bevy engine (Entity Component System architecture); modeled predator-prey dynamics, mutation rates, and environmental pressures on cellular automata grids

#section("Publications")

T. Urbańczyk, J. Koperski, *G. Kaszewski*, M. Synak, J. Swenda, M. Krośnicki. \
_"Genetic algorithm for obtaining potential energy curve of diatomic molecules based on dispersed fluorescence spectra."_ \
Scientific Reports (Nature Portfolio), 13, 17413 (2023). \
DOI: #link("http://dx.doi.org/10.1038/s41598-023-44488-7")[10.1038/s41598-023-44488-7]

- Implemented the genetic algorithm optimization pipeline in Python (NumPy, threading, subprocess orchestration)
- Software enabled novel method for reconstructing potential energy curves from experimental spectral data

#section("Research Interests")

Decentralized and federated systems — protocol design, availability analysis, and content distribution in peer-to-peer networks. Specifically: extending the ActivityPub protocol (W3C) for domain-specific content types, and studying availability degradation in federated networks under heterogeneous replication policies.

*Proposed master's thesis:* _"Design and Implementation of a Decentralized Music Streaming Platform Using ActivityPub and Peer-to-Peer Content Distribution"_ — federated music platform combining ActivityPub for social discovery with WebTorrent/IPFS for content delivery; availability evaluation under node churn and varying replication strategies.

#section("Selected Projects")

#grid(
  columns: (1fr, auto),
  [*k-ap* — Generic ActivityPub Protocol Library #h(0.5em) #text(fill: muted, size: 9pt)[Rust]],
  text(fill: muted, size: 9pt)[#link("https://git.gabrielkaszewski.dev/GKaszewski/k-ap")[source]],
)
- Reusable Rust crate implementing the ActivityPub server-to-server protocol: actor management, inbox/outbox routing, HTTP signatures, WebFinger, NodeInfo
- Published on a private Cargo registry; consumed as a dependency by two independent projects
- Designed around trait-based ports — consumers implement 7 repository traits to wire their own persistence and content model

#v(0.4em)

#grid(
  columns: (1fr, auto),
  [*Thoughts* — Federated Microblogging Server #h(0.5em) #text(fill: muted, size: 9pt)[Rust, Next.js, PostgreSQL, NATS]],
  text(fill: muted, size: 9pt)[#link("https://git.gabrielkaszewski.dev/GKaszewski/thoughts")[source]],
)
- Full ActivityPub-compatible microblogging platform (interoperates with Mastodon, Misskey, Pleroma)
- Hexagonal architecture with domain-driven design; async event fan-out via NATS JetStream
- Federation moderation: domain blocking, per-actor blocking with activity delivery

#v(0.4em)

#grid(
  columns: (1fr, auto),
  [*Movies Diary* — Federated Movie Tracking Platform #h(0.5em) #text(fill: muted, size: 9pt)[Rust, React, SQLite/PostgreSQL]],
  text(fill: muted, size: 9pt)[#link("https://git.gabrielkaszewski.dev/GKaszewski/movies-diary")[source]],
)
- Self-hosted movie diary with ActivityPub federation, Jellyfin/Plex auto-import, full-text search, annual wrap-ups
- 400+ unit tests; hexagonal architecture shared with Thoughts via the k-ap library
- Dual interface: server-rendered HTML (zero JS) + React SPA (TanStack Router, shadcn/ui)

#section("Industry Experience")

#grid(
  columns: (1fr, auto),
  [*Software Engineer* — WPP (WPP Media / Choreograph / Wavemaker)],
  text(fill: muted)[Sep 2023 -- Present],
)
- Backend services (Python, FastAPI, Django) and frontend architecture (Angular, Module Federation) for an ad-tech platform serving 20,000 monthly users across a 9-person team
- Event-driven architecture on GCP: Pub/Sub, Vertex AI, Kubernetes; CI/CD via GitLab Pipelines

#v(0.3em)

#grid(
  columns: (1fr, auto),
  [*Software Engineer* — GIAP Sp. z o.o.],
  text(fill: muted)[May 2021 -- Feb 2023],
)
- Built GeoGdańsk (#link("https://geogdansk.pl")[geogdansk.pl]), a public WCAG-compliant geospatial web application for the City of Gdańsk (React, TypeScript, ArcGIS JS API)
- Optimized PostGIS/PostgreSQL cross-database queries from 5+ minutes to under 15 seconds using CTEs

#section("Technical Skills")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  text(weight: "bold")[Languages], [Rust, Python, TypeScript, C\#, C++],
  text(weight: "bold")[Frameworks], [Axum, FastAPI, Django, React, Angular, Next.js],
  text(weight: "bold")[Infrastructure], [Docker, Kubernetes, GCP, Azure, PostgreSQL, NATS, GitLab CI],
  text(weight: "bold")[Languages], [Polish (native), English (C1)],
)
