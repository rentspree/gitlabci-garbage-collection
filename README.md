# Gitlab CI Garbage Collection
A Repository compose [willfarrell/crontab] and [spotify/docker-gc] to build cron jobs that cleanup docker images and docker container. 
- [willfarrell/crontab] : A simple wrapper over docker to all complex cron job to be run in other containers.
- [spotify/docker-gc] : A simple Docker container and image garbage collection script.

### Installation
```bash
git clone https://github.com/rentspree/gitlabci-garbage-collection.git
```

### Execute Garbage Collection to Cron Jobs
```bash
sh main.sh
```
The docker container run as **rentspree-gc** name

### Monitor Cron Jobs
```bash
docker logs -f rentspree-gc
```

### Config Period for cleanup
By default, will not remove a image if it exited less than 604800 seconds (1 week) ago. You can change default config in config/config.json file with **GRACE_PERIOD_SECONDS** environment.

## License 

MIT (http://www.opensource.org/licenses/mit-license.php)

[willfarrell/crontab]: https://hub.docker.com/r/willfarrell/crontab
[spotify/docker-gc]: https://github.com/spotify/docker-gc
