#!/usr/bin/env bash
# Cria o repositório local com commits semânticos e publica no GitHub.
# Antes: instale o GitHub CLI (https://cli.github.com/) e rode "gh auth login".
# Troque SEU NOME no README.md antes de rodar este script.
set -e
git init -b main
git add README.md
git commit -m "docs: adiciona README com objetivo e autor"
git add EAP.md
git commit -m "feat: adiciona EAP do módulo de pedidos e entregas em 3 níveis"
git add publicar.sh
git commit -m "chore: adiciona script de publicação do repositório"
gh repo create modulo-pedidos-entregas --public --source=. --push
