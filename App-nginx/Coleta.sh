#!/bin/bash
# Pega o Token (Sessão de 6h)
TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

# Usa o Token para pegar o ID
INSTANCE_ID=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/instance-id)

DIR="$(cd "$(dirname "$0")" && pwd)"

while true; do
    echo "$INSTANCE_ID" > "$DIR/id_maquina.txt"
    date +"%H:%M:%S" > "$DIR/hora.txt"
    sleep 1
done
