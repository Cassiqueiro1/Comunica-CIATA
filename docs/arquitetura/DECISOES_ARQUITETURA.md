Decisões de Arquitetura
Objetivo

Registrar decisões técnicas importantes do Comunica-CIATA.

Este documento evita que decisões fundamentais sejam esquecidas, reabertas sem necessidade ou alteradas sem análise.

ADR-001: Idioma do projeto
Decisão

Todo o projeto utilizará português brasileiro.

Justificativa

O projeto nasce no CIATA e deverá ser compreendido por colaboradores brasileiros.

Consequências

Classes, arquivos, comentários, documentação, commits e issues deverão utilizar português brasileiro.

APIs externas poderão manter nomes em inglês quando necessário.

ADR-002: Interface em SwiftUI
Decisão

O cliente iOS será desenvolvido em SwiftUI.

Justificativa

SwiftUI permite desenvolvimento mais rápido, integração nativa com recursos modernos do iOS e boa compatibilidade com acessibilidade.

Consequências

Componentes deverão ser projetados desde o início com foco em VoiceOver, Dynamic Type, modo claro e modo escuro.

ADR-003: TDLib como camada Telegram
Decisão

Toda comunicação com o Telegram será feita pela TDLib.

Justificativa

A TDLib é a biblioteca oficial para criação de clientes Telegram completos.

Consequências

Não utilizar APIs não oficiais para acessar mensagens, arquivos, conversas ou autenticação.

ADR-004: Mensagem como elemento único
Decisão

Cada mensagem será exposta ao VoiceOver como um único elemento acessível.

Justificativa

Isso reduz ruído, acelera navegação e evita que o usuário precise atravessar remetente, horário, texto, status e botões separadamente.

Consequências

Ações da mensagem deverão ser fornecidas por ações personalizadas do VoiceOver.

ADR-005: Cabeçalhos apenas para datas
Decisão

Dentro da conversa, somente separadores de data usarão o trait Header.

Justificativa

Isso permite navegar rapidamente por dias usando o rotor sem poluir a lista de cabeçalhos.

Consequências

Remetentes, horários e agrupamentos visuais não deverão ser cabeçalhos.

ADR-006: Preservação de foco
Decisão

Atualizações automáticas nunca deverão mover o foco do VoiceOver quando o usuário estiver lendo conteúdo existente.

Justificativa

Perder o foco é um dos principais problemas de acessibilidade em aplicativos de mensagens.

Consequências

Novas mensagens, alterações de estado e downloads deverão atualizar a interface sem roubar foco.

ADR-007: IA sob demanda
Decisão

Recursos de IA serão sempre iniciados explicitamente pelo usuário.

Justificativa

Imagens, documentos e mensagens podem conter dados sensíveis.

Consequências

O aplicativo nunca enviará conteúdo para OpenAI, Gemini ou outro provedor sem confirmação ou configuração explícita do usuário.

ADR-008: Chaves no Keychain
Decisão

Chaves de API serão armazenadas no Keychain do iOS.

Justificativa

Chaves de API são credenciais sensíveis e não devem ficar em UserDefaults, banco local ou arquivos simples.

Consequências

A camada de configuração deverá usar serviço seguro de armazenamento.

ADR-009: Backend opcional
Decisão

O backend não será obrigatório para o MVP.

Justificativa

O objetivo inicial é entregar um cliente leve, direto e gratuito.

Consequências

Login, mensagens, cache e IA deverão funcionar localmente no iOS sempre que possível.

ADR-010: Documentação antes da implementação
Decisão

Funcionalidades relevantes deverão ter documentação antes da implementação.

Justificativa

Acessibilidade precisa ser definida antes do código, não corrigida depois.

Consequências

Pull requests que alterem comportamento acessível deverão atualizar a documentação correspondente.