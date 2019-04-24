echo "=====>>> Start Garbage Collection to Crontab Running <<<=====" &&
docker run --rm --privileged -d \
    --name rentspree-gc \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    -v $(pwd)/config:/opt/crontab:rw \
    -v $(pwd)/logs:/var/log/crontab:rw \
    willfarrell/crontab
echo "=====>>> Start Garbage Collection to Crontab Complete <<<====="
