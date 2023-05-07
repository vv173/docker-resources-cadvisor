Build:

```
docker build -t lab8docker .
```

Create volume:

```
docker volume create RemoteVol
```

Run:

```
docker run -d \
    --name limit512 \
    -m 512m \
    --mount source=RemoteVol,target=/logi \
    lab8docker
```