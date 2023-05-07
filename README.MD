Build:

```
docker build -t lab8docker .
```

Run:

```
docker run -d \
    --name limit512 \
    --memory 512m \
    --mount 'type=volume,source=RemoteVol,target=/logi' \
    lab8docker
```


Check docker container memory limit:

```
docker run -d \
    --name limit512 \
    --memory 512m \
    --mount 'type=volume,source=RemoteVol,target=/logi' \
    lab8docker tail -f /dev/null; docker stats
```

Check that the pluto.sh script generates the required data and places it in the info.log file on the volume, which is located on the file system on the host machine:

```
docker run --volumes-from limit512 alpine cat /logi/info.log
```

```
docker inspect --format='{{json .Config.Cmd}}' limit512
docker inspect --format='{{.State.ExitCode}}' limit512
```