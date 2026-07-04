# Modelo de Dados

## Objetivo

Definir as principais entidades utilizadas pelo Comunica-CIATA.

Este documento descreve conceitos, estados e relacionamentos. A implementação poderá adaptar nomes técnicos conforme necessidade da TDLib e do Swift.

---

# Entidades Principais

## Usuario

Representa o usuário autenticado ou outro participante.

Campos principais:

* id
* nome
* sobrenome
* nomeUsuario
* telefone
* fotoPerfil
* estaOnline
* ultimoAcesso
* eContato
* eBloqueado

---

## Conversa

Representa chat privado, grupo, supergrupo, canal ou conversa arquivada.

Campos principais:

* id
* titulo
* tipo
* foto
* ultimaMensagem
* quantidadeNaoLidas
* quantidadeMencoes
* fixada
* silenciada
* arquivada
* rascunho
* estadoSincronizacao
* dataUltimaAtualizacao

Tipos:

* privada
* grupo
* supergrupo
* canal
* bot
* desconhecida

---

## Mensagem

Representa uma mensagem individual.

Campos principais:

* id
* idConversa
* remetente
* dataEnvio
* dataEdicao
* tipo
* texto
* midias
* estadoEnvio
* reacoes
* respostaPara
* encaminhadaDe
* foiEditada
* foiApagada
* estaFixada
* descricaoIA
* textoOCR

Tipos:

* texto
* audio
* imagem
* video
* documento
* sticker
* gif
* localizacao
* contato
* enquete
* chamada
* servico
* desconhecida

---

## Anexo

Representa arquivos ligados à mensagem.

Campos principais:

* id
* idMensagem
* tipo
* nomeArquivo
* tamanho
* mimeType
* duracao
* largura
* altura
* caminhoLocal
* urlTemporaria
* estadoDownload
* estadoUpload

Tipos:

* imagem
* audio
* video
* documento
* miniatura
* sticker
* outro

---

## Reacao

Representa reações em uma mensagem.

Campos principais:

* emoji
* quantidade
* minhaReacao
* usuarios

---

## DescricaoIA

Representa resultado gerado por IA para imagem, vídeo ou documento.

Campos principais:

* id
* idMensagem
* provedor
* tipo
* texto
* criadoEm
* idioma
* promptUsado
* foiGeradaLocalmente
* origem

Tipos:

* descricaoImagem
* ocr
* resumo
* perguntaResposta
* transcricaoAudio
* descricaoVideo

---

## ConfiguracaoUsuario

Representa preferências locais do aplicativo.

Campos principais:

* perfilLeitura
* tema
* tamanhoTexto
* anunciarRemetente
* anunciarHorario
* anunciarEstado
* anunciarReacoes
* anunciarTipoMensagem
* confirmarEnvioIA
* provedorIA
* usarWifiParaIA
* sonsAtivos
* vibracoesAtivas

---

## PerfilLeitura

Define o nível de feedback do VoiceOver.

Tipos:

* resumido
* detalhado
* personalizado

---

## CredencialIA

Representa configuração segura de provedor de IA.

Campos principais:

* provedor
* identificadorKeychain
* existeChave
* ultimaValidacao
* estadoValidacao

Observação:

A chave real nunca deverá ser armazenada no banco local.

---

# Estados

## EstadoEnvio

* enviando
* enviada
* entregue
* lida
* erro

---

## EstadoDownload

* naoBaixado
* baixando
* baixado
* erro

---

## EstadoUpload

* aguardando
* enviando
* enviado
* erro

---

## EstadoSincronizacao

* sincronizado
* atualizando
* offline
* erro

---

# Relacionamentos

Uma conversa possui muitas mensagens.

Uma mensagem pertence a uma conversa.

Uma mensagem pode possuir vários anexos.

Uma mensagem pode responder outra mensagem.

Uma mensagem pode ter origem encaminhada.

Uma mensagem pode possuir várias reações.

Uma mensagem pode possuir uma ou mais descrições de IA.

Um usuário pode participar de várias conversas.

Uma configuração pertence ao dispositivo local.

---

# Cache Local

O cache local deverá armazenar:

* conversas recentes;
* mensagens carregadas;
* anexos baixados;
* descrições geradas por IA;
* preferências de leitura;
* estado de foco quando aplicável.

O cache não deverá armazenar:

* chave de API em texto;
* senhas;
* códigos de login;
* dados sensíveis sem necessidade.

---

# Preservação de Foco

Para preservar o foco, cada mensagem deverá possuir identificador estável.

Ao atualizar uma lista, o aplicativo deverá tentar manter o foco no mesmo id de mensagem.

Se a mensagem não existir mais, o foco deverá ir para a mensagem mais próxima.

---

# Dados de IA

Resultados de IA poderão ser armazenados localmente para evitar novo envio da mesma imagem.

O usuário deverá poder apagar descrições geradas.

O usuário deverá poder limpar histórico de IA.

---

# Migrações

Toda alteração de estrutura persistida deverá possuir migração.

Migrações nunca poderão apagar dados do usuário sem confirmação.

---

# Privacidade

Armazenar apenas dados necessários para funcionamento do aplicativo.

Sempre respeitar as configurações do usuário relacionadas a IA, cache e mídia.
