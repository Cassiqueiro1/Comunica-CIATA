Mensagem
Objetivo

Definir o comportamento visual, funcional e acessível de cada mensagem exibida no Comunica-CIATA.

A mensagem é o principal componente do aplicativo. Por isso, sua implementação deverá priorizar clareza, velocidade de navegação, preservação de foco e ações acessíveis.

Princípio Central

Cada mensagem deverá ser percebida pelo usuário como um único objeto.

O VoiceOver não deverá focar separadamente remetente, horário, texto, reações, status ou botões internos.

As ações deverão estar disponíveis por ações personalizadas do VoiceOver.

Perfis de Leitura

O usuário poderá escolher o nível de feedback das mensagens.

Resumido

Lê apenas o essencial.

Exemplo:

"João. Vou chegar às nove."

Detalhado

Lê remetente, horário, tipo, conteúdo, estado e informações relevantes.

Exemplo:

"João. Hoje às 14 horas e 35 minutos. Mensagem de texto. Vou chegar às nove. Entregue."

Personalizado

Permite escolher individualmente quais informações serão anunciadas.

Opções:

Remetente.
Horário.
Data.
Tipo da mensagem.
Conteúdo.
Estado de envio.
Reações.
Encaminhamento.
Edição.
Resposta.
Nome do arquivo.
Tamanho do arquivo.
Duração de áudio ou vídeo.
Descrição de imagem.
Texto extraído por OCR.
Ordem de Leitura

A ordem padrão será:

Remetente.
Horário.
Contexto.
Tipo.
Conteúdo.
Estado.
Reações.

No modo personalizado, essa ordem poderá ser ajustada futuramente.

Conversas Privadas

Em conversas privadas, o remetente poderá ser omitido no modo resumido quando o contexto estiver claro.

Exemplo:

"Vou chegar às nove."

No modo detalhado:

"João. Hoje às 14 horas e 35 minutos. Vou chegar às nove."

Grupos

Em grupos, o remetente deverá ser anunciado sempre que:

a mensagem for a primeira do grupo;
o remetente mudar;
houver intervalo significativo entre mensagens;
o usuário estiver no modo detalhado.

Exemplo:

"Maria. Reunião confirmada."

Canais

Em canais, priorizar:

nome do canal;
data;
conteúdo;
tipo de mídia.

Exemplo:

"Canal CIATA. Hoje às 10 horas. Publicação: inscrições abertas."

Mensagem de Texto
Resumido

"João. Tudo certo."

Detalhado

"João. Hoje às 14 horas e 20 minutos. Mensagem de texto. Tudo certo. Lida."

Ações
Responder.
Reagir.
Copiar texto.
Encaminhar.
Compartilhar.
Editar, quando permitido.
Excluir.
Informações.
Traduzir.
Ler novamente.
Mensagem de Áudio
Resumido

"João. Áudio de 35 segundos."

Detalhado

"João. Hoje às 10 horas. Áudio de 35 segundos. Não reproduzido."

Estados
Não reproduzido.
Reproduzindo.
Pausado.
Reproduzido.
Baixando.
Erro ao baixar.
Ações
Reproduzir.
Pausar.
Avançar 10 segundos.
Voltar 10 segundos.
Alterar velocidade.
Transcrever.
Responder.
Reagir.
Encaminhar.
Compartilhar.
Excluir.
Informações.
Mensagem de Imagem
Resumido

"Ana. Imagem."

Detalhado

"Ana. Hoje às 16 horas. Imagem. Descrição não disponível."

Com descrição:

"Ana. Hoje às 16 horas. Imagem. Descrição: sala com mesa, cadeiras e janela ao fundo."

Ações
Abrir imagem.
Descrever imagem com IA.
Extrair texto da imagem.
Perguntar sobre a imagem.
Salvar.
Responder.
Reagir.
Encaminhar.
Compartilhar.
Excluir.
Informações.
Privacidade

Nenhuma imagem será enviada para IA automaticamente.

Antes do envio, o aplicativo deverá informar o provedor selecionado.

Exemplo:

"Esta imagem será enviada para OpenAI para descrição. Deseja continuar?"

Mensagem de Vídeo
Resumido

"Carlos. Vídeo de 1 minuto."

Detalhado

"Carlos. Hoje às 18 horas. Vídeo de 1 minuto e 12 segundos. Não reproduzido."

Ações
Reproduzir.
Pausar.
Descrever primeiro quadro com IA.
Extrair texto do primeiro quadro.
Salvar.
Responder.
Reagir.
Encaminhar.
Compartilhar.
Excluir.
Informações.
Mensagem de Documento
Resumido

"Documento. Relatório.pdf."

Detalhado

"Maria. Hoje às 11 horas. Documento. Relatório.pdf. 2 megabytes. Baixado."

Estados
Não baixado.
Baixando.
Baixado.
Erro no download.
Ações
Abrir.
Baixar.
Salvar em Arquivos.
Compartilhar.
Encaminhar.
Responder.
Reagir.
Excluir.
Informações.
Sticker
Resumido

"Sticker."

Detalhado

"João. Hoje às 13 horas. Sticker. Descrição não disponível."

