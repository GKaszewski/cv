#set page(margin: (x: 2cm, y: 1.8cm))
#set text(font: "New Computer Modern", size: 10pt, lang: "pl")
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

#section("Wykształcenie")

#grid(
  columns: (1fr, auto),
  [*Uniwersytet Gdański* — Licencjat, Bioinformatyka],
  text(fill: muted)[2021 -- 2025],
)
- Praca licencjacka: _„Modelowanie procesów ewolucyjnych z wykorzystaniem automatów komórkowych"_
- Symulacja ewolucyjna w Rust z wykorzystaniem silnika Bevy (architektura Entity Component System); modelowanie dynamiki drapieżnik-ofiara, wpływu mutacji i presji środowiskowej na siatkach automatów komórkowych

#section("Publikacje")

T. Urbańczyk, J. Koperski, *G. Kaszewski*, M. Synak, J. Swenda, M. Krośnicki. \
_„Genetic algorithm for obtaining potential energy curve of diatomic molecules based on dispersed fluorescence spectra."_ \
Scientific Reports (Nature Portfolio), 13, 17413 (2023). \
DOI: #link("http://dx.doi.org/10.1038/s41598-023-44488-7")[10.1038/s41598-023-44488-7]

- Implementacja pipeline'u optymalizacji algorytmem genetycznym w Pythonie (NumPy, threading, orkiestracja podprocesów)
- Oprogramowanie umożliwiło opracowanie nowatorskiej metody rekonstrukcji krzywych energii potencjalnej z eksperymentalnych danych spektralnych

#section("Zainteresowania badawcze")

Systemy zdecentralizowane i sfederowane — projektowanie protokołów, analiza dostępności oraz dystrybucja treści w sieciach peer-to-peer. W szczególności: rozszerzanie protokołu ActivityPub (W3C) o domenowe typy treści oraz badanie degradacji dostępności w sieciach sfederowanych przy heterogenicznych politykach replikacji.

*Proponowany temat pracy magisterskiej:* _„Projekt i implementacja zdecentralizowanej platformy strumieniowania muzyki z wykorzystaniem ActivityPub i dystrybucji treści peer-to-peer"_ — sfederowana platforma muzyczna łącząca ActivityPub do odkrywania społecznościowego z WebTorrent/IPFS do dostarczania treści; ewaluacja dostępności przy zmienności węzłów i różnych strategiach replikacji.

#section("Wybrane projekty")

#grid(
  columns: (1fr, auto),
  [*k-ap* — Generyczna biblioteka protokołu ActivityPub #h(0.5em) #text(fill: muted, size: 9pt)[Rust]],
  text(fill: muted, size: 9pt)[#link("https://git.gabrielkaszewski.dev/GKaszewski/k-ap")[źródło]],
)
- Wielokrotnego użytku crate w Rust implementujący protokół ActivityPub server-to-server: zarządzanie aktorami, routing inbox/outbox, sygnatury HTTP, WebFinger, NodeInfo
- Opublikowany w prywatnym rejestrze Cargo; wykorzystywany jako zależność przez dwa niezależne projekty
- Zaprojektowany wokół portów opartych na traitach — konsumenci implementują 7 traitów repozytorium aby podłączyć własną warstwę persystencji i model treści

#v(0.4em)

#grid(
  columns: (1fr, auto),
  [*Thoughts* — Sfederowany serwer mikroblogowy #h(0.5em) #text(fill: muted, size: 9pt)[Rust, Next.js, PostgreSQL, NATS]],
  text(fill: muted, size: 9pt)[#link("https://git.gabrielkaszewski.dev/GKaszewski/thoughts")[źródło]],
)
- W pełni kompatybilna z ActivityPub platforma mikroblogowa (interoperacyjna z Mastodon, Misskey, Pleroma)
- Architektura heksagonalna z domain-driven design; asynchroniczny fan-out zdarzeń przez NATS JetStream
- Moderacja federacji: blokowanie domen, blokowanie poszczególnych aktorów z dostarczaniem aktywności

#v(0.4em)

#grid(
  columns: (1fr, auto),
  [*Movies Diary* — Sfederowana platforma śledzenia filmów #h(0.5em) #text(fill: muted, size: 9pt)[Rust, React, SQLite/PostgreSQL]],
  text(fill: muted, size: 9pt)[#link("https://git.gabrielkaszewski.dev/GKaszewski/movies-diary")[źródło]],
)
- Self-hosted dziennik filmowy z federacją ActivityPub, auto-importem z Jellyfin/Plex, wyszukiwaniem pełnotekstowym, rocznymi podsumowaniami
- 400+ testów jednostkowych; architektura heksagonalna współdzielona z Thoughts poprzez bibliotekę k-ap
- Podwójny interfejs: server-rendered HTML (zero JS) + React SPA (TanStack Router, shadcn/ui)

#section("Doświadczenie zawodowe")

#grid(
  columns: (1fr, auto),
  [*Software Engineer* — WPP (WPP Media / Choreograph / Wavemaker)],
  text(fill: muted)[wrz 2023 -- obecnie],
)
- Usługi backendowe (Python, FastAPI, Django) i architektura frontendowa (Angular, Module Federation) dla platformy ad-tech obsługującej 20 000 użytkowników miesięcznie w 9-osobowym zespole
- Architektura zdarzeniowa na GCP: Pub/Sub, Vertex AI, Kubernetes; CI/CD przez GitLab Pipelines

#v(0.3em)

#grid(
  columns: (1fr, auto),
  [*Software Engineer* — GIAP Sp. z o.o.],
  text(fill: muted)[maj 2021 -- lut 2023],
)
- Budowa GeoGdańsk (#link("https://geogdansk.pl")[geogdansk.pl]), publicznej aplikacji geoinformatycznej zgodnej z WCAG dla Miasta Gdańska (React, TypeScript, ArcGIS JS API)
- Optymalizacja zapytań PostGIS/PostgreSQL z ponad 5 minut do poniżej 15 sekund z użyciem CTE

#section("Umiejętności techniczne")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  text(weight: "bold")[Języki prog.], [Rust, Python, TypeScript, C\#, C++],
  text(weight: "bold")[Frameworki], [Axum, FastAPI, Django, React, Angular, Next.js],
  text(weight: "bold")[Infrastruktura], [Docker, Kubernetes, GCP, Azure, PostgreSQL, NATS, GitLab CI],
  text(weight: "bold")[Języki], [Polski (ojczysty), Angielski (C1)],
)

#v(1fr)

#text(
  style: "italic",
  weight: "light",
  size: 6pt,
)[
  Wyrażam zgodę na przetwarzanie moich danych osobowych zawartych w niniejszym dokumencie w celu realizacji procesu rekrutacji zgodnie z Ustawą o ochronie danych osobowych z dnia 10 maja 2018 r. (Dz.U. 2018, poz. 1000) oraz Rozporządzeniem Parlamentu Europejskiego i Rady (UE) 2016/679 z dnia 27 kwietnia 2016 r. (RODO).
]
