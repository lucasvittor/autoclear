### utils/helper_functions.sh
#!/bin/bash

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

clean_cache() {
  log "Limpando cache do sistema..."
  sudo rm -rf ~/.cache/*
  sudo rm -rf /var/cache/*
  log "Cache limpo com sucesso."
}

clean_temp() {
  log "Removendo arquivos temporários..."
  sudo rm -rf /tmp/*
  sudo rm -rf /var/tmp/*
  log "Arquivos temporários removidos."
}

clean_logs() {
  log "Limpando logs antigos..."
  sudo find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;
  log "Logs antigos removidos (mantidos últimos 7 dias)."
}

check_disk() {
  log "Verificando uso de disco..."
  df -h | tee -a "$LOG_FILE"
}

check_heavy_processes() {
  log "Processos com alto uso de CPU/RAM:"
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 10 | tee -a "$LOG_FILE"
}
