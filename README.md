<div align="center">
  <a href="https://github.com/S6-BikePack">
    <img src="assets/logo.png" alt="logo" width="200" height="auto" />
  </a>
  <h1>BikePack - Infrastructure</h1>

  <p>
    Part of the S6 BikePack project.
  </p>


<!-- Badges -->
<p>

</p>

<h4>
    <a href="https://github.com/S6-BikePack">Home</a>
  <span> · </span>
    <a href="https://github.com/S6-BikePack/infrastructure#-about-the-project">Documentation</a>
  </h4>
</div>

<br />

<!-- Table of Contents -->
# 📓 Table of Contents

- [About the Project](#-about-the-project)
- [Getting Started](%EF%B8%8F-getting-started)
    * [Prerequisites](%EF%B8%8F-prerequisites)
    * [Run Locally](#-run-locally)


---

<!-- About the Project -->
## ⭐ About the Project

This repository contains the docker-compose files, configurations and other requirements to launch the entire BikePack project.

---

<!-- Getting Started -->
## 	🛠️ Getting Started

<!-- Prerequisites -->
### ‼️ Prerequisites

Running the project requires docker to launch all the services. The docker-compose files will pull the containers from the github container repository, this requires docker to be authenticated with github.

The authentication service requires a `serviceKey.json` file in the root of this repository to run. This is the service key that can be gotten from firebase to authenticate the authentication-service with firebase.

<!-- Run Locally -->
### 🏃 Run Locally

The easiest way to run the project is using `make` and the commands in the make file. These will run all commands that are required to launch different parts of the project.

#### Running the base project

using make:
```bash
make launch
```

using docker-compose:

```bash
docker-compose -f ./docker-compose.yml pull && \
docker-compose -f ./docker-compose.yml -p bikepack up
```

#### Running the eindhoven service area

using make:
```bash
make launch-ehv
```

using docker-compose:
```bash
docker-compose -f ./docker-compose.area-specific.yml pull && \
docker compose  --env-file .\service-areas\ehv\docker-compose.env -f .\docker-compose.area-specific.yml -p bikepack-ehv up --build --no-recreate
```