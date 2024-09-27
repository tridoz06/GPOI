#!/bin/bash
# Definisci l'username e il token API come costanti
username="bubbuz"
token="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"

# Esegui il git add .
git add .

# Esegui il git commit con un messaggio predefinito
git commit -m "ohe"

# Esegui il git push usando l'autenticazione con username e token
# Modifica l'URL remoto per includere le credenziali
git remote set-url origin https://${username}:${token}@$(git remote get-url origin | sed -e 's/https:\/\///')
git push

# Ripristina l'URL remoto per rimuovere le credenziali
git remote set-url origin $(git remote get-url origin | sed -e 's/https:\/\/.*@/https:\/\//')

