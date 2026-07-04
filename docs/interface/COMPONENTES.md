# Componentes de Interface

## Objetivo

Definir os componentes reutilizáveis do Comunica-CIATA.

Todo componente deverá ser acessível, previsível e testável com VoiceOver.

---

# Princípios Gerais

Todo componente deve possuir:

* rótulo acessível;
* valor acessível quando necessário;
* dica acessível quando útil;
* estado acessível;
* ordem lógica de navegação;
* suporte a Dynamic Type;
* contraste adequado;
* área mínima de toque confortável;
* comportamento consistente em todo o aplicativo.

Nenhum componente poderá depender apenas de cor, ícone ou posição visual.

---

# Barra de Navegação

## Uso

Presente nas telas principais.

## Elementos

* Título da tela.
* Botão voltar, quando aplicável.
* Ações principais da tela.
* Menu adicional, quando necessário.

## VoiceOver

O título deverá ser anunciado como cabeçalho quando fizer sentido.

Exemplo:

"Conversas, cabeçalho."

Botões devem ter nomes claros.

Exemplos:

"Voltar."

"Nova conversa."

"Configurações."

Nunca usar rótulos genéricos como:

"Botão."

"Ícone."

"Mais."

---

# Campo de Pesquisa

## Uso

Pesquisar conversas, mensagens, contatos e configurações.

## VoiceOver

Ao receber foco:

"Pesquisar."

Quando houver contexto:

"Pesquisar conversas."

"Pesquisar mensagens nesta conversa."

## Comportamento

Resultados podem atualizar automaticamente, mas nunca devem mover o foco.

Deve existir botão acessível para limpar pesquisa.

Rótulo:

"Limpar pesquisa."

---

# Item de Conversa

## Uso

Representa uma conversa na lista inicial.

## Estrutura de leitura

A leitura deverá seguir esta ordem:

1. Nome da conversa.
2. Tipo da conversa.
3. Estado especial.
4. Quantidade de não lidas.
5. Última mensagem.
6. Horário.

## Exemplo

"Grupo CIATA. Grupo. 4 mensagens não lidas. Última mensagem de Ana: reunião confirmada. Hoje às 15 horas."

## Estados

* Lida.
* Não lida.
* Fixada.
* Silenciada.
* Arquivada.
* Mencionou você.
* Rascunho.
* Enviando.
* Erro de envio.

## Ações do VoiceOver

* Abrir.
* Marcar como lida.
* Marcar como não lida.
* Fixar.
* Desfixar.
* Silenciar.
* Ativar notificações.
* Arquivar.
* Excluir.
* Informações.

---

# Cabeçalho de Data

## Uso

Separar mensagens por dia dentro da conversa.

## Exemplos

Hoje

Ontem

02 de julho de 2026

## VoiceOver

Deve usar trait de cabeçalho.

Exemplo:

"Ontem, cabeçalho."

## Regras

Apenas cabeçalhos de data devem ser expostos como cabeçalhos dentro da lista de mensagens.

Não transformar remetentes, horários ou agrupamentos em cabeçalhos.

---

# Item de Mensagem

## Uso

Representa uma mensagem dentro da conversa.

## Regra principal

Cada mensagem deve ser um único elemento de acessibilidade.

Não dividir a mensagem em múltiplos controles navegáveis.

## Estrutura de leitura

1. Remetente, quando necessário.
2. Data ou horário.
3. Tipo da mensagem.
4. Conteúdo.
5. Estado.
6. Informações extras.

## Exemplo em conversa privada

"Hoje às 14 horas e 20 minutos. Mensagem de texto. Tudo certo por aqui. Lida."

## Exemplo em grupo

"Maria, hoje às 14 horas e 20 minutos. Mensagem de texto. Tudo certo por aqui."

## Ações comuns

* Responder.
* Reagir.
* Encaminhar.
* Compartilhar.
* Copiar.
* Selecionar.
* Editar, quando permitido.
* Excluir.
* Informações.
* Ler novamente.

---

# Mensagem de Texto

