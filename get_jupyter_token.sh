#!/usr/bin/env bash
docker compose exec -it jupyter_lab jupyter server list | grep -o -P "(?<=\?token=)[a-z0-9]+"
