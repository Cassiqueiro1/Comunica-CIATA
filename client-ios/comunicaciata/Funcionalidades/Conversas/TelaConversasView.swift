import SwiftUI

struct TelaConversasView: View {
    private let conversas: [Conversa] = [
        Conversa(id: 1, titulo: "Grupo CIATA", ultimaMensagem: "Reunião confirmada", naoLidas: 3, data: Date()),
        Conversa(id: 2, titulo: "João", ultimaMensagem: "Chego às nove", naoLidas: 0, data: Date()),
        Conversa(id: 3, titulo: "Canal Tecnologia Assistiva", ultimaMensagem: "Nova publicação disponível", naoLidas: 8, data: Date())
    ]

    var body: some View {
        NavigationStack {
            List(conversas) { conversa in
                NavigationLink {
                    TelaConversaView(titulo: conversa.titulo)
                } label: {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(conversa.titulo)
                            .font(.headline)

                        Text(conversa.ultimaMensagem)
                            .font(.body)

                        if conversa.naoLidas > 0 {
                            Text("\(conversa.naoLidas) não lidas")
                                .font(.caption)
                        }
                    }
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel(rotuloConversa(conversa))
                }
            }
            .navigationTitle("Conversas")
        }
    }

    private func rotuloConversa(_ conversa: Conversa) -> String {
        var partes: [String] = [conversa.titulo]

        if conversa.naoLidas > 0 {
            partes.append("\(conversa.naoLidas) mensagens não lidas")
        }

        partes.append("Última mensagem: \(conversa.ultimaMensagem)")

        return partes.joined(separator: ". ")
    }
}