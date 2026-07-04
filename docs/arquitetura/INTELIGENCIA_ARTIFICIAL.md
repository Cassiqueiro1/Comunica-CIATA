# Inteligência Artificial

## Objetivo

Definir a arquitetura de integração com provedores de IA no Comunica-CIATA.

A IA será usada para ampliar acessibilidade, especialmente em imagens, vídeos, documentos e áudios.

---

# Princípios

A IA é opcional.

A IA deve ser iniciada pelo usuário.

Nenhum conteúdo será enviado automaticamente.

O usuário sempre deverá saber qual provedor será utilizado.

---

# Provedores

Provedores previstos:

* OpenAI.
* Google Gemini.

Novos provedores poderão ser adicionados futuramente.

---

# Serviço de IA

Será criada uma camada comum:

ServicoIA

Responsabilidades:

* validar chave de API;
* descrever imagem;
* extrair texto de imagem;
* descrever primeiro quadro de vídeo;
* transcrever áudio, quando suportado;
* resumir conteúdo;
* responder perguntas sobre imagem;
* tratar erros;
* registrar resultado localmente, quando permitido.

---

# Contrato Comum

A interface não deverá conhecer diretamente OpenAI ou Gemini.

Fluxo correto:

Interface

↓

ServicoIA

↓

Provedor configurado

↓

Resultado acessível

---

# Chaves de API

As chaves serão inseridas pelo usuário.

As chaves deverão ser armazenadas no Keychain do iOS.

Nunca armazenar chaves em:

* UserDefaults;
* banco local;
* arquivos de texto;
* logs;
* mensagens de erro.

---

# Ações Previstas

## Descrever imagem

Entrada:

* imagem recebida;
* prompt padrão;
* idioma do usuário.

Saída:

* descrição textual acessível.

## Extrair texto de imagem

Entrada:

* imagem recebida.

Saída:

* texto reconhecido;
* opção para copiar.

## Perguntar sobre imagem

Entrada:

* imagem;
* pergunta do usuário.

Saída:

* resposta textual.

## Descrever vídeo

Entrada:

* primeiro quadro ou miniatura.

Saída:

* descrição textual.

## Transcrever áudio

Entrada:

* áudio recebido.

Saída:

* texto transcrito.

## Resumir conteúdo

Entrada:

* texto longo;
* mensagens selecionadas;
* OCR;
* transcrição.

Saída:

* resumo textual.

---

# Prompts

O aplicativo poderá oferecer estilos de descrição:

* Objetivo.
* Detalhado.
* Pessoa cega.
* Técnico.
* Personalizado.

## Prompt Pessoa Cega

Deverá priorizar:

* pessoas;
* objetos;
* textos visíveis;
* posição dos elementos;
* ações;
* contexto;
* possíveis riscos;
* botões ou informações importantes em prints.

---

# Privacidade

Antes de enviar qualquer conteúdo, o aplicativo deverá informar:

* tipo de conteúdo;
* provedor;
* finalidade;
* possibilidade de conter dados sensíveis.

Exemplo:

"Esta imagem será enviada para OpenAI para gerar uma descrição. Deseja continuar?"

---

# Cache de Resultados

Resultados de IA poderão ser salvos localmente.

Objetivos:

* evitar reenviar o mesmo conteúdo;
* permitir leitura offline;
* reduzir custo para o usuário.

O usuário poderá apagar:

* descrições;
* OCR;
* transcrições;
* histórico de IA.

---

# Erros

Erros deverão ser traduzidos para mensagens compreensíveis.

Exemplo ruim:

"401 unauthorized."

Exemplo bom:

"Não foi possível usar a IA. Verifique se a chave de API está correta."

---

# Segurança

Nunca registrar imagens, chaves ou respostas sensíveis em logs.

Nunca enviar conteúdo sem ação do usuário.

Nunca usar chave embutida no aplicativo.

---

# Critérios de Aceite

A integração com IA estará pronta quando:

* aceitar OpenAI ou Gemini;
* validar chave;
* armazenar chave no Keychain;
* descrever imagem sob demanda;
* extrair texto sob demanda;
* informar o provedor antes do envio;
* respeitar configurações de privacidade;
* apresentar resultados de forma acessível;
* permitir apagar resultados salvos.
