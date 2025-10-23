# Guia — Como Usar e Publicar

## Usar como template
1. Faça um fork deste repositório
2. Ajuste `mkdocs.yml` (site_url, repo_url, navegação)
3. Edite módulos e trilhas conforme seu curso

## Publicar no GitHub Pages
- Workflow já incluso em `.github/workflows/gh-pages.yml`
- Ao fazer push na `main`, o site é construído e publicado
- Em Settings → Pages, selecione “GitHub Actions”

## Personalizar estilo
- Ajuste `docs/styles/theme.css`
- Edite cores e componentes no `mkdocs.yml` (Material for MkDocs)

## Estruturar exercícios
- Centralize em `docs/exercicios/index.md`
- Use o template `docs/templates/template-exercicio.md`

