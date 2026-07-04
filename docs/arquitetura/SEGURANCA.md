# Segurança e Privacidade

## Objetivo

Definir regras de segurança, privacidade e proteção de dados do Comunica-CIATA.

---

# Princípios

Coletar o mínimo necessário.

Armazenar o mínimo necessário.

Nunca enviar conteúdo sem necessidade.

Nunca ocultar do usuário quando um conteúdo for enviado para terceiros.

---

# Dados Sensíveis

São considerados sensíveis:

* número de telefone;
* mensagens;
* imagens;
* áudios;
* vídeos;
* documentos;
* localização;
* contatos;
* chaves de API;
* descrições geradas por IA;
* textos extraídos por OCR.

---

# Chaves de API

Chaves de API deverão ser armazenadas exclusivamente no Keychain do iOS.

Nunca armazenar em:

* UserDefaults;
* banco local;
* arquivos;
* logs;
* analytics;
* crash reports.

---

# IA

Conteúdos enviados para IA podem conter dados sensíveis.

Por isso:

* envio deverá ser manual;
* provedor deverá ser informado;
* usuário deverá confirmar, salvo configuração explícita em contrário;
* histórico deverá poder ser apagado.

---

# Logs

Logs não poderão conter:

* texto de mensagens;
* imagens;
* caminhos de arquivos sensíveis;
* tokens;
* chaves;
* número de telefone completo;
* códigos de login;
* respostas completas de IA, salvo modo debug local e explícito.

---

# Cache

O cache deverá existir apenas para melhorar desempenho e acessibilidade.

O usuário deverá poder limpar:

* mensagens em cache, quando permitido;
* arquivos;
* imagens;
* áudios;
* documentos;
* descrições de IA;
* OCR;
* transcrições.

---

# Autenticação

O login será realizado pela TDLib.

O aplicativo não deverá armazenar senha ou código de autenticação manualmente.

Se houver verificação em duas etapas, o campo deverá ser seguro e acessível.

---

# Permissões do iOS

Permissões deverão ser solicitadas apenas quando necessárias.

Possíveis permissões:

* microfone;
* fotos;
* arquivos;
* notificações.

Cada solicitação deverá ter explicação clara.

---

# Ações Destrutivas

Devem exigir confirmação:

* excluir mensagem;
* limpar cache;
* apagar chave de API;
* encerrar sessão;
* apagar descrições de IA;
* remover arquivos locais.

---

# Compartilhamento

Ao compartilhar conteúdo, o usuário deverá entender o que será compartilhado.

Exemplo:

"Compartilhar imagem recebida de João."

---

# Política de Privacidade

Antes da publicação na App Store, deverá existir política de privacidade explicando:

* quais dados são processados;
* uso da TDLib;
* uso opcional de IA;
* armazenamento de chaves;
* cache local;
* exclusão de dados;
* contato do CIATA.

---

# App Store

O aplicativo deverá seguir as regras da App Store relacionadas a:

* conteúdo gerado por usuário;
* privacidade;
* dados sensíveis;
* contas;
* denúncia e bloqueio quando aplicável;
* segurança de credenciais.

---

# Critérios de Aceite

A segurança será considerada adequada quando:

* chaves forem salvas no Keychain;
* IA nunca enviar conteúdo automaticamente;
* logs não vazarem dados sensíveis;
* cache puder ser limpo;
* permissões tiverem explicação clara;
* ações destrutivas exigirem confirmação;
* política de privacidade estiver pronta antes da publicação.
