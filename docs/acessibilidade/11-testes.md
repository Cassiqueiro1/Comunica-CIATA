Testes de Acessibilidade
Objetivo

Definir o protocolo de testes manuais e funcionais de acessibilidade do Comunica-CIATA.

Nenhuma funcionalidade deverá ser considerada concluída antes de passar por este roteiro.

Princípio

O aplicativo deverá ser testado como será usado na prática: com VoiceOver ativo, sem dependência visual e em dispositivo real.

O simulador pode ajudar durante o desenvolvimento, mas não substitui testes em iPhone físico.

Ambientes de Teste
Dispositivos

Testar, sempre que possível, em:

iPhone pequeno.
iPhone médio.
iPhone grande.
iPad, quando houver suporte.
Recursos

Testar com:

VoiceOver.
Dynamic Type.
Modo claro.
Modo escuro.
Reduzir Movimento.
Reduzir Transparência.
Teclado Bluetooth.
Braille Screen Input.
Linha Braille, quando disponível.
Critérios Gerais de Aprovação

Uma tela ou componente será aprovado quando:

todos os elementos tiverem rótulos claros;
a ordem de navegação for lógica;
não existirem elementos sem nome;
não existirem botões genéricos;
o foco não for perdido em atualizações;
o usuário conseguir executar todas as ações sem enxergar;
erros forem anunciados claramente;
não houver dependência exclusiva de cor;
Dynamic Type não quebrar a interface;
as ações do rotor funcionarem corretamente.
Testes Globais
TG-001: Abertura do aplicativo

Passos:

Ativar VoiceOver.
Abrir o Comunica-CIATA.
Verificar o primeiro foco.

Resultado esperado:

O foco deve cair em um elemento útil, como título da tela, botão principal ou lista de conversas.

Nunca deve cair em elemento vazio, invisível ou sem rótulo.

TG-002: Navegação por gestos

Passos:

Navegar pela tela usando deslizar para direita.
Navegar de volta usando deslizar para esquerda.

Resultado esperado:

A ordem deve ser previsível e equivalente à estrutura da tela.

TG-003: Ativação

Passos:

Focar cada botão.
Dar dois toques para ativar.

Resultado esperado:

Todo botão deve executar a ação anunciada.

TG-004: Dynamic Type

Passos:

Aumentar o tamanho do texto para o máximo.
Reabrir o aplicativo.
Navegar pelas telas principais.

Resultado esperado:

Nenhum conteúdo essencial deve sumir sem alternativa acessível.

TG-005: Modo claro e escuro

Passos:

Testar em modo claro.
Testar em modo escuro.

Resultado esperado:

Todos os elementos devem manter contraste adequado e leitura pelo VoiceOver.

Testes da Lista de Conversas
TC-001: Leitura de conversa

Passos:

Abrir a tela inicial.
Navegar até uma conversa.

Resultado esperado:

O VoiceOver deve anunciar nome, tipo, não lidas, última mensagem e horário conforme perfil de leitura configurado.

TC-002: Conversa não lida

Passos:

Receber mensagem em uma conversa.
Focar a conversa na lista.

Resultado esperado:

O VoiceOver deve informar a quantidade de mensagens não lidas.

TC-003: Ações da conversa

Passos:

Focar uma conversa.
Usar ações do VoiceOver.

Resultado esperado:

Devem estar disponíveis ações como abrir, marcar como lida, fixar, silenciar, arquivar e excluir.

TC-004: Pesquisa de conversas

Passos:

Focar o campo de pesquisa.
Digitar parte do nome de uma conversa.

Resultado esperado:

Os resultados devem atualizar sem roubar o foco.

Testes da Tela de Conversa
TM-001: Cabeçalhos de data

Passos:

Abrir uma conversa com mensagens de vários dias.
Navegar usando o rotor em Cabeçalhos.

Resultado esperado:

O VoiceOver deve navegar apenas entre separadores de data, como Hoje, Ontem e datas completas.

TM-002: Leitura de mensagem resumida

Passos:

Ativar perfil de leitura Resumido.
Focar mensagens de texto, áudio, imagem e documento.

Resultado esperado:

O VoiceOver deve anunciar apenas as informações essenciais.

TM-003: Leitura de mensagem detalhada

Passos:

Ativar perfil de leitura Detalhado.
Focar mensagens de texto, áudio, imagem e documento.

Resultado esperado:

O VoiceOver deve anunciar remetente, horário, tipo, conteúdo, estado e informações relevantes.

TM-004: Mensagem como único elemento

Passos:

Focar uma mensagem.
Deslizar para direita.

Resultado esperado:

O foco deve avançar para a próxima mensagem ou componente relevante.

Não deve parar separadamente em remetente, horário, texto, status ou reação.

TM-005: Ações da mensagem

Passos:

Focar uma mensagem.
Usar ações do VoiceOver.

Resultado esperado:

Devem aparecer ações como responder, reagir, encaminhar, compartilhar, copiar, excluir e informações, conforme o tipo da mensagem.

TM-006: Nova mensagem sem roubar foco

Passos:

Abrir conversa antiga.
Focar uma mensagem distante do fim.
Receber nova mensagem.

Resultado esperado:

O foco deve permanecer na mensagem atual.

O aplicativo pode anunciar discretamente que há nova mensagem, mas não deve rolar automaticamente.

TM-007: Indicador de novas mensagens

Passos:

Receber novas mensagens enquanto está lendo mensagens antigas.
Focar o indicador de novas mensagens.
Ativar o indicador.

