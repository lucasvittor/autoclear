### AutoClear.sh
#!/bin/bash

# AutoClear - Script de limpeza e otimização de sistema Linux
# Autor: Lucas
# Versão: 1.0

source ./utils/helper_functions.sh

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/exec-$(date '+%Y%m%d').log"
mkdir -p "$LOG_DIR"

log "Iniciando AutoClear..."

main_menu() {
  echo "=========================="
  echo " AutoClear v1.0"
  echo "=========================="
  echo "1. Limpar cache do sistema"
  echo "2. Limpar arquivos temporários"
  echo "3. Limpar logs antigos"
  echo "4. Verificar uso de disco"
  echo "5. Identificar processos pesados"
  echo "6. Executar todas as opções"
  echo "0. Sair"
  read -p "Escolha uma opção: " opt

  case $opt in
    1) clean_cache;;
    2) clean_temp;;
    3) clean_logs;;
    4) check_disk;;
    5) check_heavy_processes;;
    6)
      clean_cache
      clean_temp
      clean_logs
      check_disk
      check_heavy_processes
      ;;
    0) log "Saindo do script. Até logo!"; exit 0;;
    *) echo "Opção inválida.";;
  esac
  echo ""
  main_menu
}

main_menu
