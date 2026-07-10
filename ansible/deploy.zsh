# si ansible está instalado recibiendo respuesta mediante el version, lanzamos el playbook de despliegue
export ANSIBLE_VERSION=$(ansible-playbook --version)
if [[ $ANSIBLE_VERSION = "startstr"*]]
then
  ansible-playbook -i playbook.yml 
"ansible_user=$USER"
else
  echo "Ansible no está instalado. Por favor, instálalo para continuar."
fi

#!/usr/bin/env zsh
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SUBSCRIPTION_ID="${1:-}"

if [[ -z "$SUBSCRIPTION_ID" ]]; then
  SUBSCRIPTION_ID="$(az account show --query id -o tsv 2>/dev/null || true)"
fi

if [[ -z "$SUBSCRIPTION_ID" ]]; then
  echo "No se recibió subscription_id. Pásalo como parámetro o inicia sesión con 'az login'."
  exit 1
fi

if ! command -v ansible-playbook >/dev/null 2>&1; then
  echo "Ansible no está instalado. Por favor, instálalo para continuar."
  exit 1
fi

ansible-playbook \
  -i "$SCRIPT_DIR/hosts" \
  "$SCRIPT_DIR/playbook.yml" \
  -e "subscription_id=$SUBSCRIPTION_ID" \
  -e "ansible_user=$USER"
