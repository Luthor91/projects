# Définir la version de Python à utiliser
PYTHON := python3.11

# Définir le port sur lequel le serveur sera lancé
PORT := 8000

# Définir l'URL du dépôt Git
GIT_REPO := https://github.com/Luthor91/projects.git

# Cible par défaut
.PHONY: serve freeze install update git-update

# Commande pour démarrer un serveur HTTP simple
serve:
	@echo "Starting server on http://127.0.0.1:$(PORT)"
	$(PYTHON) -m http.server $(PORT)


deploy:
	@git add .
	@git commit -m "update projects data"
	@git push $(GIT_REPO)