Resultado esperado:

O VoiceOver deve anunciar a quantidade de novas mensagens.

Ao ativar, o foco deve ir para a primeira mensagem nova.

TM-008: Mensagem respondida

Passos:

Focar uma mensagem que responde outra.
Usar a ação Ir para mensagem original.
Usar Voltar para resposta.

Resultado esperado:

O usuário deve conseguir navegar entre resposta e mensagem original sem perder contexto.

Testes de Áudio
TA-001: Reproduzir áudio

Passos:

Focar uma mensagem de áudio.
Acionar Reproduzir.

Resultado esperado:

O áudio deve iniciar e o estado deve mudar para reproduzindo.

TA-002: Pausar áudio

Passos:

Durante reprodução, focar a mensagem.
Acionar Pausar.

Resultado esperado:

O áudio deve pausar e o estado deve ser anunciado corretamente.

TA-003: Gravação acessível

Passos:

Focar o botão gravar áudio.
Iniciar gravação.
Encerrar gravação.
Confirmar envio.

Resultado esperado:

A gravação deve funcionar sem exigir gesto contínuo de segurar.

Testes de Imagem e IA
TI-001: Imagem sem descrição

Passos:

Focar uma mensagem de imagem sem descrição.

Resultado esperado:

O VoiceOver deve anunciar que a descrição não está disponível.

TI-002: Descrever imagem com IA

Passos:

Focar uma imagem.
Acionar Descrever imagem com IA.
Confirmar envio para o provedor configurado.

Resultado esperado:

O aplicativo deve informar qual provedor será usado.

A imagem só poderá ser enviada após confirmação do usuário.

TI-003: Resultado da descrição

Passos:

Aguardar conclusão da descrição.
Focar novamente a imagem.

Resultado esperado:

O VoiceOver deve ler a descrição gerada.

TI-004: OCR

Passos:

Focar uma imagem com texto.
Acionar Extrair texto da imagem.

Resultado esperado:

O texto extraído deve ser apresentado de forma acessível e copiável.

Testes de Configurações
TCF-001: Perfil de leitura

Passos:

Abrir Configurações.
Alterar entre Resumido, Detalhado e Personalizado.
Voltar para uma conversa.

Resultado esperado:

As mensagens devem respeitar o perfil escolhido.

TCF-002: Chave de API

Passos:

Abrir configurações de Inteligência Artificial.
Inserir chave de API.
Testar chave.
Apagar chave.

Resultado esperado:

A chave deve ser armazenada de forma segura e nunca exibida em texto aberto sem ação explícita do usuário.

TCF-003: Privacidade da IA

Passos:

Desativar envio de imagens para IA.
Tentar descrever uma imagem.

Resultado esperado:

O aplicativo deve bloquear a ação ou pedir autorização conforme configuração.

Testes de Teclado Bluetooth
TK-001: Navegação

Passos:

Conectar teclado Bluetooth.
Navegar pelas mensagens.

Resultado esperado:

O usuário deve conseguir navegar e ativar ações principais sem tocar na tela.

TK-002: Atalhos

Passos:

Focar uma mensagem.
Usar atalhos planejados, como R, C, F, S, Delete e Espaço.

Resultado esperado:

Cada atalho deve executar a ação esperada ou informar que ainda não está disponível.

Testes de Linha Braille
TB-001: Leitura de mensagem

Passos:

Conectar linha Braille compatível.
Focar mensagens de diferentes tipos.

Resultado esperado:

A mensagem deve ser exibida em texto claro, sem depender de símbolos visuais.

TB-002: Estados

Passos:

Focar mensagens enviadas, lidas, com erro e com mídia.

Resultado esperado:

Estados importantes devem aparecer de forma textual.

Testes de Erro
TE-001: Falha de conexão

Passos:

Desativar internet.
Abrir lista de conversas ou tentar enviar mensagem.

Resultado esperado:

O erro deve ser anunciado com explicação e ação disponível.

TE-002: Falha de envio

Passos:

Enviar mensagem sem conexão.
Restaurar conexão.
Tentar reenviar.

Resultado esperado:

O usuário deve conseguir identificar a falha e reenviar.

Testes de Desempenho
TD-001: Conversa longa

Passos:

Abrir conversa com muitas mensagens.
Navegar com VoiceOver por vários minutos.

Resultado esperado:

Não deve haver travamentos perceptíveis, saltos de foco ou atrasos excessivos.

TD-002: Chegada de várias mensagens

Passos:

Permanecer em uma mensagem antiga.
Receber várias mensagens em sequência.

Resultado esperado:

O foco deve permanecer estável.

O indicador de novas mensagens deve atualizar corretamente.

Registro dos Testes

Cada teste deverá registrar:

data;
versão do aplicativo;
versão do iOS;
dispositivo;
recurso testado;
resultado;
observações;
responsável.
Classificação dos Problemas
Crítico

Impede o uso com VoiceOver.

Alto

Permite uso, mas com grande dificuldade.

Médio

Causa confusão ou perda de eficiência.

Baixo

Problema menor, sem bloqueio.

Critério de Liberação

Uma versão só poderá ser liberada quando:

não houver problemas críticos;
não houver problemas altos sem justificativa formal;
todos os fluxos principais funcionarem com VoiceOver;
mensagens forem totalmente navegáveis;
ações essenciais estiverem disponíveis;
foco for preservado;
IA respeitar privacidade;
documentação estiver atualizada.