# Modelos de Prompt (prontos para uso)

> Cole, ajuste os colchetes [ ] e rode com 1 caso fácil + 1 difícil.

## 1) Resumo factual (Markdown)
```
Papel: Analista de conteúdo
Tarefa: Resumir o texto abaixo em 3 bullets factuais
Requisitos: sem opinião, sem adjetivos vagos
Formato: Markdown (lista)
Critérios: 1 ideia por bullet, ≤ 18 palavras
Texto: """<cole o texto>"""
```

## 2) Sumário estruturado (JSON)
```
Papel: Estruturador de informação
Tarefa: Extrair tópicos principais e perguntas frequentes
Formato: JSON {"topicos":["..."],"faqs":[{"q":"...","a":"..."}]}
Critérios: máximo 5 tópicos e 3 FAQs curtas
Texto: """<cole o texto>"""
```

## 3) Ideias de post (LinkedIn)
```
Papel: Estrategista de Marketing
Tarefa: Gerar 5 ideias de posts sobre [tema] para [persona]
Formato: Tabela | colunas: Título, Ângulo, CTA
Critérios: tom profissional, sem jargão, CTA com verbo de ação
```

## 4) E-mail profissional
```
Papel: Redator corporativo
Tarefa: Redigir e-mail para [destinatário] solicitando [pedido]
Formato: Assunto + Corpo (Markdown)
Critérios: tom cordial, objetivo em 3 parágrafos curtos, CTA claro
Contexto: [situação/restrições]
```

## 5) Análise comparativa
```
Papel: Analista
Tarefa: Comparar [opção A] vs [opção B] para [objetivo]
Formato: Tabela | colunas: Critério, A, B, Observação
Critérios: listar 5 critérios, apontar trade-offs sem opinião
Contexto: [regras e limites]
```

