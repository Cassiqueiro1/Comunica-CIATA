# Documento de Requisitos do Produto

## Nome

Comunica-CIATA

## Descrição

Cliente Telegram para iOS desenvolvido com foco absoluto em acessibilidade para usuários do VoiceOver.

## Público-alvo

* Pessoas cegas.
* Pessoas com baixa visão.
* Pessoas idosas.
* Usuários que preferem interfaces simples.
* Organizações que trabalham com acessibilidade.

## Objetivos

Criar uma experiência superior ao cliente oficial do Telegram em termos de acessibilidade.

Priorizar produtividade.

Eliminar obstáculos encontrados atualmente pelos usuários do VoiceOver.

Permitir integração opcional com Inteligência Artificial para descrição de imagens.

## Objetivos secundários

Arquitetura modular.

Código documentado.

Facilidade de manutenção.

Baixo consumo de memória.

Excelente desempenho.

## Escopo da primeira versão

* Login.
* Lista de conversas.
* Conversas.
* Envio de mensagens.
* Áudios.
* Fotos.
* Documentos.
* Configurações.
* Integração com IA.

## Fora do escopo inicial

Chamadas de voz.

Chamadas de vídeo.

Stories.

Mini Apps.

Bots avançados.

Transmissões ao vivo.

## Requisitos obrigatórios

Toda funcionalidade deverá ser totalmente utilizável utilizando apenas VoiceOver.

Nenhuma informação poderá depender exclusivamente de elementos visuais.

Todos os componentes deverão possuir rótulos acessíveis.

Toda atualização dinâmica deverá preservar o foco do VoiceOver.

Cabeçalhos de data deverão ser utilizados para facilitar a navegação.

Cada mensagem deverá representar um único elemento de acessibilidade.

As ações da mensagem deverão estar disponíveis através das ações personalizadas do VoiceOver.

## Integração com Inteligência Artificial

O aplicativo permitirá configurar:

* OpenAI.
* Google Gemini.

O usuário poderá armazenar sua chave de API de forma segura utilizando o Keychain do iOS.

Nenhuma imagem será enviada automaticamente.

Toda utilização da IA dependerá de autorização do usuário.

## Critérios de sucesso

Navegação totalmente funcional utilizando apenas gestos do VoiceOver.

Tempo mínimo para localizar mensagens antigas.

Leitura natural das conversas.

Arquitetura simples e documentada.

Publicação gratuita na App Store.
