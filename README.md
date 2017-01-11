# Docker-Compose for easily run Ghost & buster

### TL;DR

```
$ git clone https://github.com/raccoonyy/docker-compose-ghost-buster blog
$ cd blog
$ vi .env  # for customizing
$ docker-compose up -d
...
```

And then, open http://127.0.0.1:2368/ghost in web browser.

### How to use

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
LOGNAME=raccoony           # Name for git commit
EMAIL=raccoonyy@gmail.com  # Email
GITHUB_ID=raccoonyy        # Github ID
NODE_ENV=production
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

### Requirements

- docker, docker-compose
