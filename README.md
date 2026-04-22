# Glow

Daily Docker builds of [charmbracelet/glow](https://github.com/charmbracelet/glow), published as `pwmcollege/glow` on Docker Hub.

## Usage

Pull the binary into your own image:

```dockerfile
COPY --from=pwmcollege/glow /usr/local/bin/glow /usr/local/bin/glow
```

Or run directly:

```sh
docker run --rm -v "$PWD:/md" -w /md pwmcollege/glow README.md
```

## Required repo config

Variables: `DOCKERHUB_USERNAME`, `DOCKER_IMAGE_NAME`
Secret: `DOCKERHUB_TOKEN`
