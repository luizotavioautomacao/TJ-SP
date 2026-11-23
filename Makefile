# Makefile da raiz: gerencia o submódulo `recursos/` (repositório recursos-TJ-SP).
# As conversões (PDF -> Markdown) ficam em tools/Makefile: make -C tools help

SUBMODULO := recursos

.PHONY: help recursos atualizar status

help:
	@echo "Submódulo $(SUBMODULO)/ (github.com/luizotavioautomacao/recursos-TJ-SP)"
	@echo ""
	@echo "  make recursos    baixa o submódulo (primeiro clone ou depois de um git pull)"
	@echo "  make atualizar   atualiza o submódulo para o último commit da branch main do remoto"
	@echo "  make status      mostra o commit do submódulo e se há mudanças locais nele"
	@echo ""
	@echo "Conversões: make -C tools help"

## Baixa o submódulo no commit registrado neste repositório
recursos:
	git submodule sync -- $(SUBMODULO)
	git submodule update --init --recursive -- $(SUBMODULO)

## Atualiza para o último commit do remoto (depois, faça commit do novo ponteiro: git add recursos)
atualizar:
	git submodule sync -- $(SUBMODULO)
	git submodule update --init --remote --merge -- $(SUBMODULO)
	@git diff --quiet -- $(SUBMODULO) \
		&& echo "recursos/ já estava atualizado." \
		|| echo "recursos/ avançou. Para registrar no projeto: git add recursos && git commit -m 'chore: atualiza recursos'"

status:
	@git submodule status -- $(SUBMODULO)
	@git -C $(SUBMODULO) status --short --branch