## VoiceOver

Deve ler o conteúdo integral, respeitando pontuação.

## Ações específicas

* Copiar texto.
* Traduzir.
* Resumir.
* Selecionar trecho, quando suportado futuramente.

---

# Mensagem de Áudio

## VoiceOver

Exemplo:

"João, áudio de 35 segundos. Não reproduzido. Recebido hoje às 10 horas."

## Ações específicas

* Reproduzir.
* Pausar.
* Voltar 10 segundos.
* Avançar 10 segundos.
* Alterar velocidade.
* Transcrever.
* Encaminhar.
* Compartilhar.
* Responder.
* Reagir.

## Estados

* Não reproduzido.
* Reproduzindo.
* Pausado.
* Reproduzido.
* Baixando.
* Erro ao baixar.

---

# Mensagem de Imagem

## VoiceOver

Exemplo:

"Imagem recebida de Ana, hoje às 16 horas. Descrição não disponível."

Quando houver descrição:

"Imagem recebida de Ana, hoje às 16 horas. Descrição: foto de uma sala com mesa, cadeiras e uma janela ao fundo."

## Ações específicas

* Abrir imagem.
* Descrever imagem com IA.
* Extrair texto da imagem.
* Perguntar sobre imagem.
* Salvar.
* Compartilhar.
* Encaminhar.
* Responder.
* Reagir.

## Regra de privacidade

Imagens nunca serão enviadas para IA automaticamente.

---

# Mensagem de Documento

## VoiceOver

Exemplo:

"Documento. Relatorio.pdf. 2 megabytes. Recebido hoje às 11 horas."

## Ações específicas

* Abrir.
* Baixar.
* Compartilhar.
* Encaminhar.
* Salvar em Arquivos.
* Responder.
* Reagir.

## Estados

* Não baixado.
* Baixando.
* Baixado.
* Erro no download.

---

# Mensagem de Vídeo

## VoiceOver

Exemplo:

"Vídeo de 1 minuto e 12 segundos. Recebido de Carlos. Descrição não disponível."

## Ações específicas

* Reproduzir.
* Descrever primeiro quadro com IA.
* Extrair texto do primeiro quadro.
* Compartilhar.
* Encaminhar.
* Salvar.
* Responder.
* Reagir.

---

# Mensagem de Sticker ou GIF

## VoiceOver

Exemplo:

"Sticker recebido. Descrição não disponível."

Quando houver emoji associado:

"Sticker. Emoji sorrindo."

## Ações específicas

* Descrever com IA.
* Encaminhar.
* Compartilhar.
* Responder.
* Reagir.

---

# Mensagem Respondida

## VoiceOver

Deve informar que a mensagem responde outra mensagem.

Exemplo:

"Maria, hoje às 15 horas. Respondendo João: chego em dez minutos. Mensagem: combinado."

## Ações específicas

* Ir para mensagem original.
* Voltar para resposta.
* Responder.
* Reagir.
* Encaminhar.
* Compartilhar.

---

# Mensagem Encaminhada

## VoiceOver

Exemplo:

"Mensagem encaminhada de Canal Notícias. Texto: atualização publicada hoje."

## Ações

As mesmas ações do tipo original da mensagem.

---

# Mensagem Editada

## VoiceOver

Exemplo:

"Mensagem de texto. Reunião às 15 horas. Editada."

## Ações

* Ver informações.
* Responder.
* Reagir.
* Copiar.
* Encaminhar.
* Compartilhar.

---

# Mensagem Apagada

## VoiceOver

Exemplo:

"Mensagem apagada."

Não deve exibir ações sem utilidade.

---

# Indicador de Novas Mensagens

## Uso

Aparece quando chegam mensagens abaixo da posição atual.

## VoiceOver

Exemplo:

"5 novas mensagens. Ativar para ir para a primeira mensagem nova."

## Comportamento

Ao ativar, mover para a primeira mensagem não lida.

Nunca mover o foco automaticamente sem ação do usuário.

---

# Campo de Composição

## Uso

