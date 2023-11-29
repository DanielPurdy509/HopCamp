## ---------------Galvanize MCSP-20---------------

# System Design Capstone - Optimization of HopCamp (HipCamp Clone)

- Testing of previously developed [HopCamp](https://github.com/MCSP-20-FEC-Git-R-DOM/HopCamp) application for efficiency and optimization in order to explore routes for further improvement.

## Objectives

- Choose an optimization path to focus on.
- Gather metrics on the current performance of the application.
- Research and experiment with methods of optimizing and scaling the application.
- Report the results of your optimization efforts.

## Tech Stack

### HopCamp Tech Stack:
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
- The backend server of HopCamp was hosted on Digital Ocean droplets, enabling individual group members to conduct local tests on a shared server environment.
- Testing comprised of baseline, smoke, load, stress, spike, and breakpoint tests.

### Findings:

- Almost all tests failed to complete when database was seeded with simulated data.
- In its current state, the application used SELECT * queries in order to display minimal data for front-end demonstration and was not designed for scaling. 
- Sever queries will need to be modified along with the database schema in order to facilitate testing with faker.js data to simulate real world usage.

## Original database ERD

<img alt="FEC Original ERD" src="https://github.com/DanielPurdy509/SDC-Project---HopCamp/assets/125397922/f70bcc9a-4cea-44f1-b011-ee11e00836e7">

- HopCamp's original database schema with only one table per component not related to the overall campsite displayed.

## Revised database ERD

<img alt="DB-Revision ERD" src="https://github.com/DanielPurdy509/SDC-Project---HopCamp/assets/125397922/2f702712-d495-495e-9cc6-9e7edaab33f1">

- Revised HopCamp database schema with everything being related to the specific campsites, in which revised queries are built off of and SELECT * routes are removed.

## Final Testing and Results

- All tests no longer failed to complete with the revised schema and queries.
- In addition to the revisions made, the team also had access to a premium Digital Ocean droplet through which vertical scaling could be simulated and comparisons drawn.
- Vertical scaling is advised as the recommeded solution for production-level deployment purposes, as testing on the premium droplet concluded with overall lower HTTP request duration and failure rates of HTTP requests.

## Contributers

- Alex Peterec [tpeterec](https://github.com/tpeterec)
- Israr Ali [israr2468](https://github.com/israr2468)
- Joe Goralczyk [joegor85](https://github.com/joegor85)
- Alfonso Rios [amrioss](https://github.com/amrioss)
- Daniel Purdy [DanielPurdy509](https://github.com/DanielPurdy509)




