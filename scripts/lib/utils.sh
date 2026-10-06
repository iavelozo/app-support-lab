#!/usr/bin/env bash
# Utilidades comunes para todos los scripts

set -euo pipefail

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log_info()  { echo -e "${GREEN}[INFO]${NC} $(date '+%F %T') - $*"; }
log_warn()  { echo -e "${YELLOW}[WARN]${NC} $(date '+%F %T') - $*"; }
log_error() { echo -e "${RED}[ERROR]${NC} $(date '+%F %T') - $*" >&2; }

# Timestamp para nombres de archivo
ts() { date '+%Y%m%d_%H%M%S'; }

# Ruta raíz del repo (funciona desde cualquier subcarpeta)
repo_root() { git rev-parse --show-toplevel 2>/dev/null || pwd; }
