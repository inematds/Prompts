# 🧾 FASE 3 – PROMPT TÉCNICO FINAL (para geração automática no Manus ou outros)

O conteúdo a seguir é o prompt final que deverá ser usado por ferramentas que transformam linguagem natural em fluxos no n8n.

```
Intenção:
Criar um sistema automatizado baseado em fluxos n8n para atender às seguintes funções: atendimento multicanal, roteamento por intenção, subagentes especializados, memória de curto e longo prazo, integração com banco de dados, e notificações inteligentes.

Canais de entrada/saída:
Entrada: WhatsApp, E-mail, Webhook, Formulário
Saída: Sempre pelo mesmo canal de entrada, exceto alertas internos (via Telegram)

Tipo de entrada/saída:
Entrada: Texto, imagem, voz, JSON
Saída: Texto

Memória:
Memória curta por usuário (últimas 5 interações), armazenada via variável ou Redis  
Memória longa com todos os registros e logs persistidos no Supabase

Armazenamento:
Banco Supabase com tabelas como:
- usuarios(id, nome, email, telefone, canal)
- pedidos(id, usuario_id, tipo, dados, criado_em)
- log_erros(id, etapa, mensagem, timestamp)
Chave de duplicação: e-mail ou nome + telefone

Uso de RAG:
Sim, para dúvidas complexas, com fallback textual

Uso de subagentes:
Sim. Cada subagente com função isolada:
- AgenteCadastro
- AgenteBusca
- AgenteDúvidas
- AgenteAgendamento
- AgenteNotificação

Plataforma:
n8n

Versão do n8n:
1.104.2

Tipo de execução:
Sequencial, com disparo por evento (mensagem ou webhook), usando roteador de intenção

Arquitetura proposta:
Modular, com agente central que interpreta e roteia  
Cada subagente é responsável por uma ação e se comunica com Supabase  
Fallback e logs automáticos inclusos

Blocos/Agentes e funções:
- EntradaMulticanal: recebe dados
- InterpreteIntencao: identifica ação desejada
- Subagentes especializados: executam tarefas
- ArmazenamentoCentral: registra tudo no Supabase
- SaidaCanal: responde o usuário
- NotificacaoInterna: alerta via Telegram para admins
- Logger: grava falhas ou ações importantes

Observações adicionais:
- Use Switch para roteamento
- Evite Function sempre que possível
- Validar dados obrigatórios antes de qualquer gravação
- A memória curta é temporária e reinicializada após X minutos ou nova sessão
- O sistema deve ser facilmente adaptável a outros nichos alterando apenas os subagentes
```
