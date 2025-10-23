---
title: Trilha — Fundamentos
---

# Trilha: Fundamentos

> Base sólida de engenharia de prompts: clareza, estrutura e testabilidade.

## Objetivos
- Entender a anatomia de um bom prompt (papel, objetivo, contexto, restrições, formato de saída)
- Escrever prompts claros e verificáveis
- Criar o hábito de iterar e avaliar com critérios simples

## Conteúdos essenciais
- Anatomia: papel, objetivo, contexto, restrições, formato de saída, exemplos
- Clareza e escopo: evitar ambiguidade, declarar o que não fazer
- Formatos: Markdown, JSON e campos obrigatórios/opcionais
- Critérios de qualidade: como avaliar (ex.: checklist rápida)

## Roteiro sugerido
1. Módulo 1 — Fundamentos → [abrir](../../modulo1_fundamentos/README.md)
2. Leituras do acervo (exemplos práticos):
   - Introdução e visão geral: [2191](../../data/2494987106/2191/content.txt)
   - Estrutura de um bom prompt: [4807](../../data/2494987106/4807/content.txt)
   - Guia para iniciantes e avançado: [4819](../../data/2494987106/4819/content.txt)

## Exercícios práticos
- Reescreva 2 prompts do seu dia a dia usando a anatomia completa; compare resultados antes/depois.
- Publique no GitHub Discussions com contexto, prompt, saída e breve análise (o que melhorou).

## Checklist de qualidade (rápida)
- Objetivo explícito e mensurável
- Formato de saída definido (ex.: Markdown/JSON) e campos claros
- Critérios de aceitação simples (ex.: “conter 3 tópicos, citar fonte”)
- Teste em 1 caso fácil e 1 difícil; refine

## Critérios de domínio
- Você declara objetivo, formato e critérios de qualidade em cada prompt
- Você testa o mesmo prompt em casos fáceis/difíceis e refina conscientemente

---

## Prompt base (copiar e colar)

```
Papel: Você é [função] que [objetivo].
Tarefa: [o que fazer] para [quem] em [contexto].
Requisitos: [bullet points claros]
Formato de saída: [Markdown/JSON], campos: [x, y, z]
Critérios de qualidade: [ex.: 3 bullets, tom neutro, citar fonte]
Exemplos (opcional): [1–2 mini exemplos]
```

### Variante JSON
```
Papel: Instrutor de escrita técnica
Tarefa: Resumir o texto abaixo em 3 bullets factuais.
Requisitos: sem opinião, sem adjetivos vagos.
Formato: JSON { "bullets": ["...", "...", "..."] }
Critérios: cada bullet ≤ 20 palavras, sem redundância.
Texto: """<cole o texto>"""
```

## Antes/Depois (exemplos)

- Antes (vago):
```
Faça um resumo do documento.
```
- Depois (claro):
```
Papel: Analista de conteúdo
Tarefa: Resumir o documento em 3 bullets factuais
Formato: Markdown (lista)
Critérios: 1 ideia por bullet, sem opinião, ≤ 18 palavras
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
Formato: Tabela | colunas: Título, Ângulo, CTA
Critérios: tom profissional, sem jargão, cada CTA com verbo de ação
```

## Anti‑padrões e correções
- Pedido genérico sem contexto → adicionar “para quem”, “por quê” e critérios.
- Formato aberto → especificar estrutura (Markdown/JSON e campos).
- Tom inconsistente → explicitar “tom”, “público”, “nível de detalhe”.
- Requisitos ambíguos → trocar “bom/claro” por limites/contagens.

## Rubrica de autoavaliação (0–2 por item, meta ≥ 7/10)
- Clareza do objetivo (0–2)
- Formato de saída e completude (0–2)
- Critérios objetivos e verificáveis (0–2)
- Consistência objetivo→requisitos→saída (0–2)
- Teste e refinamento (0–2)

## Exercícios enriquecidos
- Reescrita guiada: aplique o Prompt Base a 2 prompts reais e compare.
- Validação de formato: peça saída em JSON e verifique campos/limites.
- Caso difícil: mesma tarefa com entrada ambígua; refine até estabilizar.

> Dica: veja modelos prontos em Templates → Modelos de Prompt.
