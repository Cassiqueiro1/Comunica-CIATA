import Foundation

struct Mensagem: Identifiable, Hashable {
    let id: Int64
    let remetente: String
    let texto: String
    let data: Date
    let tipo: TipoMensagem
    let enviadaPorMim: Bool
}