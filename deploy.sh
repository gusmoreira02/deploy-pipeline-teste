#!/usr/bin/env bash
set -e

echo "==> [deploy-pipeline-teste] Entrando na pasta do projeto"
cd /root/deploy-pipeline-teste

echo "==> Atualizando código da branch main"
git fetch origin
git checkout main
git reset --hard origin/main

echo "==> Instalando dependências (produção)"
npm install --production --prefer-offline

echo "==> Reload no PM2 do serviço"
pm2 reload deploy-pipeline-teste --update-env

echo "==> Deploy concluído com sucesso!"

