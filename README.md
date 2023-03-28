# Docker Minimum Working Example
With GUI and shared folder. This is made to work with macOS.

Build an image:

> :warning: **This builds the image with its current DockerHub name and version `magiwanders/dmwe:x.x`. If you want to publish your own fork modify the first line of the Makefile.**

```
make build
```

Create non-volatile container and run it:

```
make container
make start
```

Remove container:
```make clean```

Remove container and image:
```make uninstall```