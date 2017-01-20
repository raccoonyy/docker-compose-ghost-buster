# Docker-Compose for easily run Ghost & buster

### TL;DR

##### 1. Create your repository

Repository name will be `YOUR_GITHUB_ID.github.io`. Details are [GitHub Pages](https://pages.github.com/).

##### 2. Follow these instructions

```
$ git clone https://github.com/raccoonyy/docker-compose-ghost-buster blog
$ cd blog
$ vi .env  # for customizing
$ docker-compose up -d
...
```

##### 3. Almost done!

And then, open http://127.0.0.1:2368/ghost in web browser.

### How to use

##### 0. Create your repository

Repository name will be `YOUR_GITHUB_ID.github.com`.

##### 1. Install Docker, Docker-Compose

- For OSX: https://download.docker.com/mac/stable/Docker.dmg
- For Linux: http://docs.docker.com/engine/installation/linux/
- For Windows: https://docs.docker.com/engine/installation/windows/

##### 2. Clone this repo

```
$ git clone https://github.com/raccoonyy/docker-compose-ghost-buster blog
$ cd blog
```

##### 3. Create `.env` file

```
# .env sample
GITHUB_ID=raccoonyy        # Github ID
```

##### (3.5 Copy existing ghost contents)

If you have already ghost contents, copy some folders to `blog`.

```
$ cp EXISTING_GHOST_content ./content
$ cp EXISTING_GHOST_config ./config
```

And then, rename `docker-compose-for-existing-content.yml` to `docker-compose.yml`.

```
$ mv docker-compose-for-existing-content.yml docker-compose.yml
```

##### 4. Run

```
$ docker-compose up -d
```

- Local ghost admin: http://127.0.0.1:2368/ghost
- Local ghost server: http://127.0.0.1:2368/

##### 5. Execute buster commands

- Generate static files
```
$ docker-compose exec buster ./generate.sh
```

- Preview static server
```
$ docker-compose exec buster ./preview.sh
```

- Deploy static files to Github
```
$ docker-compose exec buster ./deploy.sh
```

##### 6. Stop server

```
$ docker-compose stop
```

### Requirements

- docker, docker-compose
