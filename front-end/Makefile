# Front-end local (Docker). Uso: make -C front-end <alvo>  ·  na raiz: make front / make front-down
# O site publicado NÃO usa nada disto: o GitHub Actions publica só index.html e markdown/.

PORTA ?= 8787
COMPOSE := PORTA=$(PORTA) docker compose -f $(CURDIR)/docker-compose.yml

.PHONY: help up down restart logs status build serve

help:
	@echo "Front-end local em http://localhost:$(PORTA)/"
	@echo ""
	@echo "  make up       sobe o servidor (Docker + nginx) em segundo plano"
	@echo "  make down     para e remove o container"
	@echo "  make restart  reinicia o container"
	@echo "  make logs     acompanha os logs do nginx"
	@echo "  make status   mostra se o container está rodando"
	@echo "  make build    reconstrói a imagem (só se mudar algo em docker/)"
	@echo "  make serve    alternativa sem Docker (python3 -m http.server)"
	@echo ""
	@echo "  Porta diferente: make up PORTA=9000"

up:
	$(COMPOSE) up -d --build
	@echo "Front-end em http://localhost:$(PORTA)/  (edite os .md e recarregue a página)"

down:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

logs:
	$(COMPOSE) logs -f

status:
	$(COMPOSE) ps

build:
	$(COMPOSE) build

serve:
	@echo "Front-end em http://localhost:$(PORTA)/  (Ctrl+C para parar)"
	cd $(CURDIR) && python3 -m http.server $(PORTA)
