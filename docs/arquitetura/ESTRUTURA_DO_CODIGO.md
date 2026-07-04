# Estrutura do Código

## Objetivo

Definir a organização interna do código do Comunica-CIATA.

Este documento serve como guia para manter o projeto limpo, modular, acessível e fácil de manter.

---

# Princípios

O código deverá seguir estes princípios:

* separação de responsabilidades;
* nomes claros em português;
* baixo acoplamento;
* componentes reutilizáveis;
* acessibilidade desde a base;
* testes desde o início;
* documentação atualizada.
* multiidiomas 

---

# Estrutura Geral

```text
client-ios/
├── ComunicaCIATA/
│   ├── Aplicativo/
│   ├── Recursos/
│   ├── Nucleo/
│   ├── Funcionalidades/
│   ├── Componentes/
│   ├── Servicos/
│   ├── Persistencia/
│   ├── Acessibilidade/
│   ├── Configuracoes/
│   └── Utilitarios/
│
└── Testes/
```

---

# Aplicativo

Contém o ponto de entrada e configurações globais do app.

```text
Aplicativo/
├── ComunicaCIATAApp.swift
├── AmbienteAplicativo.swift
├── RoteadorAplicativo.swift
└── InjetorDependencias.swift
```

Responsabilidades:

* iniciar o app;
* configurar dependências;
* controlar estado global;
* definir rotas principais.

---

# Nucleo

Contém modelos e tipos centrais.

```text
Nucleo/
├── Modelos/
├── Enums/
├── Protocolos/
└── Erros/
```

Exemplos:

```text
Mensagem.swift
Conversa.swift
Usuario.swift
Anexo.swift
TipoMensagem.swift
EstadoEnvio.swift
PerfilLeitura.swift
ErroAplicativo.swift
```

---

# Funcionalidades

Cada funcionalidade terá sua própria pasta.

```text
Funcionalidades/
├── Login/
├── Conversas/
├── Conversa/
├── Configuracoes/
├── InteligenciaArtificial/
├── Midia/
└── Pesquisa/
```

Cada funcionalidade poderá conter:

```text
Views/
ViewModels/
Modelos/
Componentes/
Servicos/
```

---

# Componentes

Componentes reutilizáveis de interface.

```text
Componentes/
├── BarraNavegacaoAcessivel.swift
├── CampoPesquisaAcessivel.swift
├── ItemConversaView.swift
├── ItemMensagemView.swift
├── CabecalhoDataView.swift
├── BotaoAcessivel.swift
├── AlternadorConfiguracao.swift
└── EstadoVazioView.swift
```

Regra:

Todo componente deverá nascer com acessibilidade definida.

---

# Serviços

Serviços compartilhados.

```text
Servicos/
├── ServicoTelegram.swift
├── ServicoIA.swift
├── ServicoAudio.swift
├── ServicoNotificacoes.swift
├── ServicoArquivos.swift
├── ServicoKeychain.swift
└── ServicoLogs.swift
```

Serviços deverão expor protocolos sempre que possível.

Exemplo:

```swift
protocol ServicoIAProtocol {
    func descreverImagem(_ imagem: DadosImagem) async throws -> DescricaoIA
}
```

---

# Persistência

Responsável por cache e armazenamento local.

```text
Persistencia/
├── BancoLocal.swift
├── RepositorioConversas.swift
├── RepositorioMensagens.swift
├── RepositorioConfiguracoes.swift
└── Migracoes/
```

Regra:

Chaves de API nunca serão persistidas aqui.

---

# Acessibilidade

Centraliza lógica relacionada ao VoiceOver.

```text
Acessibilidade/
├── ConstrutorRotuloMensagem.swift
├── ConstrutorRotuloConversa.swift
├── AcoesMensagemVoiceOver.swift
├── GerenciadorFoco.swift
├── PerfilLeituraAplicado.swift
└── AnunciadorAcessibilidade.swift
```

Responsabilidades:

* montar rótulos acessíveis;
* controlar ações do rotor;
* preservar foco;
* emitir anúncios;
* aplicar perfis de leitura.

---

# Configurações

```text
Configuracoes/
├── ConfiguracoesUsuario.swift
├── ConfiguracoesAcessibilidade.swift
├── ConfiguracoesIA.swift
└── ConfiguracoesPrivacidade.swift
```

---

# Utilitários

Funções auxiliares sem regra de negócio pesada.

```text
Utilitarios/
├── FormatadorData.swift
├── FormatadorArquivo.swift
├── ValidadorTelefone.swift
├── ExtensoesSwiftUI.swift
└── Constantes.swift
```

---

# MVVM

O projeto utilizará MVVM.

## View

Responsável por:

* interface;
* acessibilidade visual;
* interação com usuário.

Não deverá conter regra de negócio pesada.

## ViewModel

Responsável por:

* estado da tela;
* ações do usuário;
* comunicação com serviços;
* adaptação de modelos para a interface.

## Service

Responsável por:

* integração externa;
* TDLib;
* IA;
* Keychain;
* arquivos;
* notificações.

---

# Injeção de Dependências

Dependências serão centralizadas no `InjetorDependencias`.

Objetivos:

* facilitar testes;
* evitar instâncias globais espalhadas;
* permitir mocks.

---

# Nomenclatura

Usar português brasileiro.

Exemplos:

```text
TelaConversasView
ConversasViewModel
ServicoTelegram
RepositorioMensagens
ConstrutorRotuloMensagem
GerenciadorFoco
```

Evitar nomes genéricos:

```text
Manager
Helper
Data
Info
Thing
```

---

# Acessibilidade no Código

Toda `View` deverá responder:

* qual é o rótulo acessível;
* qual é o valor;
* qual é a dica;
* quais ações estão disponíveis;
* como o foco é preservado;
* como se comporta com Dynamic Type.

---

# Logs

Logs deverão ser mínimos e seguros.

Nunca registrar:

* mensagens;
* chaves;
* tokens;
* imagens;
* áudios;
* documentos;
* números de telefone completos.

---

# Testes

Estrutura sugerida:

```text
Testes/
├── TestesUnitarios/
├── TestesAcessibilidade/
├── TestesServicos/
├── TestesViewModels/
└── Mocks/
```

Prioridades:

* construção de rótulos do VoiceOver;
* perfis de leitura;
* preservação de foco;
* serviços de IA;
* configurações;
* mapeamento TDLib.

---

# Critérios de Aceite

A estrutura será considerada adequada quando:

* pastas estiverem organizadas;
* nomes estiverem em português;
* views não contiverem regra pesada;
* serviços tiverem protocolos;
* acessibilidade tiver camada própria;
* testes conseguirem usar mocks;
* chaves forem protegidas;
* documentação refletir o código real.
