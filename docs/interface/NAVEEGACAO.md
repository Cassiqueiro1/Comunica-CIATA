# Navegação

## Objetivo

Definir todos os fluxos de navegação do Comunica-CIATA.

A navegação deverá ser simples, previsível, consistente e totalmente acessível.

Toda mudança de tela deverá preservar contexto sempre que possível.

---

# Princípios

A navegação deverá priorizar:

* velocidade;
* previsibilidade;
* preservação de foco;
* baixo número de gestos;
* consistência.

O usuário nunca deverá "se perder" dentro do aplicativo.

---

# Fluxo Principal

Login

↓

Lista de Conversas

↓

Conversa

↓

Mensagem

↓

Ações

↓

Retorno ao mesmo ponto

---

# Primeiro Acesso

Fluxo

Tela de boas-vindas

↓

Termos de uso

↓

Política de privacidade

↓

Permissões necessárias

↓

Login

↓

Lista de Conversas

---

# Login

Fluxo

Telefone

↓

Código

↓

Senha de duas etapas (quando existir)

↓

Carregamento

↓

Lista de Conversas

---

# Tela Inicial

Ao abrir o aplicativo:

O foco deverá permanecer:

* na última conversa aberta;
* ou na primeira conversa da lista, quando não existir histórico.

Nunca iniciar foco em elementos decorativos.

---

# Lista de Conversas

Fluxo

Selecionar conversa

↓

Abrir conversa

↓

Voltar

↓

Retornar exatamente à conversa anteriormente selecionada

Nunca retornar ao topo da lista.

---

# Pesquisa

Fluxo

Pesquisa

↓

Resultados

↓

Abrir conversa

↓

Voltar

↓

Retornar ao resultado anteriormente focado

Nunca apagar automaticamente a pesquisa.

---

# Conversa

Fluxo

Lista de Conversas

↓

Abrir conversa

↓

Ler mensagens

↓

Responder

↓

Continuar leitura

---

# Rolagem

Ao carregar mensagens antigas:

O foco deverá permanecer na mensagem anteriormente selecionada.

Ao carregar mensagens novas:

Nunca alterar o foco automaticamente.

---

# Cabeçalhos

O rotor em Cabeçalhos deverá navegar apenas entre:

Hoje

Ontem

Datas completas

Nenhum outro elemento utilizará Header.

---

# Mensagem Respondida

Fluxo

Mensagem

↓

Ir para mensagem original

↓

Ler contexto

↓

Voltar para resposta

O retorno deverá preservar a posição anterior.

---

# Indicador de Novas Mensagens

Fluxo

Receber novas mensagens

↓

Exibir indicador

↓

Usuário escolhe ativar

↓

Mover foco para primeira mensagem nova

Nunca mover automaticamente.

---

# Ações da Mensagem

Fluxo

Mensagem

↓

Rotor

↓

Selecionar ação

↓

Executar

↓

Retornar à mesma mensagem

---

# Configurações

Fluxo

Conversa

↓

Configurações

↓

Alterar preferência

↓

Voltar

↓

Retornar à conversa exatamente onde estava

---

# Pesquisa dentro da Conversa

Fluxo

Abrir pesquisa

↓

Digitar termo

↓

Resultados

↓

Selecionar ocorrência

↓

Mensagem correspondente

↓

Voltar aos resultados

↓

Voltar à conversa

Preservar histórico da pesquisa.

---

# Download

Fluxo

Mensagem

↓

Baixar arquivo

↓

Progresso

↓

Arquivo disponível

O VoiceOver anunciará apenas mudanças importantes.

Nunca interromper leitura atual.

---

# IA

Fluxo

Imagem

↓

Descrever imagem

↓

Confirmar envio

↓

Processamento

↓

Resultado

↓

Retornar à imagem

A descrição deverá ficar disponível para futuras leituras.

---

# OCR

Fluxo

Imagem

↓

Extrair texto

↓

Resultado

↓

Copiar

↓

Retornar

---

# Documento

Fluxo

Mensagem

↓

Abrir documento

↓

Leitura

↓

Fechar

↓

Retornar exatamente à mensagem original

---

# Áudio

Fluxo

Mensagem

↓

Reproduzir

↓

Pausar

↓

Continuar reprodução

↓

Finalizar

O foco nunca deverá sair da mensagem durante reprodução.

---

# Vídeo

Fluxo

Mensagem

↓

Reproduzir

↓

Fechar

↓

Retornar ao mesmo ponto

---

# Notificações

Ao abrir uma conversa através de uma notificação:

Fluxo

Notificação

↓

Conversa

↓

Mensagem correspondente

↓

Voltar

↓

Lista de Conversas

---

# Compartilhamento

Fluxo

Mensagem

↓

Compartilhar

↓

Aplicativo de destino

↓

Retorno

↓

Mesmo ponto da conversa

---

# Exclusão

Fluxo

Mensagem

↓

Excluir

↓

Confirmação

↓

Mensagem removida

↓

Foco na mensagem imediatamente anterior

Se não existir:

Focar próxima mensagem.

---

# Atualizações

Atualizações de estado:

enviada

entregue

lida

download

upload

Nunca alterarão:

* posição da rolagem;
* foco;
* elemento selecionado.

---

# Recuperação

Se o aplicativo for encerrado inesperadamente:

Ao abrir novamente deverá restaurar:

* conversa aberta;
* posição da rolagem;
* mensagem focada, quando possível.

---

# Navegação por Teclado

O usuário deverá conseguir percorrer todo o aplicativo apenas utilizando teclado Bluetooth.

Atalhos deverão ser consistentes em todas as telas.

---

# Linha Braille

A navegação deverá seguir exatamente a mesma ordem do VoiceOver.

Não deverão existir elementos "ocultos" para Braille.

---

# Critérios de Aceite

A navegação será considerada pronta quando:

* preservar foco em todas as transições;
* preservar posição ao voltar;
* permitir recuperação após interrupções;
* funcionar com VoiceOver;
* funcionar com teclado Bluetooth;
* funcionar com linha Braille;
* permitir navegação por cabeçalhos;
* não possuir telas sem saída clara;
* minimizar a quantidade de gestos necessários para executar tarefas comuns.
