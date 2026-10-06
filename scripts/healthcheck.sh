#!/usr/bin/env bash
source "$(dirname "$0")/lib/utils.sh"

REPORT_DIR="$(repo_root)/reports"
mkdir -p "$REPORT_DIR"
REPORT="$REPORT_DIR/healthcheck_$(ts).txt"

{
  echo "=== HEALTHCHECK $(date) ==="
  echo "--- Disco ---"
  df -h /
  echo "--- Memoria ---"
  free -h
  echo "--- Servicio ejemplo ---"
  systemctl is-active ssh 2>/dev/null || echo "ssh no encontrado"
  echo "--- Últimos errores en logs ---"
  journalctl -p err -n 10 --no-pager 2>/dev/null || echo "sin journalctl"
} | tee "$REPORT"

log_info "Reporte generado: $REPORT"
