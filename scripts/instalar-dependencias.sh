#!/usr/bin/env bash
# Instala el tema y los plugins del sitio con WP-CLI.
# Uso (desde la raíz del proyecto, con `lando start` ya ejecutado):
#   ./scripts/instalar-dependencias.sh
set -euo pipefail
cd "$(dirname "$0")/.."

lando wp theme install hello-elementor --activate
lando wp plugin install elementor wpforms-lite safe-svg header-footer-elementor --activate
lando wp language plugin install --all es_CO || true
lando wp language theme install --all es_CO || true
