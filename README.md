# Engenharia de Prompts 2.0 — Projeto

Sistema de documentação e curso baseado em Markdown com MkDocs (Material) para publicação em GitHub Pages.

## Visão geral
- Site estático com navegação por Módulos e por Trilhas de Educação.
- Acervo (dados históricos) permanece no repositório como base de referência.
- Exercícios e dúvidas podem ser organizados via GitHub Discussions.

## Estrutura
- `mkdocs.yml` — configuração do site (nav, tema, trilhas)
- `docs/index.md` — landing do curso
- `docs/educacao/` — página e trilhas de educação
  - `trilhas/fundamentos.md`
  - `trilhas/tecnicas.md`
  - `trilhas/avancado-masterclass.md`
- `docs/modulo*/README.md` — conteúdo por módulo
- `docs/recursos/` — assets estáticos (banner, favicon, etc.)
- `docs/data/` — acervo histórico (mantido para consulta)
- `.github/workflows/` — (opcional) automação de deploy

## Publicação
1. Ative GitHub Pages no repositório (branch `gh-pages`).
2. Execute o build localmente ou via CI/CD.
3. Ajuste `site_url` e `repo_url` em `mkdocs.yml`.

## Educação e Trilhas
- Página central em `docs/educacao/index.md`.
- Trilhas: Fundamentos, Técnicas, Avançado (Masterclass).
- Cada trilha referencia módulos existentes e leituras do acervo.

## Próximos passos
- Revisar links internos nos módulos para apontar corretamente para `docs/data/`.
- Completar a seção de Exercícios com roteiros e templates de entrega.
- Opcional: consolidar navegação do acervo e adicionar buscas/índices.

