echo "=====>>> Execute Garbage Collection Script Running <<<=====" &&

echo "=====>>> Clone Repository Running <<<=====" &&
sudo wget https://github.com/rentspree/gitlabci-garbage-collection.git &&
echo "=====>>> Clone Repository Complete <<<=====" &&

echo "=====>>> Start Garbage Collection with Crontab Running <<<=====" &&
sudo docker run --rm --privileged -d \
    --name rentspree-gc \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    -v $(pwd)/config:/opt/crontab:rw \
    -v $(pwd)/logs:/var/log/crontab:rw \
    willfarrell/crontab
echo "=====>>> Start Garbage Collection with Crontab Complete <<<=====" &&

echo "=====>>> Execute Garbage Collection Script Complete <<<=====" &&