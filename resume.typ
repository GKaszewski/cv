#import "@preview/modern-cv:0.7.0": *

#show: resume.with(
  author: (
    firstname: "Gabriel",
    lastname: "Kaszewski",
    email: "gabrielkaszewski@gmail.com",
    homepage: "https://gabrielkaszewski.dev",
    github: "GKaszewski",
    linkedin: "gabriel-kaszewski-5344b3183",
    positions: (
      "Full Stack Developer",
      "Software Developer",
    ),
  ),
  date: datetime.today().display(),
  language: "en",
  colored-headers: false,
  show-footer: false,
  accent-color: "#020101",
)

= Experience

#resume-entry(
  title: "Frontend Developer",
  location: "Remote | Warsaw, PL",
  date: "2023 - Present",
  description: "Wavemaker",
)

#resume-item[
  I am responsible for developing and maintaing company's internal tools and applications.

  (Typescript, React, Angular, TailwindCSS, SCSS, Azure, GCP, Nginx, Docker, Kubernetes, Gitlab Pipelines)
]

#resume-entry(
  title: "Full Stack Developer",
  location: "Remote",
  date: "2021 - 2023",
  description: "GIAP Sp. z o.o.",
)

#resume-item[
  My main responsibility was to develop and maintain module for assertion of the correctness of the GIS data and its complainace with the standards.
  
  (Python, Qt, PostGIS, PostgreSQL)

  From 2022 I mainly worked on the development of the web application for the City of Gdańsk. (#link("https://geogdansk.pl"))

  (Typescript, React, ArcGIS JS API)
]

#resume-entry(
  title: "Full Stack Developer",
  location: "Remote",
  date: "2021 - Present",
  description: "digimonkeys.com",
)

#resume-item[
]

#resume-entry(
  title: "Unity Developer",
  location: "Remote",
  date: "2019 - 2020",
  description: "Mobil Titans",
)

#resume-item[
  I was responsible for porting Car Trader Simulator to mobile platforms.
]

= Projects

#resume-entry(
  title: "My website",
  location: [#github-link("GKaszewski/gabrielkaszewski_rs")],
)

#resume-item[
  My personal website built with Rust and loco.rs.
  I went with Rust because I was running out of memory on my VPS and my older website was using Django which was using a lot of memory.

  Main features:
  - Home page with my resume and contact information.
  - Projects page with my projects.
  - Data storage (my mini cloud storage).

  (Rust, loco.rs, Docker)
]

#resume-entry(
  title: "FleetCompass",
  location: [#link("https://fleetcompass.pl")],
)

#resume-item[
  SaaS for managing the fleet of vehicles.
  
  It is a full stack application, backend is using Django, the web app is in React and mobile app is powered by Capacitor.
]

= Skills

#resume-skill-item(
  "Programming Languages",
  (strong("Python"), strong("Typescript"), "Javascript", "C#", "C++", "Rust"),
)
#resume-skill-item(
  "Frameworks",
  (strong("React"), strong("Django"), "Angular", "FastAPI", "Qt", "TailwindCSS",
))
#resume-skill-item(
  "Database",
  (strong("PostgreSQL"), "PostGIS",
))
#resume-skill-item(
  "Other",
  (strong("Docker"), "Kubernetes", "Azure", "GCP", "Nginx", "Git", "Microsoft Visual Studio"),
)
#resume-skill-item("Languages", ("Polish (native)", "English (C1)"))

= Education

#resume-entry(
  title: "University of Gdańsk",
  location: "Gdańsk, PL",
  date: "2021 - 2025",
  description: "B.S. in Bioinformatics",
)

#box(height: 20pt) 

#text(
style: "italic",
weight: "light",
size: 8pt
)[
    I agree to the processing of personal data provided in this document for realising the recruitment process pursuant to the Personal Data Protection Act of 10 May 2018 (Journal
of Laws 2018, item 1000) and in agreement with Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons
with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation).
]