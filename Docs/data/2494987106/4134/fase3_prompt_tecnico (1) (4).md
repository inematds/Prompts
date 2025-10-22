# 🧾 FASE 3 – PROMPT TÉCNICO FINAL PARA GERAÇÃO DE CÓDIGO N8N

## 🎯 **OBJETIVO DESTA FASE**
Gerar um prompt técnico completo e estruturado que será enviado para ferramentas de codificação (Claude Opus, Manus, Bolt, Loveable) para criar o JSON funcional do workflow n8n.

---

## 📋 **TEMPLATE DO PROMPT TÉCNICO FINAL**

```markdown
# 🤖 INSTRUÇÃO TÉCNICA PARA GERAÇÃO DE WORKFLOW N8N

 **ATUE COMO UM ESPECIALISTA EM ARQUITETURA DE AUTOMAÇÕES N8N COM USO DE IA, REDIS, SUPABASE E AGENTES MODULARES.**


## 📌 **CONTEXTO DO PROJETO**
**Sistema:** [NomeDoSistema baseado no objetivo]
**Objetivo Principal:** [Resposta 1 da descoberta]
**Complexidade:** [Calculada na Fase 2]
**Versão n8n:** [Resposta 8 da descoberta]

---

## 🏗️ **ARQUITETURA DEFINIDA**
**Tipo:** [Simples/Modular/Complexa]
**Padrão:** [Baseado nas respostas da Fase 1]
**Execução:** [Sequencial/Paralela]

### **FLUXO PRINCIPAL:**
```
[EntradaEspecífica] → [ValidadorDados] → [ProcessadorCentral] → [RoteadorIntenção] → [AgentesEspecializados] → [ArmazenamentoDados] → [SaídaUsuário]
```

---

## 🧩 **BLOCOS OBRIGATÓRIOS E CONFIGURAÇÕES**

### **🔧 GRUPO 1: ENTRADA E TRIGGERS**
```json
{
  "trigger_type": "[TipoTrigger baseado nos canais]",
  "nodes_required": [
    {
      "name": "[NomeBloco]",
      "type": "[TipoNode n8n]",
      "function": "[FunçãoEspecífica]",
      "config": {
        "[ConfiguraçõesEspecíficas baseadas no canal]"
      }
    }
  ]
}
```

### **🔧 GRUPO 2: PROCESSAMENTO E VALIDAÇÃO**
```json
{
  "validation_nodes": [
    {
      "name": "ValidadorDados",
      "type": "n8n-nodes-base.set",
      "validations": ["[CamposObrigatórios baseados no objetivo]"],
      "fallback": "[AçãoEmCasoDeErro]"
    }
  ]
}
```

### **🔧 GRUPO 3: ROTEAMENTO INTELIGENTE**
```json
{
  "routing_logic": {
    "type": "[Switch/AI/Conditional baseado na complexidade]",
    "conditions": ["[CondiçõesBaseasNasIntenções]"],
    "routes": ["[RotasParaAgentes]"]
  }
}
```

### **🔧 GRUPO 4: AGENTES ESPECIALIZADOS**
```json
{
  "specialized_agents": [
    {
      "name": "[AgentePrincipal baseado no objetivo]",
      "function": "[FunçãoEspecífica]",
      "inputs": ["[DadosNecessários]"],
      "outputs": ["[ResultadosEsperados]"],
      "connections": ["[ConexõesComOutrosBlocos]"]
    }
  ]
}
```

### **🔧 GRUPO 5: MEMÓRIA E DADOS**
```json
{
  "memory_management": {
    "type": "[TipoMemória da resposta 4]",
    "duration": "[DuraçãoContexto]",
    "storage": "[LocalArmazenamento da resposta 5]"
  },
  "data_persistence": {
    "database": "[TipoBanco da resposta 5]",
    "tables": ["[TabelasNecessárias baseadas no objetivo]"],
    "fields": ["[CamposObrigatórios]"]
  }
}
```

### **🔧 GRUPO 6: CONHECIMENTO E IA**
```json
{
  "rag_system": {
    "enabled": "[true/false baseado na resposta 6]",
    "knowledge_base": "[FonteConhecimento]",
    "fallback": "[AçãoSemRAG]"
  },
  "ai_processing": {
    "model": "[ModeloIA recomendado]",
    "prompts": ["[PromptsEspecíficos baseados no objetivo]"]
  }
}
```

### **🔧 GRUPO 7: SAÍDA E NOTIFICAÇÕES**
```json
{
  "output_channels": ["[CanaisSaída iguais à entrada]"],
  "response_format": "[FormatoResposta baseado no tipo de dados]",
  "internal_notifications": {
    "enabled": true,
    "channel": "Telegram",
    "recipients": ["admin"]
  }
}
```

---

## 🔗 **CONEXÕES E DEPENDÊNCIAS CRÍTICAS**

### **MAPEAMENTO DE CONEXÕES:**
```json
{
  "connections": {
    "[NodeOrigem]": {
      "main": [
        [
          {
            "node": "[NodeDestino]",
            "type": "main",
            "index": 0
          }
        ]
      ]
    }
  }
}
```

### **DEPENDÊNCIAS OBRIGATÓRIAS:**
- **Autenticação:** [RequisitoAuth baseado nos canais]
- **Validação:** [CamposObrigatórios]
- **Error Handling:** [EstratégiaErros]
- **Logging:** [NívelLog]

---

## ⚙️ **CONFIGURAÇÕES TÉCNICAS ESPECÍFICAS**

### **VERSÃO E COMPATIBILIDADE:**
```json
{
  "n8n_version": "[Versão específica]",
  "node_types": ["[TiposNode compatíveis]"],
  "credentials": ["[CredenciaisNecessárias]"]
}
```

### **PERFORMANCE E LIMITES:**
```json
{
  "execution": {
    "timeout": 300,
    "retries": 3,
    "error_workflow": true
  },
  "memory": {
    "max_items": 1000,
    "cleanup": true
  }
}
```

---

## 🛡️ **VALIDAÇÕES E TRATAMENTO DE ERROS**

### **VALIDAÇÕES OBRIGATÓRIAS:**
1. **Entrada:** [ValidaçõesEspecíficas baseadas no tipo de dados]
2. **Processamento:** [ChecksIntermediários]
3. **Saída:** [ValidaçõesResposta]

### **CENÁRIOS DE ERRO:**
```json
{
  "error_scenarios": [
    {
      "scenario": "[TipoErro]",
      "action": "[AçãoFallback]",
      "notification": true
    }
  ]
}
```

---

## 📊 **ESTRUTURA DE DADOS NECESSÁRIA**

### **TABELAS/ARMAZENAMENTO:**
```sql
-- [EstruturaBanco baseada no armazenamento escolhido]
CREATE TABLE [NomeTabela] (
  id UUID PRIMARY KEY,
  [campos baseados no objetivo],
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);
```

### **FORMATO DE VARIÁVEIS:**
```json
{
  "user_context": {
    "id": "[IdentificadorUsuário]",
    "channel": "[CanalOrigem]",
    "session": "[SessãoAtiva]",
    "history": ["[HistóricoInterações]"]
  }
}
```

---

## 🎯 **INSTRUÇÕES ESPECÍFICAS PARA CODIFICAÇÃO**

### **REGRAS DE IMPLEMENTAÇÃO:**
1. **Use Switch ao invés de Function** sempre que possível
2. **Nomeação clara:** Todos os nodes devem ter nomes descritivos
3. **Validação prévia:** Sempre validar dados antes de processar
4. **Logs estruturados:** Incluir logging em pontos críticos
5. **Fallback obrigatório:** Toda ação crítica deve ter fallback

### **BOAS PRÁTICAS N8N:**
```json
{
  "practices": [
    "Use Set node para transformações simples",
    "IF node para condicionais simples",
    "Switch node para múltiplas condições",
    "HTTP Request com retry automático",
    "Merge node para combinar dados",
    "Error Trigger para tratamento global"
  ]
}
```

### **PADRÕES DE NOMEAÇÃO:**
- **Nodes:** `[Função][Descrição]` (ex: "ValidaEntradaWhatsApp")
- **Variáveis:** `[contexto]_[dado]` (ex: "user_id", "message_text")
- **Conexões:** Sempre nomear outputs significativamente

---

## 🔄 **FLUXO DE EXECUÇÃO DETALHADO**

### **SEQUÊNCIA OBRIGATÓRIA:**
1. **Trigger:** [TipoTrigger] recebe dados
2. **Validação:** Verifica formato e campos obrigatórios
3. **Identificação:** Extrai ID do usuário e canal
4. **Contexto:** Carrega memória/histórico se habilitado
5. **Roteamento:** Determina intenção e roteia para agente
6. **Processamento:** Agente especializado executa ação
7. **Persistência:** Salva dados no armazenamento escolhido
8. **Resposta:** Formata e envia resposta no canal original
9. **Log:** Registra execução e métricas
10. **Cleanup:** Limpa variáveis temporárias

---

## 📋 **DELIVERABLE ESPERADO**

### **ARQUIVO JSON WORKFLOW:**
```json
{
  "name": "[NomeWorkflow]",
  "nodes": ["[ArrayCompleto de todos os nodes configurados]"],
  "connections": ["[ObjetoCompleto de todas as conexões]"],
  "active": false,
  "settings": {
    "executionOrder": "v1"
  },
  "staticData": {},
  "meta": {
    "templateCreator": "n8n-architect"
  },
  "pinData": {},
  "versionId": "[VersionId]"
}
```

### **CHECKLIST FINAL:**
- [ ] Todos os nodes têm nomes descritivos
- [ ] Todas as conexões estão mapeadas
- [ ] Validações estão implementadas
- [ ] Error handling está configurado
- [ ] Logging está habilitado
- [ ] Credenciais estão referenciadas
- [ ] Workflow está funcional e testável

---

## ⚠️ **ATENÇÃO CRÍTICA**

**NÃO ESQUEÇA:**
- Sempre incluir Error Trigger global
- Validar compatibilidade com versão n8n específica
- Testar todas as conexões críticas
- Implementar retry em operações externas
- Configurar timeouts adequados
- Incluir logs em pontos críticos

**RESULTADO ESPERADO:**
Um workflow n8n funcional, testável e pronto para importação, que atenda exatamente às especificações coletadas nas Fases 1 e 2.
```