Campo para escrever mensagens.

## VoiceOver

"Campo de mensagem."

Quando vazio:

"Campo de mensagem. Texto vazio."

Quando houver texto:

"Campo de mensagem. Editando."

## Requisitos

* Suporte a ditado.
* Suporte a Braille Screen Input.
* Suporte a colar texto.
* Suporte a teclado Bluetooth.
* Botão limpar quando necessário.

---

# Botão Enviar

## Estados

* Desabilitado sem conteúdo.
* Habilitado com conteúdo.
* Enviando.
* Erro.

## VoiceOver

"Enviar mensagem."

Quando enviando:

"Enviando mensagem."

Quando houver erro:

"Erro ao enviar. Tocar para tentar novamente."

---

# Botão Gravar Áudio

## VoiceOver

"Gravar áudio."

## Comportamento

Deve oferecer alternativa acessível ao gesto de segurar.

Modos possíveis:

* tocar uma vez para iniciar;
* tocar novamente para parar;
* confirmar envio;
* opção para cancelar.

Nunca exigir gesto contínuo impossível de controlar com VoiceOver.

---

# Menu de Ações

## Uso

Agrupar ações secundárias.

## VoiceOver

Rótulo claro e contextual.

Exemplo:

"Mais ações da conversa."

Evitar apenas:

"Mais."

---

# Alertas

## Regra

Alertas devem ser usados apenas quando a ação exigir confirmação real.

## Exemplo bom

"Excluir mensagem para todos?"

## Exemplo ruim

"Configuração salva."

Confirmações simples devem usar anúncio discreto, não alerta.

---

# Toast ou Aviso Discreto

## Uso

Informar ações concluídas.

## VoiceOver

Deve anunciar:

"Mensagem copiada."

"Configuração salva."

"Imagem descrita."

---

# Lista de Configurações

## Uso

Organizar preferências do aplicativo.

## Estrutura

Cada item deve ser um botão, alternador ou campo claramente identificado.

## Exemplo

"Acessibilidade."

"Inteligência Artificial."

"Privacidade."

---

# Alternador

## VoiceOver

Deve anunciar nome e estado.

Exemplo:

"Descrever imagens com IA, desativado."

"Descrever imagens com IA, ativado."

---

# Campo de Chave de API

## Uso

Inserir chave da OpenAI ou Google Gemini.

## Requisitos

* Campo seguro.
* Botão mostrar ou ocultar.
* Botão testar chave.
* Botão apagar chave.
* Armazenamento no Keychain.

## VoiceOver

"Chave de API da OpenAI. Campo seguro."

"Testar chave da OpenAI."

"Apagar chave da OpenAI."

---

# Seletor de Provedor de IA

## Opções

* Nenhum.
* OpenAI.
* Google Gemini.

## VoiceOver

"Provedor de inteligência artificial. OpenAI selecionado."

---

# Indicador de Carregamento

## VoiceOver

Deve explicar o que está acontecendo.

Exemplos:

"Carregando conversas."

"Baixando áudio."

"Gerando descrição da imagem."

Nunca usar apenas spinner visual.

---

# Estado Vazio

## Uso

Quando não houver conteúdo.

## Exemplos

"Nenhuma conversa encontrada."

"Nenhuma mensagem nesta conversa."

"Nenhum resultado para esta pesquisa."

## Requisito

Sempre oferecer próxima ação quando possível.

---

# Estado de Erro

## VoiceOver

Informar:

* o que falhou;
* possível causa;
* ação disponível.

Exemplo:

"Não foi possível carregar as conversas. Verifique sua conexão. Botão tentar novamente."

---

# Critérios de Aceite

Um componente só será considerado pronto quando:

* funcionar com VoiceOver;
* possuir rótulo correto;
* possuir estado correto;
* permitir ações necessárias pelo rotor;
* respeitar Dynamic Type;
* funcionar em modo claro e escuro;
* não depender apenas de cor;
* preservar foco em atualizações;
* tiver comportamento documentado;
* tiver sido testado em dispositivo real.
