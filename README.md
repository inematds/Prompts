# Engenharia de Prompts 2.0 — Projeto

Base aberta para criar cursos e treinamentos de Engenharia de Prompts, publicar documentação e servir como referência para formações online. Construído em Markdown com MkDocs Material e publicado via GitHub Pages.

## Objetivo
- Disponibilizar uma base clara e prática sobre Engenharia de Prompts — fundamento para projetar e usar agentes de IA.
- Permitir que qualquer pessoa ou empresa adapte o conteúdo para cursos, workshops e trilhas internas.
- Oferecer trilhas (fundamentos, técnicas e avançado) e módulos prontos para uso.

## Como usar este repositório
- Use como template (Fork) e ajuste o conteúdo conforme sua realidade.
- Edite os módulos em `docs/modulo*/README.md` e as trilhas em `docs/educacao/`.
- Publique com GitHub Pages (workflow já incluso) e compartilhe a URL.
- Para empresas: veja `docs/guia/empresa.md` e os templates em `docs/templates/`.

## Estrutura (resumo)
- `mkdocs.yml` — configuração do site (tema, navegação, plugins)
- `docs/index.md` — landing do curso
- `docs/educacao/` — página e trilhas de educação
  - `trilhas/fundamentos.md`, `trilhas/tecnicas.md`, `trilhas/avancado-masterclass.md`
- `docs/modulo*/README.md` — conteúdo por módulo
- `docs/guia/` — como usar, adaptar e publicar
- `docs/templates/` — modelos para cursos, workshops, exercícios
- `docs/recursos/` — assets estáticos (banner, favicon, etc.)
- `docs/data/` — acervo histórico (para leituras e exemplos)
- `.github/workflows/gh-pages.yml` — deploy automático para Pages

## Publicação (GitHub Pages)
1. Ajuste `site_url` e `repo_url` em `mkdocs.yml` (minúsculas recomendado).
2. Faça push na branch `main`. O workflow publica a pasta `site/` automaticamente.
3. Em Settings → Pages, escolha “GitHub Actions” como método de deploy.

## Para empresas (treinamentos)
- Use os templates em `docs/templates/roteiro-workshop.md` e `docs/templates/plano-curso.md`.
- Adapte linguagem e exemplos para o domínio do negócio.
- Monte uma trilha de 4–6 semanas com encontros curtos (ex.: 60–90 min), exercícios e um projeto final.
- Privacidade: evite subir dados sensíveis; use exemplos sintéticos.

## Para cursos online
- Siga `docs/guia/modelo-curso.md` para estruturar módulos e atividades.
- Use `docs/templates/template-exercicio.md` para padronizar entregas.
- Publique no GitHub Pages e, opcionalmente, integre vídeos (YouTube/Vimeo).

## Contribuição
- Issues e sugestões são bem-vindas.
- Faça PRs com melhorias em módulos, trilhas, guias e templates.

## Licença
- Defina a licença de sua preferência (não incluída por padrão) e adicione um arquivo `LICENSE`.
