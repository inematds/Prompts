---
title: Trilha — Técnicas
---

# Trilha: Técnicas

> Padrões, frameworks e práticas para elevar a qualidade e a consistência.

## Objetivos
- Aplicar padrões (templates) e técnicas como few-shot, auto-reflexão, verificação
- Usar frameworks de prompting (ex.: CRISPE, CLEAR, RTF, ReAct) com intenção clara
- Integrar ferramentas (tool/function calling) e medir resultados

## Conteúdos essenciais
- Padrões úteis: tarefa/role, checklist, verificação, decomposição, critério de saída
- Few-shot: quando usar exemplos, seleção de bons exemplos, evitar viés
- Auto-reflexão e verificação: pedir revisão, conferir critérios, corrigir
- Avaliação: A/B, ablação (retire partes), outputs de controle, rubricas
- Tool/Function calling: esquemas claros, validação de parâmetros

## Roteiro sugerido
1. Módulo 2 — Padrões e Melhores Práticas → [abrir](../../modulo2_padroes/README.md)
2. Módulo 3 — Casos de Uso → [abrir](../../modulo3_casos_uso/README.md)
3. Leituras do acervo (seleção):
   - Padrões e anti-padrões: [4800](../../data/2494987106/4800/content.txt)
   - Técnicas de avaliação e comparação: [2005](../../data/2494987106/2005/content.txt)

## Exemplos práticos
- CLEAR (Context, Length, Examples, Ask, Result)
- CRISPE (Constraints, Roles, Input, Steps, Purpose, Evaluation)
- ReAct (razão + ação) com cuidado para não exponenciar chamadas sem controle

## Anti‑padrões e correções
- CoT (raciocínio longo) desnecessário → usar apenas quando agrega
- Few-shot fraco → escolher exemplos diversos e relevantes, limitar quantidade
- Sem avaliação → adicionar critérios e outputs de controle
- Schemas vagos em tools → definir tipos/campos obrigatórios e validação

## Checklist de qualidade (rápida)
- Define padrão explícito (template) e critério de saída
- Se usa few-shot, exemplos cobrem casos fáceis/difíceis
- Pede verificação/auto‑reflexão antes da saída final
- Mede qualidade (A/B, ablação ou checklist)

## Exercícios
- Converter um problema real em 2–3 padrões diferentes e comparar saídas
- Adicionar critérios de validação automática (ex.: checar número de itens)
- Fazer ablação: remover partes do prompt e observar impacto

## Critérios de domínio
- Você escolhe conscientemente padrões e explica trade‑offs
- Você mede qualidade (checklists, testes, outputs de controle)

