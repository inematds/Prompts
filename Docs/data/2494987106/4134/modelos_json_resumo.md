# 📦 Resumo dos Modelos JSON (modelos-json.zip)

Este documento contém o resumo técnico dos modelos extraídos do arquivo `modelos-json.zip`. Cada item representa um agente ou pipeline n8n pronto, com sua estrutura interna resumida para uso nas fases 2 e 3.

---

## ✅ agente-atendimento-estilo.json
- **Total de blocos (nodes):** 49
- **Tipos de nodes usados:**
  - `n8n-nodes-base.googleDocsTool`
  - `n8n-nodes-base.if`
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.code`
  - `n8n-nodes-base.httpRequest`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Agente com respostas no estilo Ferran Tort. Usa lógica de decisão por `if` e múltiplos formatos de saída (Google Docs, HTTP).

---

## ✅ agente-rag-interativo.json
- **Total de blocos (nodes):** 13
- **Tipos de nodes usados:**
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.googleDrive`
  - `n8n-nodes-base.telegram`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Pipeline com upload controlado, regras de formatação, integração com Telegram e Google Drive.

---

## ✅ agente-rag-delete.json
- **Total de blocos (nodes):** 5
- **Tipos de nodes usados:**
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.googleDrive`
  - `n8n-nodes-base.supabase`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Remove arquivos da base Supabase e Google Drive com base em ID do documento.

---

## ✅ pipeline-rag-avancado.json
- **Total de blocos (nodes):** 47
- **Tipos de nodes usados:**
  - `@n8n/n8n-nodes-langchain.textSplitterRecursive`
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.httpRequest`
  - `n8n-nodes-base.supabase`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Pipeline robusto para extração e processamento de arquivos (PDF, Excel), com resumo e envio ao Supabase.

---

## ✅ agente-rag-semantico.json
- **Total de blocos (nodes):** 28
- **Tipos de nodes usados:**
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.googleDrive`
  - `n8n-nodes-base.supabase`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
RAG com chunking semântico e estrutura hierárquica por seções. Ideal para documentos técnicos ou legais.

---

## ✅ chatbot-multicanal-ftd.json
- **Total de blocos (nodes):** 44
- **Tipos de nodes usados:**
  - `n8n-nodes-base.telegram`
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.supabase`
  - `n8n-nodes-base.httpRequest`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Chatbot educacional multicanal com integração a Pinecone e Supabase. Ideal para ambientes de ensino.

---

## ✅ rag-multimidia-imagens.json
- **Total de blocos (nodes):** 33
- **Tipos de nodes usados:**
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.httpRequest`
  - `n8n-nodes-base.telegram`
  - `n8n-nodes-base.googleDrive`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
RAG com OCR e descrição visual para arquivos com imagens, gráficos ou tabelas. Usa Mistral AI.

---

## ✅ pipeline-rag-dinamico.json
- **Total de blocos (nodes):** 21
- **Tipos de nodes usados:**
  - `n8n-nodes-base.googleDrive`
  - `n8n-nodes-base.supabase`
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.scheduleTrigger`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Watcher dinâmico que detecta novos arquivos no Google Drive e atualiza automaticamente a base Supabase.

---

## ✅ enxame-de-agentes.json
- **Total de blocos (nodes):** 36
- **Tipos de nodes usados:**
  - `n8n-nodes-base.telegram`
  - `n8n-nodes-base.set`
  - `n8n-nodes-base.executeWorkflow`
  - `n8n-nodes-base.if`
- **Conexões configuradas:** Sim

### 🧠 Descrição:
Agente orquestrador que recebe entrada multimodal (voz/texto) e direciona para subagentes especializados.

