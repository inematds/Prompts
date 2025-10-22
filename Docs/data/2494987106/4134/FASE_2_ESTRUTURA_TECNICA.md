# 🔷 FASE 2 – ESTRUTURA TÉCNICA COMPLETA (versão universal para qualquer workflow)

Com base nas respostas da Fase 1, construa uma estrutura técnica clara e modular para o sistema automatizado no n8n.

## ✅ Arquitetura Sugerida
- Modular por agentes especializados
- Orquestração central por um agente principal de roteamento
- Execução sequencial com fallback

## ✅ Execução
- Baseada em evento (mensagem recebida ou acionamento manual)
- Sequencial, com roteamento condicional por intenção (Switch, classificação por IA ou embeddings)

## ✅ Entradas e Saídas
- Entradas: canais como WhatsApp, E-mail, Webhook, API, formulário, Telegram etc.
- Saídas: sempre na mesma origem do canal, exceto quando definido como notificação interna (ex: Telegram administrativo)

## ✅ Tipos de dados
- Entrada: texto, imagem, voz ou JSON
- Saída: texto (padrão), podendo incluir link, confirmação ou código

## ✅ Roteamento por Intenção
- Bloco inicial (Switch, classificação NLP ou IA)
- Roteia para o subagente adequado: cadastro, busca, dúvida, agendamento, notificação etc.

## ✅ Blocos e Agentes Funcionais
Cada agente deve conter:
- Nome técnico descritivo (ex: `AgenteCadastroPedido`)
- Função principal (ex: gravar pedido no banco)
- Entrada esperada
- Saída gerada
- Estrutura mínima dos dados
- Fallback em caso de erro
- Logging (opcional)

### Exemplo:
```
Bloco: AgenteCadastroPedido
Função: receber dados de cadastro e salvar em Supabase
Entrada esperada: nome, e-mail, tipo de pedido
Saída: confirmação de cadastro
Tabela: pedidos(id, nome, email, tipo, criado_em)
Fallback: se dados estiverem incompletos, solicitar novamente
```

## ✅ Memória
- Memória curta: últimos 5 contatos por usuário, via variável ou Redis
- Memória longa: toda interação registrada em Supabase ou planilha

## ✅ Armazenamento
- Banco principal: Supabase (ou Airtable, PostgreSQL, Sheets)
- Tabelas nomeadas por função: `cadastros`, `pedidos`, `respostas`, `log_erros` etc.
- Cada entrada deve ter identificador único (ID, e-mail, nome+fone...)

## ✅ Gatilhos e notificações
- Notificações automáticas (baseadas em data ou evento)
- Canal interno para administração (Telegram, Slack)

## ✅ Validações e Duplicidade
- Verificar duplicidade antes de salvar (chave: nome + e-mail ou ID)
- Validar entrada de dados obrigatórios

## ✅ Boas práticas
- Evite blocos Function (usar Set e Switch sempre que possível)
- Nomes técnicos e legíveis nos blocos
- Inserir logs com timestamp
- Validar todos os dados antes de prosseguir
- Compatível com n8n versão 1.104.2 (ou versão definida na Fase 1)
