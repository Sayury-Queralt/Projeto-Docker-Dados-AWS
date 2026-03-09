#!/bin/bash
# Coleta o Token e o ID da AWS
TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
INSTANCE_ID=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/instance-id)

# Identifica o diretório onde o script está salvo no momento da execução
DIR="$(cd "$(dirname "$0")" && pwd)"

# Salva nos arquivos
echo "$INSTANCE_ID" > "$DIR/id_maquina.txt"
date +"%H:%M:%S" > "$DIR/hora.txt"

AQAEAFk43D8wYEkNiHvoTXQbnHyVa37Vz6o8PQg2fMiV0EPqPVwemw

curl -s -H "X-aws-ec2-metadata-token: AQAEAFk43D8wYEkNiHvoTXQbnHyVa37Vz6o8PQg2fMiV0EPqPVwemw==" http://169.254.169.254/latest/meta-data/instance-id
