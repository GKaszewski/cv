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

#text("High-performance systems engineer with 5 years of experience in distributed architectures, data orchestration, and cloud-agnostic design. Co-author of peer-reviewed research in the Nature Portfolio. Specializing in Rust, strict-typed Python, and the optimization of legacy computational workflows.", size: 9pt)

= Experience

#resume-entry(
  title: "Software Engineer",
  location: "Remote | Warsaw, PL",
  date: "Sep 2023 - Present",
  description: "WPP (WPP Media / Choreograph / Wavemaker)",
)

#resume-item[
  _Advanced from frontend UI development to backend systems engineering, leading infrastructure-agnostic design initiatives._

  *Backend & Infrastructure* (Mar 2025 - Present)
  - Engineered and optimized backend applications and internal tools using Python, FastAPI, and Django.
  - Streamlined CI/CD workflows and containerized applications with GitLab Pipelines, Docker, and Kubernetes across GCP and Azure environments.

  *Frontend Architecture* (Sep 2023 - Mar 2025)
  - Architected scalable microfrontends utilizing Angular and Module Federation, seamlessly integrating standalone internal tools into a unified enterprise shell application.
  - Ensured seamless integration of UI components with Kubernetes-based deployments and Azure Pipelines.
]

#resume-entry(
  title: "Freelance Software Engineer",
  location: "Remote | Warsaw, PL",
  date: "Feb 2023 - Sep 2023",
  description: "Independent Consultant",
)

#resume-item[
  - Engineered "Fleet Compass," a comprehensive SaaS solution for modern fleet management, building the backend with Python, Django, and PostgreSQL, alongside a React frontend.
  - Developed "Poczuj - Szkoła z Lasu," an interactive music composition web application tailored for children, utilizing React.
  - Configured web servers and reverse proxies using Nginx to ensure secure and efficient application delivery.
]

#resume-entry(
  title: "Software Engineer",
  location: "Remote",
  date: "May 2021 - Feb 2023",
  description: "GIAP Sp. z o.o.",
)

#resume-item[
  - Architected and optimized complex PostGIS/PostgreSQL cross-database comparison queries utilizing Common Table Expressions (CTEs), drastically reducing execution time from over 5 minutes to under 15 seconds.
  - Developed a robust GIS data assertion module using Python and Qt to automatically validate spatial data against strict compliance standards.
  - Engineered a comprehensive, public-facing web application for the City of Gdańsk (#link("https://geogdansk.pl")) leveraging React, TypeScript, Redux, and the ArcGIS JS API.
]

= Skills

#resume-skill-item(
  "Programming Languages",
  (strong("Rust"),strong("Python"), strong("Typescript"), "C#", "C++"),
)
#resume-skill-item(
  "Frameworks & Libraries",
  (strong("React"), strong("Django"), strong("FastAPI"), "Angular", "Qt", "TailwindCSS"),
)
#resume-skill-item(
  "Cloud & DevOps",
  (strong("Docker"), strong("Kubernetes"), "Azure", "GCP", "GitLab CI", "Nginx"),
)
#resume-skill-item(
  "Databases",
  (strong("PostgreSQL"), "PostGIS"),
)
#resume-skill-item("Languages", ("Polish (Native)", "English (C1)"))

= Education

#resume-entry(
  title: "University of Gdańsk",
  location: "Gdańsk, PL",
  date: "2021 - 2025",
  description: "B.S. in Bioinformatics",
)

#resume-item[
  - *Thesis:* "Modeling evolutionary processes using cellular automata"
  - *Publication:* Co-authored a scientific article (#link("http://dx.doi.org/10.1038/s41598-023-44488-7")[DOI: 10.1038/s41598-023-44488-7]).
]

#box(height: 20pt)

#text(
  style: "italic",
  weight: "light",
  size: 6pt,
)[
  I agree to the processing of personal data provided in this document for realising the recruitment process pursuant to the Personal Data Protection Act of 10 May 2018 (Journal
  of Laws 2018, item 1000) and in agreement with Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons
  with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation).
]
