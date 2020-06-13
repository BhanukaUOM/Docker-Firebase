[![Pulls](https://img.shields.io/docker/pulls/bhanukauom/firebase.svg?style=flat-square)](https://hub.docker.com/r/bhanukauom/firebase/)
<hr/>

## Firebase CLI for CI/CD
The `latest` tag is currently:

- Node: 12.x
- npm: 6.x
- firebase-tools: latest
- yarn: stable
- Python: latest
- pip: latest

## Typical tasks
```bash
# Pull from Docker Hub
docker pull bhanukauom/firebase:latest
# Build from GitHub
docker build -t bhanukauom/firebase github.com/BhanukaUOM/Docker-Firebase
# Run image
docker run -it bhanukauom/firebase bash
```

### Use as base image
```Dockerfile
FROM bhanukauom/firebase:latest
```

## Disclaimer
> This is experimental and might break from time to time. Use at your own risk!
