# Arquitetura do Projeto

## Visão Geral

O Comunica-CIATA será dividido em módulos independentes.

O objetivo é separar completamente interface, regras de negócio e integrações.

## Estrutura

client-ios

Responsável por:

* Interface SwiftUI.
* VoiceOver.
* Navegação.
* Componentes visuais.

core

Responsável por:

* Modelos.
* Serviços.
* Persistência.
* Regras de negócio.
* Integração com TDLib.
* Integração com IA.

backend

Reservado para futuras funcionalidades.

Inicialmente poderá permanecer vazio.

docs

Documentação técnica.

Documentação funcional.

Padrões de acessibilidade.

Roadmap.

## Fluxo

Usuário

↓

Interface SwiftUI

↓

Camada de Serviços

↓

TDLib

↓

Telegram

## Persistência

Preferencialmente SwiftData.

Caso necessário, utilizar SQLite para armazenamento complementar.

## Comunicação

Toda comunicação com Telegram será realizada através da TDLib.

Não serão utilizadas APIs não oficiais.

## Inteligência Artificial

Será criada uma camada independente.

Nenhuma tela conhecerá diretamente OpenAI ou Gemini.

A interface utilizará apenas um contrato comum, permitindo adicionar novos provedores futuramente sem alterar as telas.

## Princípios arquiteturais

Separação de responsabilidades.

Baixo acoplamento.

Alta coesão.

Componentes reutilizáveis.

Testabilidade.

Documentação contínua.

Acessibilidade como requisito arquitetural e não como funcionalidade adicional.
