import Foundation

struct ConstrutorRotuloMensagem {
    static func rotulo(_ mensagem: Mensagem) -> String {
        let horario = FormatadorData.hora(mensagem.data)

        switch mensagem.tipo {
        case .texto:
            return "\(mensagem.remetente). Hoje às \(horario). \(mensagem.texto)."

        case .audio:
            return "\(mensagem.remetente). Hoje às \(horario). Áudio. \(mensagem.texto)."

        case .imagem:
            return "\(mensagem.remetente). Hoje às \(horario). Imagem. \(mensagem.texto)."

        case .documento:
            return "\(mensagem.remetente). Hoje às \(horario). Documento. \(mensagem.texto)."
        }
    }
}