---
title: Trilha â€” Fundamentos
---

# Trilha: Fundamentos

> Base sÃ³lida de engenharia de prompts: clareza, estrutura e testabilidade.

## Objetivos
- Entender a anatomia de um bom prompt (papel, objetivo, contexto, restriÃ§Ãµes, formato de saÃ­da)
- Escrever prompts claros e verificÃ¡veis
- Criar o hÃ¡bito de iterar e avaliar com critÃ©rios simples

## ConteÃºdos essenciais
- Anatomia: papel, objetivo, contexto, restriÃ§Ãµes, formato de saÃ­da, exemplos
- Clareza e escopo: evitar ambiguidade, declarar o que nÃ£o fazer
- Formatos: Markdown, JSON e campos obrigatÃ³rios/opcionais
- CritÃ©rios de qualidade: como avaliar (ex.: checklist rÃ¡pida)

## Roteiro sugerido
1. MÃ³dulo 1 â€” Fundamentos â†’ [abrir](https://inematds.github.io/prompts/modulo1_fundamentos/)
2. Leituras do acervo (exemplos prÃ¡ticos):
   - IntroduÃ§Ã£o e visÃ£o geral: [2191](../../data/2494987106/2191/content.txt)
   - Estrutura de um bom prompt: [4807](../../data/2494987106/4807/content.txt)
   - Guia para iniciantes e avanÃ§ado: [4819](../../data/2494987106/4819/content.txt)

## ExercÃ­cios prÃ¡ticos
- Reescreva 2 prompts do seu dia a dia usando a anatomia completa; compare resultados antes/depois.
- Publique no GitHub Discussions com contexto, prompt, saÃ­da e breve anÃ¡lise (o que melhorou).

## Checklist de qualidade (rÃ¡pida)
- Objetivo explÃ­cito e mensurÃ¡vel
- Formato de saÃ­da definido (ex.: Markdown/JSON) e campos claros
- CritÃ©rios de aceitaÃ§Ã£o simples (ex.: â€œconter 3 tÃ³picos, citar fonteâ€)
- Teste em 1 caso fÃ¡cil e 1 difÃ­cil; refine

## CritÃ©rios de domÃ­nio
- VocÃª declara objetivo, formato e critÃ©rios de qualidade em cada prompt
- VocÃª testa o mesmo prompt em casos fÃ¡ceis/difÃ­ceis e refina conscientemente

---

## Prompt base (copiar e colar)

```
Papel: VocÃª Ã© [funÃ§Ã£o] que [objetivo].
Tarefa: [o que fazer] para [quem] em [contexto].
Requisitos: [bullet points claros]
Formato de saÃ­da: [Markdown/JSON], campos: [x, y, z]
CritÃ©rios de qualidade: [ex.: 3 bullets, tom neutro, citar fonte]
Exemplos (opcional): [1â€“2 mini exemplos]
```

### Variante JSON
```
Papel: Instrutor de escrita tÃ©cnica
Tarefa: Resumir o texto abaixo em 3 bullets factuais.
Requisitos: sem opiniÃ£o, sem adjetivos vagos.
Formato: JSON { "bullets": ["...", "...", "..."] }
CritÃ©rios: cada bullet â‰¤ 20 palavras, sem redundÃ¢ncia.
Texto: """<cole o texto>"""
```

## Antes/Depois (exemplos)

- Antes (vago):
```
FaÃ§a um resumo do documento.
```
- Depois (claro):
```
Papel: Analista de conteÃºdo
Tarefa: Resumir o documento em 3 bullets factuais
Formato: Markdown (lista)
CritÃ©rios: 1 ideia por bullet, sem opiniÃ£o, â‰¤ 18 palavras
Texto: """<documento>"""
```

- Antes (escopo solto):
```
Me ajude com ideias de marketing.
```
- Depois (focado):
```
Papel: Estrategista de Marketing
Tarefa: Gerar 5 ideias de posts LinkedIn sobre [tema] para [persona]
Formato: Tabela | colunas: TÃ­tulo, Ã‚ngulo, CTA
CritÃ©rios: tom profissional, sem jargÃ£o, cada CTA com verbo de aÃ§Ã£o
```

## Antiâ€‘padrÃµes e correÃ§Ãµes
- Pedido genÃ©rico sem contexto â†’ adicionar â€œpara quemâ€, â€œpor quÃªâ€ e critÃ©rios.
- Formato aberto â†’ especificar estrutura (Markdown/JSON e campos).
- Tom inconsistente â†’ explicitar â€œtomâ€, â€œpÃºblicoâ€, â€œnÃ­vel de detalheâ€.
- Requisitos ambÃ­guos â†’ trocar â€œbom/claroâ€ por limites/contagens.

## Rubrica de autoavaliaÃ§Ã£o (0â€“2 por item, meta â‰¥ 7/10)
- Clareza do objetivo (0â€“2)
- Formato de saÃ­da e completude (0â€“2)
- CritÃ©rios objetivos e verificÃ¡veis (0â€“2)
- ConsistÃªncia objetivoâ†’requisitosâ†’saÃ­da (0â€“2)
- Teste e refinamento (0â€“2)

## ExercÃ­cios enriquecidos
- Reescrita guiada: aplique o Prompt Base a 2 prompts reais e compare.
- ValidaÃ§Ã£o de formato: peÃ§a saÃ­da em JSON e verifique campos/limites.
- Caso difÃ­cil: mesma tarefa com entrada ambÃ­gua; refine atÃ© estabilizar.

> Dica: veja modelos prontos em Templates â†’ Modelos de Prompt.

