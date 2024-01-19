podman run -d \
    --name serge \
    -v weights:/usr/src/app/weights \
    -v datadb:/data/db/ \
    -p 8008:8008 \
    ghcr.io/serge-chat/serge:latest
curl -X POST -H "Content-Type: application/json" localhost:8008/api/model/Zephyr-3B/download