## Requirements

- docker
- docker-compose

## Installation

```bash
$ docker-compose up -d
```

## Troubleshooting

### Permission denied

This is an issue on volume permissions,
the fastest way to resolve this is:

```bash
$ chmod 777 /data
```
