## ---------------Galvanize MCSP-20---------------

# System Design Capstone - Optimization of HopCamp (HipCamp Clone)

- Testing of previously developed [HipCamp](https://github.com/MCSP-20-FEC-Git-R-DOM/HopCamp) application for efficiency and optimization in order to explore routes for further improvement.

## Objectives

- Choose an optimization path to focus on.
- Gather metrics on the current performance of the application.
- Research and experiment with methods of optimizing and scaling the application.
- Report the results of your optimization efforts.

## Tech Stack

### HipCamp Tech Stack:
  <br>
  
  [![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
  [![HTML](https://img.shields.io/badge/-HTML-E34F26?style=flat&logo=html5&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/HTML)
  [![CSS](https://img.shields.io/badge/-CSS-1572B6?style=flat&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
  [![React](https://img.shields.io/badge/-React-61DAFB?style=flat&logo=react&logoColor=black)](https://react.dev/)
  [![Bootstrap](https://img.shields.io/badge/-Bootstrap-7952B3?style=flat&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
  [![Vite](https://img.shields.io/badge/-Vite-646CFF?style=flat&logo=vite&logoColor=F6DC40)](https://vitejs.dev/)
  
  [![Node.js](https://img.shields.io/badge/-Node.js-339933?style=flat&logo=Node.js&logoColor=black)](https://nodejs.org/)
  [![Express.js](https://img.shields.io/badge/-Express.js-000000?style=flat&logo=express&logoColor=white)](https://expressjs.com/)
  [![Supabase](https://img.shields.io/badge/-Supabase-3FCF8E?style=flat&logo=supabase&logoColor=black)](https://supabase.com/)

  [![Git](https://img.shields.io/badge/-Git-F05032?style=flat&logo=git&logoColor=black)](https://git-scm.com/)
  [![Npm](https://img.shields.io/badge/-Npm-CB3837?style=flat&logo=npm&logoColor=white)](https://npmjs.com/)
  [![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
  [![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)

  [![GitHub](https://img.shields.io/badge/-GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/)
  [![Slack](https://img.shields.io/badge/-Slack-4A154B?style=flat&logo=slack&logoColor=white)](https://slack.com/)
  [![Discord](https://img.shields.io/badge/-Discord-5865F2?style=flat&logo=discord&logoColor=white)](https://discord.com/)

### For Testing:
  - ![DigitalOcean](https://img.shields.io/badge/DigitalOcean-%230167ff.svg?style=for-the-badge&logo=digitalOcean&logoColor=white)
  - ![Grafana](https://img.shields.io/badge/grafana-%23F46800.svg?style=for-the-badge&logo=grafana&logoColor=white) [k6](https://k6.io/)
  - [faker.js](https://fakerjs.dev/)

## Initial Setup and Testing

- The group decided to prioritize database optimization as the primary focus.
- Faker.js was utilized to populate the initial database hosted on Supabase with simulated real-world data comprising 10,000 virtual users.
- The backend server of HipCamp was hosted on Digital Ocean droplets, enabling individual group members to conduct local tests on a shared server environment.
- Testing comprised of baseline, smoke, load, stress, spike, and breakpoint tests.

### Findings:

- 
