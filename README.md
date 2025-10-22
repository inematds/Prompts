# Engenharia de Prompts 2.0 — Curso

Sistema de curso baseado em Markdown com MkDocs (Material) para publicação em **GitHub Pages**. Atividades e dúvidas via **GitHub Discussions**.

## Estrutura
- `mkdocs.yml` — configuração do site
- `docs/index.md` — landing do curso
- `docs/modulo*/README.md` — conteúdo por módulo (vídeo, resumo, exercício, desafio)
- `docs/recursos/` — assets estáticos
- `.github/workflows/gh-pages.yml` — deploy automático para Pages
- Fonte de conteúdo: `Docs/2494987106.zip`

## Como publicar
1. Ative GitHub Pages no repositório (branch `gh-pages`).
2. Habilite **Discussions** no repositório.
3. Faça push para `main`/`master`. O workflow gera e publica o site.
4. Ajuste `site_url` e `repo_url` em `mkdocs.yml` (substitua `<user>/<repo>`).

## Personalização
- Tema (cores/estilo): editável em `mkdocs.yml` (Material).
- Links de exercícios: use categorias no Discussions (ex.: `exercicios-modulo-1`).
- Vídeos: substitua os `iframe` por URLs reais (YouTube/Vimeo).

## Observação sobre o nome
Nome oficial definido: “Engenharia de Prompts 2.0”. Se desejar outra variação, eu atualizo.
