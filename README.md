# MestrIA 🎓
> Assistente inteligente de planejamento pedagógico para professores da rede estadual do MS

## O Problema
Professores da rede estadual de MS precisam preencher bimestralmente um planejamento pedagógico detalhado no sistema SGDE — com 4 colunas: ações didáticas, recuperação, critérios avaliativos e observações. O processo é manual, repetitivo e consome horas de trabalho por bimestre.

## A Solução
O professor cola o código de habilidade e o objeto de conhecimento recebidos da secretaria, adiciona observações opcionais, e o MestrIA sugere uma base estruturada de planejamento via Claude (Anthropic). O resultado serve como ponto de partida para o professor revisar e inserir no SGDE com sua visão pedagógica.

## Arquitetura
- **Frontend:** React/HTML (interface do professor)
- **Backend:** n8n (orquestração via webhooks)
- **Banco de dados:** Supabase / PostgreSQL
- **IA:** Claude Sonnet via Anthropic API

```
Fluxo: Professor → Frontend → Webhook n8n → Claude API → Supabase → resposta
```

## Como rodar

### Banco de dados
1. Crie um projeto no [Supabase](https://supabase.com)
2. Acesse o SQL Editor do seu projeto
3. Execute o script `docs/banco.sql`
4. O script já ativa RLS (Row Level Security) nas tabelas

### Variáveis de ambiente
Crie um arquivo `.env` na raiz do projeto (não versionar):
```
SUPABASE_URL=sua_url_aqui
SUPABASE_KEY=sua_chave_aqui
ANTHROPIC_API_KEY=sua_chave_aqui
```

## Roadmap
- [x] Modelagem do banco de dados
- [x] Banco criado no Supabase com RLS ativo
- [x] Repositório documentado no GitHub
- [ ] Autenticação (cadastro e login por professor)
- [ ] Geração de planejamento com IA
- [ ] Interface do professor (steps de input)
- [ ] Listagem de planejamentos salvos
- [ ] Exportação do planejamento

## Tecnologias
- n8n (automação e webhooks)
- Anthropic Claude Sonnet (geração de conteúdo pedagógico)
- Supabase / PostgreSQL (banco de dados relacional)
- HTML / React (frontend)

## Status
Em desenvolvimento — Fase 1 concluída (banco de dados)
Próximo: Fase 2 — autenticação via webhook no n8n