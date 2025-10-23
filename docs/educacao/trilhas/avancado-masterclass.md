---
title: Trilha — Avançado (Masterclass)
---

# Trilha: Avançado (Masterclass)

> Agentes, memória, RAG, automação com ferramentas e projetos completos.

## Objetivos
- Projetar assistentes com memória e recuperação (RAG) de forma responsável
- Orquestrar ferramentas (APIs/funções) e fluxos multi‑etapas
- Entregar projetos aplicados com avaliação e guardrails

## Roteiro sugerido
1. Módulo 4 — Assistentes, Memória e RAG → [abrir](../../modulo4_assistentes_memoria/README.md)
2. Módulo 5 — Automação e Ferramentas → [abrir](../../modulo5_automacao_ferramentas/README.md)
3. Módulo 6 — Projetos Finais → [abrir](../../modulo6_projetos_finais/README.md)
4. Leituras do acervo (seleção):
   - RAG prático e pitfalls: [2062](../../data/2494987106/2062/content.txt)
   - Agentes e tool use avançado: [1973](../../data/2494987106/1973/content.txt)

## Exercícios
- Crie um mini‑agente com memória curta + busca no acervo
- Defina métricas de sucesso e riscos/mitigações

## Critérios de domínio
- Você compõe fluxos com ferramentas e monitora qualidade e segurança
- Você entrega um projeto final utilizável e documentado

---

## Currículo sugerido (masterclass)
- Semana 1: Fundamentos de agentes, limites e responsabilidades; persona e objetivos
- Semana 2: Memória e RAG prático (curadoria, chunking, recuperação, citações)
- Semana 3: Ferramentas e orquestração (APIs, Tool/Function Calling, multi‑etapas)
- Semana 4: Observabilidade e segurança (métricas, logs, guardrails, red teaming leve)
- Semana 5: Projeto final (planejamento, execução, avaliação, publicação)

## Guardrails e verificação
- Defina limites claros (escopo, fontes permitidas, proibições)
- Use “verificação” antes da resposta final (checar critérios e segurança)
- Logue entradas/saídas sensíveis; audite amostras regularmente

## Tool/Function calling (exemplo de schema)
```
{
  "name": "buscar_documento",
  "description": "Busca documento por ID no acervo",
  "parameters": {
    "type": "object",
    "properties": { "id": {"type": "integer"} },
    "required": ["id"]
  }
}
```

## RAG — do's e don'ts
- Do: curadoria das fontes, chunking consistente, citações de trechos usados
- Do: prompt de recuperação separado do prompt de resposta
- Don’t: confiar cegamente na recuperação; trate falhas (sem resultados)

## Segurança e riscos
- Evitar vazamentos (não retornar segredos; redigir dados sensíveis)
- Prevenir jailbreaks com instruções e validação de saída
- Matriz de risco leve: probabilidade × impacto + mitigação

## Checklist do projeto
- Escopo e objetivo mensurável definidos
- Arquitetura do agente (componentes, fontes, ferramentas) descrita
- Prompts versionados e documentados (critérios de saída, exemplos, testes)
- Métricas de qualidade e segurança com plano de monitoramento
- Evidências de teste (casos fáceis/difíceis) e iterações

## Entregáveis
- Documento de arquitetura do agente (1–2 págs.)
- Repositório com prompts e scripts de avaliação (se aplicável)
- Relatório de resultados (tabelas/prints) e lições aprendidas

## Rubrica de avaliação
- Clareza de objetivo e métrica: 20%
- Arquitetura e justificativas técnicas: 30%
- Qualidade dos prompts e avaliações: 30%
- Documentação e comunicação: 20%

## Template de arquitetura (exemplo)
```
Nome do Agente: __________
Objetivo + Métrica (KPI): __________

Componentes:
- Entrada/Interface: __________
- Memória / RAG (fontes e indexação): __________
- Ferramentas/APIs: __________
- Regras/Guardrails: __________

Prompts principais:
- Sistema: __________
- Tarefas/Fluxos: __________

Avaliação:
- Casos de teste: __________
- Critérios de qualidade: __________
- Riscos/Mitigações: __________
```

