# Especificação das Telas

Este documento define todas as telas do Comunica-CIATA.

Cada tela deverá seguir exatamente as especificações descritas abaixo.

---

# Tela Inicial

## Objetivo

Apresentar todas as conversas do usuário.

---

## Componentes

Barra superior

Lista de conversas

Botão Nova Conversa

Botão Pesquisa

Botão Configurações

---

## Ordem do VoiceOver

1 Barra superior

2 Pesquisa

3 Nova conversa

4 Configurações

5 Lista de conversas

---

## Atualizações

Novas mensagens nunca alteram o foco atual.

Apenas atualizam a conversa correspondente.

Caso o usuário esteja lendo outra conversa da lista, o foco permanece inalterado.

---

## Ações disponíveis

Abrir conversa

Fixar

Arquivar

Silenciar

Marcar como lida

Excluir

---

## Estados

Carregando

Lista vazia

Sem conexão

Erro

Atualizando

---

# Tela Conversa

## Objetivo

Permitir leitura e envio de mensagens.

---

## Estrutura

Título

Botão voltar

Botão informações

Lista de mensagens

Campo de edição

Botão anexar

Botão enviar

Botão Mensagem de voz

---

## Ordem do VoiceOver

Voltar

Título

Informações

Cabeçalho do dia

Mensagens

Campo de texto

Anexar

Enviar

---

## Atualizações

Novas mensagens nunca alteram o foco atual.

Caso o usuário esteja no final da conversa, a rolagem poderá ocorrer automaticamente.

Caso contrário, apenas será exibido um indicador de novas mensagens.

---

## Navegação

Os cabeçalhos deverão utilizar o recurso Header do iOS.

Exemplo

Hoje

Ontem

02 de julho de 2026

---

## Ações do Rotor

Responder

Reagir

Encaminhar

Compartilhar

Copiar

Editar

Excluir

Informações

Traduzir

Descrever imagem

Extrair texto

Ir para mensagem original

Voltar para resposta

---

## Estados

Digitando

Enviando

Recebendo

Erro

Mensagem não enviada

Mensagem editada

Mensagem apagada

---

# Tela Login

## Objetivo

Autenticar o usuário no Telegram.

---

## Componentes

País

Telefone

Código

Senha em duas etapas

Entrar

Cancelar

---

## Ordem

País

Telefone

Entrar

Código


Cancelar

---

## Estados

Aguardando código

Código inválido

Conectando

Conectado

---

# Tela Configurações

## Objetivo

Centralizar todas as configurações do aplicativo.

---

## Categorias

Conta

Aparência

Conversas

Notificações

Acessibilidade

Inteligência Artificial

Armazenamento

Privacidade

Sobre

---

# Tela Pesquisa

## Objetivo

Pesquisar mensagens, grupos e contatos.

---

## Componentes

Campo de pesquisa

Resultados

Filtros

Histórico

---

## Navegação

Resultados deverão ser agrupados por categoria.

Conversas

Contatos

Mensagens

Grupos

Canais

Não lidas

---

# Tela Informações da Conversa

## Conteúdo

Nome

Descrição

Membros

Mídias

Arquivos

Links

Mensagens fixadas

Notificações

Bloquear

Sair

Excluir conversa

---

# Tela Visualização de Imagem

## Componentes

Imagem

Descrição IA

Texto OCR

Compartilhar

Salvar

Abrir original

---

# Tela Reprodução de Áudio

## Componentes

Reproduzir

Pausar

Tempo atual

Tempo restante

Velocidade

Transcrição

Compartilhar

---

# Tela Downloads

## Componentes

Lista de downloads

Progresso

Cancelar

Abrir

Excluir

---

# Tela Sobre

## Conteúdo

Versão

Licença

Equipe

GitHub

CIATA

Telegram

Política de Privacidade

Licenças Open Source
