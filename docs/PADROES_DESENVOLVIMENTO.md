# Padrões de Desenvolvimento

## Objetivo

Definir os padrões obrigatórios para todo o código-fonte do Comunica-CIATA.

Todos os colaboradores deverão seguir este documento.

---

# Idioma

Todo o projeto utilizará português brasileiro.

Inclui:

* nomes de classes;
* estruturas;
* enums;
* comentários;
* documentação;
* mensagens internas;
* commits;
* Issues.

Somente APIs externas poderão utilizar nomes em inglês quando tecnicamente necessário.

---

# Convenções

Classes

Exemplos:

Conversa

Mensagem

Usuario

Canal

Grupo

Imagem

Documento

Configuracao

ServicoTelegram

ServicoIA

PersistenciaLocal

GerenciadorCache

---

ViewModels

ConversaViewModel

MensagemViewModel

ConfiguracoesViewModel

LoginViewModel

---

Enums

TipoMensagem

EstadoMensagem

TipoConversa

TemaAplicativo

ProvedorIA

---

Protocolos

ServicoIAProtocol

ServicoTelegramProtocol

RepositorioMensagemProtocol

---

Arquivos

Cada arquivo deverá conter apenas uma responsabilidade principal.

---

Comentários

Explicar sempre o motivo.

Nunca comentar o óbvio.

---

Commits

Exemplos

Adiciona tela de login

Corrige leitura do VoiceOver

Implementa cache local

Melhora leitura das mensagens

---

Branches

main

desenvolvimento

funcionalidade/...

correcao/...

hotfix/...

---

Pull Requests

Todo Pull Request deverá informar:

Objetivo

Alterações realizadas

Impacto na acessibilidade

Critérios de teste

Riscos conhecidos

---

Documentação

Toda funcionalidade nova deverá atualizar a documentação correspondente antes do merge.
