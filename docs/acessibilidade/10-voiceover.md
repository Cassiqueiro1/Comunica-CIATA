# VoiceOver

## Objetivo

Este documento define todas as regras de interação entre o Comunica-CIATA e o VoiceOver.

Estas regras são obrigatórias para todas as telas do aplicativo.

A acessibilidade faz parte da arquitetura do projeto.

Não poderá ser tratada como uma funcionalidade opcional.

---

# Filosofia

O usuário deverá conseguir utilizar 100% dos recursos do aplicativo sem enxergar a tela.

Toda funcionalidade deverá ser igualmente eficiente utilizando apenas:

* VoiceOver;
* Gestos;
* Teclado Bluetooth;
* Braille Screen Input;
* Linha Braille compatível com iOS.

Nenhuma tarefa poderá exigir interação visual.

---

# Princípios

## Um elemento, uma informação

Cada informação deverá possuir apenas um elemento acessível.

Evitar dividir informações em diversos controles.

Exemplo correto:

Uma mensagem inteira representa um único elemento.

Exemplo incorreto:

Remetente

Horário

Texto

Status

Reação

Cada um como foco independente.

---

## Ordem lógica

A navegação deverá seguir exatamente a ordem visual.

Nunca alterar a ordem de leitura sem necessidade.

---

## Consistência

O mesmo gesto deverá produzir sempre o mesmo resultado.

O mesmo componente deverá anunciar sempre no mesmo formato.

---

## Preservação do foco

O VoiceOver nunca deverá perder o foco durante:

* atualização da conversa;
* chegada de novas mensagens;
* download de mídia;
* atualização de status;
* sincronização.

Se a interface precisar ser reconstruída, o foco deverá retornar exatamente ao elemento anteriormente selecionado.

---

# Cabeçalhos

Somente separadores de data utilizarão o trait Header.

Exemplos

Hoje

Ontem

02 de julho de 2026

Nunca utilizar cabeçalhos para:

remetentes

horários

grupos

mensagens

---

# Rotor

O Comunica-CIATA utilizará as ações personalizadas do VoiceOver como principal mecanismo para ações sobre mensagens.

A ordem deverá ser consistente.

Exemplo

Responder

Reagir

Encaminhar

Compartilhar

Copiar

Editar

Excluir

Informações

---

# Leitura

Toda leitura deverá ser natural.

Evitar repetir palavras desnecessárias.

Ruim

Mensagem de texto.

Mensagem de João.

Mensagem enviada.

Bom

João.

Tudo certo.

Enviada.

---

# Atualizações

Novas mensagens não poderão alterar automaticamente:

* posição da rolagem;
* foco;
* item selecionado.

O aplicativo apenas anunciará:

"Nova mensagem."

ou

"Cinco novas mensagens."

O usuário decidirá quando navegar até elas.

---

# Indicadores

Sempre utilizar texto.

Nunca depender exclusivamente de:

cores

ícones

animações

---

# Dynamic Type

Todos os componentes deverão respeitar o tamanho de fonte escolhido pelo usuário.

Nenhum texto poderá ser truncado sem alternativa acessível.

---

# Contraste

Modo claro e escuro deverão possuir contraste adequado.

---

# Feedback sonoro

Sempre que possível utilizar sons discretos para:

mensagem enviada

erro

download concluído

upload concluído

descrição pronta

Os sons nunca substituirão anúncios do VoiceOver.

---

# Feedback por vibração

Quando suportado pelo sistema.

Exemplos

mensagem enviada

erro

fim da gravação

---

# Modo de Leitura

O aplicativo possuirá três perfis.

## Resumido

Anunciar apenas as informações essenciais.

## Detalhado

Anunciar todas as informações relevantes.

## Personalizado

Permitir ao usuário escolher individualmente quais informações deseja ouvir.

---

# Navegação Inteligente

O aplicativo deverá adaptar automaticamente a leitura ao contexto.

Exemplos

Conversa privada

Evitar repetir o nome do remetente em todas as mensagens.

Grupo

Anunciar remetente sempre que houver mudança de autor.

Canal

Priorizar data e conteúdo.

---

# Inteligência Artificial

Toda integração com IA deverá ser iniciada explicitamente pelo usuário.

Jamais enviar imagens automaticamente.

Sempre informar:

qual provedor será utilizado;

qual conteúdo será enviado.

---

# Recuperação de foco

Caso ocorra erro inesperado ou atualização da interface, o aplicativo deverá tentar restaurar o foco para:

a mesma mensagem;

ou o elemento mais próximo.

Nunca retornar ao topo da conversa.

---

# Critérios de Aprovação

Uma funcionalidade somente poderá ser considerada concluída quando:

funcionar integralmente com VoiceOver;

funcionar com teclado Bluetooth;

funcionar com linha Braille;

preservar foco;

possuir ações acessíveis;

possuir rótulos corretos;

possuir estados corretos;

respeitar Dynamic Type;

funcionar em modo claro e escuro;

ser aprovada nos testes de acessibilidade do CIATA.
