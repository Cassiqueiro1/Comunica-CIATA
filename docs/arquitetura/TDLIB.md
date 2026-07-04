# Integração com TDLib

## Objetivo

Definir como o Comunica-CIATA utilizará a TDLib para comunicação com o Telegram.

---

# Princípio

A TDLib será a única camada responsável por autenticação, sincronização, envio, recebimento e gerenciamento de mensagens do Telegram.

O restante do aplicativo não deverá depender diretamente de detalhes internos da TDLib.

---

# Camadas

## Interface

SwiftUI.

Responsável por exibir telas, receber ações do usuário e expor acessibilidade.

## Core

Responsável por regras de negócio, modelos internos e serviços.

## Camada Telegram

Responsável por traduzir eventos e comandos entre o Comunica-CIATA e a TDLib.

---

# Serviço Telegram

Será criado um serviço principal:

ServicoTelegram

Responsabilidades:

* iniciar TDLib;
* autenticar usuário;
* carregar conversas;
* carregar mensagens;
* enviar mensagens;
* baixar arquivos;
* reagir;
* encaminhar;
* apagar;
* editar;
* observar eventos;
* atualizar modelos internos.

---

# Autenticação

Fluxo previsto:

1. Usuário informa telefone.
2. TDLib solicita código.
3. Usuário informa código.
4. Se necessário, informa senha de verificação em duas etapas.
5. Sessão é criada.
6. Conversas são carregadas.

## Acessibilidade do login

Todos os campos deverão possuir rótulos claros.

Erros deverão explicar o problema e a próxima ação.

Exemplo:

"Código incorreto. Verifique o SMS ou Telegram em outro dispositivo e tente novamente."

---

# Eventos

A TDLib envia atualizações assíncronas.

Exemplos:

* nova mensagem;
* mensagem editada;
* mensagem apagada;
* atualização de estado;
* conversa atualizada;
* arquivo baixado;
* conexão alterada.

Esses eventos deverão ser convertidos para modelos internos antes de chegar à interface.

---

# Atualização da Interface

Eventos da TDLib não deverão atualizar diretamente componentes visuais.

Fluxo correto:

TDLib

↓

ServicoTelegram

↓

Modelos internos

↓

ViewModel

↓

SwiftUI

---

# Preservação de Foco

Ao receber eventos, o sistema deverá preservar identificadores estáveis.

Novas mensagens não devem reconstruir a lista inteira quando isso causar perda de foco.

Preferir atualizações incrementais.

---

# Conversas

Operações mínimas:

* listar conversas;
* abrir conversa;
* pesquisar conversa;
* arquivar;
* fixar;
* silenciar;
* marcar como lida;
* marcar como não lida.

---

# Mensagens

Operações mínimas:

* carregar histórico;
* observar novas mensagens;
* enviar texto;
* enviar áudio;
* enviar arquivo;
* responder;
* encaminhar;
* editar;
* apagar;
* reagir;
* buscar na conversa.

---

# Arquivos

A TDLib será responsável por download e upload.

O aplicativo deverá expor estados acessíveis:

* não baixado;
* baixando;
* baixado;
* erro.

Nunca usar apenas barra visual de progresso.

---

# Mapeamento de Tipos

A TDLib possui tipos próprios de mensagens.

O Comunica-CIATA deverá converter esses tipos para o enum interno TipoMensagem.

Exemplos:

messageText → texto

messageVoiceNote → audio

messagePhoto → imagem

messageVideo → video

messageDocument → documento

messageSticker → sticker

messageAnimation → gif

---

# Erros

Erros da TDLib deverão ser convertidos para mensagens compreensíveis.

Exemplo ruim:

"Error 400."

Exemplo bom:

"Não foi possível enviar a mensagem. Verifique a conexão e tente novamente."

---

# Offline

O aplicativo deverá funcionar parcialmente offline quando houver cache local.

Deverá permitir:

* ler mensagens já carregadas;
* ouvir mídias baixadas;
* consultar descrições salvas;
* escrever mensagens pendentes, se suportado.

---

# Segurança

Sessões e dados sensíveis deverão seguir as recomendações da TDLib e do iOS.

Chaves de IA não pertencem à TDLib e deverão ficar no Keychain.

---

# Testes

A integração com TDLib deverá ser testada com:

* login novo;
* sessão existente;
* erro de código;
* senha de duas etapas;
* lista grande de conversas;
* conversa longa;
* chegada de múltiplas mensagens;
* envio offline;
* download de mídia;
* perda e retorno de conexão.

---

# Critérios de Aceite

A integração será considerada pronta quando:

* login funcionar com VoiceOver;
* conversas carregarem corretamente;
* mensagens forem recebidas e enviadas;
* eventos não roubarem foco;
* erros forem compreensíveis;
* arquivos tiverem estados acessíveis;
* cache básico funcionar;
* logout encerrar sessão corretamente.
