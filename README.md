# scala-cli-preloaded

A Docker image for [scala-cli](https://scala-cli.virtuslab.com) with preloaded Scala versions. Based on Alpine.

See this on [Docker Hub](https://hub.docker.com/r/kubukoz/scala-cli-preloaded).

Versions supported:

| this image | scala-cli | scala versions         |
| ---------- | --------- | ---------------------- |
| 0.0.7-0    | 0.0.7     | 2.12.14, 2.13.6, 3.1.0 |


```bash
docker run -i --rm kubukoz/scala-cli-preloaded:0.0.7-0 - < demo/script/hello.sc

# or with some actual sources
docker run --rm -v $(pwd)/demo/full:/app kubukoz/scala-cli-preloaded:latest /app
```

## Why?

The [official scala-cli image]([hub.docker.com/repository/virtuslab/scala-cli](https://hub.docker.com/r/virtuslab/scala-cli/)) only contains the scala-cli binary, with no compiler bridges, dependencies, nothing.
For fast startup and execution under the listed Scala versions, you can use this image instead - albeit larger
