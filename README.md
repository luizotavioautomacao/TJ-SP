# TJ-SP — Escrevente Técnico Judiciário

Material de estudo para o concurso de **Escrevente Técnico Judiciário do TJ-SP** (banca Vunesp).

| Item | Detalhe |
|---|---|
| Prova | **14/03/2027** (tarde · 70 questões objetivas + redação · 5h) |
| Inscrição | até **10/12/2026** · pagamento até **11/12** (R$ 81) |
| Edital | vunesp.com.br/TJSP2607 |
| Meta | ~80% de acertos (56 de 70). Em 2024, a nota de corte ficou entre 7,0 e 7,7 |

## Estrutura

```
planos/
  cronograma.md                 Plano completo de 17 semanas (~404h, ~3h30/dia)
  regra-pareto.md               Plano 80/20 focado nos temas que mais caem (~4h45/dia)
  temas-alta-probabilidade.md   Revisão de véspera para a semana da prova (08–14/03)
Makefile                        Submódulo recursos/: make recursos (baixar) · make atualizar · make status
front-end/
  index.html                    Site: simulados, provas oficiais e leitura do edital (?doc=edital)
  markdown/
    edital-2026.md              Edital 02/2026 em Markdown (gerado: make -C tools edital)
    simulado1.md                48 questões originais no estilo Vunesp, com gabarito comentado
    simulado2.md                Simulado 2: uma questão nova por questão do simulado 1
    TJ-SP-<ano>.md              Provas oficiais 2017, 2018, 2021, 2023, 2024 (e reaplicação) e 2025 com gabarito (geradas)
    img/TJ-SP-<ano>/            Figuras recortadas das provas oficiais
recursos/                       Submódulo git (repositório privado recursos-TJ-SP)
  edital/                       PDF do edital (+ cópia do edital-2026.md)
  material/                     Materiais de estudo em PDF
  provas/                       PDFs das provas e gabaritos
tools/
  Makefile                      Comandos de conversão: make -C tools help
  src/                          Conversores PDF → Markdown (pdf_to_md.py, prova_to_md.py, perfis/)
```

### Baixar os recursos (submódulo)

Os PDFs (edital, provas, gabaritos e materiais) ficam no repositório privado `recursos-TJ-SP`, montado em `recursos/` como submódulo:

```
git clone --recurse-submodules https://github.com/luizotavioautomacao/TJ-SP   # clone já com recursos/
make recursos     # em um clone existente: baixa recursos/ no commit registrado
make atualizar    # traz o último commit do recursos-TJ-SP (depois: git add recursos && git commit)
```

## Planos de estudo

Os dois planos usam as mesmas três fases:

1. **Primeira passada na teoria / núcleo** (16/11 – 17/01)
2. **Teoria restante + questões** (18/01 – 21/02)
3. **Revisão e simulados** (22/02 – 14/03)

- **`cronograma.md`**: cobre o edital inteiro, com carga horária por disciplina e checklist semanal.
- **`regra-pareto.md`**: dedica 80% do tempo aos 20% do conteúdo mais cobrado. O resto do edital e a redação ficam com o tempo restante.

Direito é estudado pela **lei seca**, só nos artigos listados no edital. Informática e Matemática têm carga reduzida por serem pontos fortes.

## Composição da prova

| Bloco | Questões |
|---|---|
| Língua Portuguesa | 16 |
| Direito (Penal, Proc. Penal, Proc. Civil, Constitucional, Administrativo, Normas TJSP) | 30 |
| Informática | 9 |
| Raciocínio Lógico | 7 |
| Matemática | 4 |
| Atualidades + Lei Brasileira de Inclusão | 4 |
| **Total** | **70** |

## Simulados

As questões foram elaboradas no estilo Vunesp e **não são cópias de provas reais**. Cada simulado traz o gabarito comentado no fim do arquivo.

### Fazer online

Os simulados podem ser feitos direto no navegador, com correção automática:
**https://luizotavioautomacao.github.io/TJ-SP/**

As respostas ficam salvas no navegador de cada aluno. **Conferir** mostra a nota por matéria e o gabarito comentado; **Zerar** apaga tudo para recomeçar. A página (`front-end/index.html`) lê os arquivos de `front-end/markdown/`, então qualquer edição neles aparece no site. Para incluir um simulado novo, adicione o `.md` em `front-end/markdown/` e uma linha na lista `SIMULADOS` do `front-end/index.html`.

As provas oficiais são geradas a partir dos PDFs com `make -C tools provas` (ou `prova-2017`, `prova-2018`, `prova-2021`, `prova-2023`, `prova-2024`, `prova-2024-reaplicacao`, `prova-2025`).