---

## 🎯 **GERAÇÃO AUTOMÁTICA DO PROMPT**

### **PROCESSO:**
1. **Coleta dados** da Fase 2 (wireframe aprovado)
2. **Preenche template** com informações específicas
3. **Gera prompt técnico** personalizado
4. **Valida completude** das informações
5. **Entrega prompt final** para ferramenta de codificação

### **EXEMPLO DE SAÍDA:**
O sistema gerará automaticamente um prompt como o template acima, mas com todas as variáveis `[VarEspecífica]` preenchidas com os dados reais coletados nas fases anteriores.

---

## ✅ **VANTAGENS DESTA ABORDAGEM**

1. **🎯 Especificidade Total:** Prompt contém todas as informações técnicas necessárias
2. **🔧 Configurações Detalhadas:** Cada node tem configuração específica definida
3. **🔗 Conexões Mapeadas:** Relacionamentos entre blocos estão claros
4. **🛡️ Validações Incluídas:** Tratamento de erros e fallbacks definidos
5. **📊 Estrutura Completa:** Dados, tabelas e variáveis especificados
6. **⚙️ Boas Práticas:** Segue padrões n8n e otimizações
7. **🧪 Testabilidade:** Resultado é funcional e importável

**Resultado:** Qualquer LLM que receber este prompt técnico terá informações suficientes para gerar um workflow n8n funcional e completo.