Ações
Descrever com IA.
Responder.
Reagir.
Encaminhar.
Compartilhar.
Excluir.
GIF
Resumido

"GIF."

Detalhado

"Maria. Hoje às 13 horas. GIF animado. Descrição não disponível."

Ações
Descrever com IA.
Responder.
Reagir.
Encaminhar.
Compartilhar.
Excluir.
Mensagem Respondida

Quando uma mensagem for resposta de outra, o VoiceOver deverá informar o contexto antes do conteúdo principal.

Resumido

"Respondendo João: chego em dez minutos. Maria: combinado."

Detalhado

"Maria. Hoje às 15 horas. Respondendo à mensagem de João: chego em dez minutos. Mensagem de texto: combinado."

Ações
Ir para mensagem original.
Voltar para resposta.
Responder.
Reagir.
Encaminhar.
Compartilhar.
Excluir.
Mensagem Encaminhada
Resumido

"Encaminhada de Canal Notícias. Atualização publicada."

Detalhado

"João. Hoje às 17 horas. Mensagem encaminhada de Canal Notícias. Atualização publicada."

Ações

As ações deverão seguir o tipo original da mensagem.

Mensagem Editada
Resumido

"Reunião às quinze horas. Editada."

Detalhado

"Maria. Hoje às 12 horas. Mensagem de texto. Reunião às quinze horas. Editada."

Mensagem Apagada
VoiceOver

"Mensagem apagada."

Regras

Não exibir ações inúteis.

Permitir apenas informações quando aplicável.

Reações
Resumido

"Duas reações."

Detalhado

"Duas reações: positivo e coração."

Quando suportado:

"Reagiram: João com positivo, Maria com coração."

Ações
Reagir.
Ver reações.
Remover minha reação.
Estados de Envio

Estados possíveis:

Enviando.
Enviada.
Entregue.
Lida.
Erro ao enviar.
Exemplo

"Erro ao enviar. Ative para tentar novamente."

Agrupamento Visual

Mensagens consecutivas do mesmo remetente poderão ser agrupadas visualmente.

Entretanto, cada mensagem continuará sendo um único elemento acessível independente.

Nunca fundir múltiplas mensagens em um único foco do VoiceOver.

Cabeçalhos de Data

A lista de mensagens será dividida por cabeçalhos.

Exemplos:

Hoje

Ontem

02 de julho de 2026

Somente esses separadores deverão usar trait de cabeçalho.

Preservação de Foco

Ao receber novas mensagens, o aplicativo não deverá mover o foco se o usuário estiver lendo mensagens antigas.

O foco deverá permanecer na mensagem selecionada.

Caso a mensagem selecionada seja atualizada, o foco deverá continuar nela.

Caso a mensagem seja removida, o foco deverá ir para a mensagem mais próxima.

Indicador de Novas Mensagens

Quando houver mensagens abaixo da posição atual:

"5 novas mensagens. Ativar para ir para a primeira nova mensagem."

Ao ativar, posicionar o foco na primeira mensagem não lida.

Atualizações de Estado

Alterações como entregue, lida, baixado ou reproduzido não devem interromper a leitura atual.

Essas informações serão lidas apenas quando o usuário focar novamente a mensagem, salvo erros importantes.

Ações Personalizadas do VoiceOver

Ordem padrão:

Responder.
Reagir.
Encaminhar.
Compartilhar.
Copiar ou salvar.
Editar, quando permitido.
Excluir.
Informações.
Ler novamente.

A ordem poderá variar apenas quando o tipo da mensagem exigir.

Teclado Bluetooth

Atalhos planejados:

R: responder.

F: encaminhar.

C: copiar.

S: compartilhar.

Delete: excluir.

Espaço: reproduzir ou pausar áudio/vídeo.

I: informações.

E: editar.

Linha Braille

O conteúdo da mensagem deverá ser exposto em texto limpo.

Evitar símbolos visuais sem descrição textual.

Estados importantes deverão ser representados por texto.

IA e OCR

A IA poderá ser usada para:

descrever imagens;
extrair texto de imagens;
descrever primeiro quadro de vídeo;
resumir conteúdo visual;
responder perguntas sobre uma imagem.

O usuário sempre deverá iniciar a ação.

O resultado poderá ser salvo localmente como descrição da mensagem.

Erros

Erros deverão informar o problema e a próxima ação.

Exemplo:

"Não foi possível baixar o áudio. Verifique a conexão. Ação disponível: tentar novamente."

Performance

Mensagens devem ser carregadas de forma incremental.

A lista deve suportar conversas longas sem travamentos.

O uso de VoiceOver não deve degradar a rolagem ou atrasar foco.

Critérios de Aceite

Uma mensagem só estará pronta quando:

for um único elemento acessível;
possuir leitura correta nos modos resumido e detalhado;
respeitar configurações personalizadas;
possuir ações do rotor;
preservar foco em atualizações;
funcionar com teclado Bluetooth;
funcionar com linha Braille;
informar estados sem depender de ícones;
suportar Dynamic Type;
não interromper o usuário desnecessariamente;
passar nos testes manuais do CIATA.