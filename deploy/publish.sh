#!/usr/bin/env bash
# Publish the APA site to the shared Hetzner box -> https://apa.agenticworld.uk
#   bash deploy/publish.sh
# Conventions (infra/README.md): app in /opt/apa, container on the shared Caddy
# network, drop-in in /opt/caddy-sites, zero-downtime `caddy reload`.
# Only the files the pages read are published: no .env, no venv, no hidden split, no agent workspaces.
set -euo pipefail
HOST=${HOST:-root@37.27.202.168}
APP_DIR=/opt/apa
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STAGE=$(mktemp -d)
trap 'rm -rf "$STAGE"' EXIT

echo "==> stage the site"
mkdir -p "$STAGE/site/faithfulness"
cp "$ROOT/index.html" "$ROOT/demo.html" "$ROOT/README.md" "$STAGE/site/"
[ -f "$ROOT/summary.json" ] && cp "$ROOT/summary.json" "$STAGE/site/"
[ -d "$ROOT/traces" ] && cp -r "$ROOT/traces" "$STAGE/site/"
[ -d "$ROOT/protocols" ] && cp -r "$ROOT/protocols" "$STAGE/site/"
for f in demo.html summary.json protocol.json README.md; do [ -f "$ROOT/faithfulness/$f" ] && cp "$ROOT/faithfulness/$f" "$STAGE/site/faithfulness/"; done
[ -d "$ROOT/faithfulness/traces" ] && cp -r "$ROOT/faithfulness/traces" "$STAGE/site/faithfulness/"
mkdir -p "$STAGE/site/faithfulness/data" && cp -r "$ROOT/faithfulness/data/images" "$STAGE/site/faithfulness/data/" && cp "$ROOT/faithfulness/data/ground_truth.json" "$STAGE/site/faithfulness/data/"

echo "==> rsync site + deploy to $HOST:$APP_DIR"
ssh "$HOST" "mkdir -p $APP_DIR /opt/caddy-sites"
rsync -az --delete "$STAGE/site" "$ROOT/deploy" "$HOST:$APP_DIR/"

echo "==> start / restart the static server"
ssh "$HOST" "cd $APP_DIR/deploy && docker compose up -d && docker exec apa caddy reload --config /etc/caddy/Caddyfile 2>/dev/null || true"

echo "==> caddy drop-in + reload"
ssh "$HOST" "cp $APP_DIR/deploy/apa.caddy /opt/caddy-sites/apa.caddy && cd /opt/compass/deploy && docker compose exec -T caddy caddy validate --config /etc/caddy/Caddyfile >/dev/null && docker compose exec -T caddy caddy reload --config /etc/caddy/Caddyfile"

echo "==> verify"
sleep 2
curl -sS -o /dev/null -w "https://apa.agenticworld.uk/            HTTP %{http_code}\n" --max-time 60 https://apa.agenticworld.uk/ || echo "  (first HTTPS hit may lag while the certificate is issued)"
curl -sS -o /dev/null -w "https://apa.agenticworld.uk/demo.html   HTTP %{http_code}\n" --max-time 60 https://apa.agenticworld.uk/demo.html || true
