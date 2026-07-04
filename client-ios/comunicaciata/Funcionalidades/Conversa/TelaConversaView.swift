import SwiftUI

struct TelaConversaView: View {
    let titulo: String

    private let mensagens: [Mensagem] = [
        Mensagem(id: 1, remetente: "João", texto: "Bom dia, pessoal.", data: Date().addingTimeInterval(-90000), tipo: .texto, enviadaPorMim: false),
        Mensagem(id: 2, remetente: "Maria", texto: "Tudo certo para a reunião.", data: Date().addingTimeInterval(-86000), tipo: .texto, enviadaPorMim: false),
        Mensagem(id: 3, remetente: "Cássio", texto: "Perfeito.", data: Date(), tipo: .texto, enviadaPorMim: true),
        Mensagem(id: 4, remetente: "João", texto: "Descrição não disponível.", data: Date(), tipo: .imagem, enviadaPorMim: false),
        Mensagem(id: 5, remetente: "Maria", texto: "35 segundos. Não reproduzido.", data: Date(), tipo: .audio, enviadaPorMim: false)
    ]

    @State private var textoMensagem = ""

    var body: some View {
        VStack(spacing: 0) {
            List {
                ForEach(gruposPorData(), id: \.cabecalho) { grupo in
                    Section {
                        ForEach(grupo.mensagens) { mensagem in
                            linhaMensagem(mensagem)
                        }
                    } header: {
                        Text(grupo.cabecalho)
                            .accessibilityAddTraits(.isHeader)
                    }
                }
            }

            areaComposicao
        }
        .navigationTitle(titulo)
    }

    private func linhaMensagem(_ mensagem: Mensagem) -> some View {
        Text(textoVisual(mensagem))
            .padding(.vertical, 6)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel(ConstrutorRotuloMensagem.rotulo(mensagem))
            .accessibilityHint("Use ações para responder, reagir, encaminhar ou compartilhar.")
            .accessibilityAction(named: "Responder") {
                print("Responder \(mensagem.id)")
            }
            .accessibilityAction(named: "Reagir") {
                print("Reagir \(mensagem.id)")
            }
            .accessibilityAction(named: "Encaminhar") {
                print("Encaminhar \(mensagem.id)")
            }
            .accessibilityAction(named: "Compartilhar") {
                print("Compartilhar \(mensagem.id)")
            }
            .accessibilityAction(named: "Excluir") {
                print("Excluir \(mensagem.id)")
            }
    }

    private var areaComposicao: some View {
        HStack {
            TextField("Campo de mensagem", text: $textoMensagem)
                .textFieldStyle(.roundedBorder)
                .accessibilityLabel("Campo de mensagem")

            Button("Enviar") {
                textoMensagem = ""
            }
            .disabled(textoMensagem.isEmpty)
            .accessibilityLabel("Enviar mensagem")
        }
        .padding()
    }

    private func textoVisual(_ mensagem: Mensagem) -> String {
        switch mensagem.tipo {
        case .texto:
            return "\(mensagem.remetente): \(mensagem.texto)"
        case .audio:
            return "\(mensagem.remetente): Áudio"
        case .imagem:
            return "\(mensagem.remetente): Imagem"
        case .documento:
            return "\(mensagem.remetente): Documento"
        }
    }

    private func gruposPorData() -> [(cabecalho: String, mensagens: [Mensagem])] {
        let grupos = Dictionary(grouping: mensagens) { mensagem in
            FormatadorData.cabecalho(mensagem.data)
        }

        return grupos
            .map { (cabecalho: $0.key, mensagens: $0.value.sorted { $0.data < $1.data }) }
            .sorted { $0.mensagens.first?.data ?? Date() < $1.mensagens.first?.data ?? Date() }
    }
}
