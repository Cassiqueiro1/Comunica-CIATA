import Foundation

struct FormatadorData {
    static func cabecalho(_ data: Date) -> String {
        let calendario = Calendar.current

        if calendario.isDateInToday(data) {
            return "Hoje"
        }

        if calendario.isDateInYesterday(data) {
            return "Ontem"
        }

        let formatador = DateFormatter()
        formatador.locale = Locale(identifier: "pt_BR")
        formatador.dateFormat = "dd/MM/yyyy"
        return formatador.string(from: data)
    }

    static func hora(_ data: Date) -> String {
        let formatador = DateFormatter()
        formatador.locale = Locale(identifier: "pt_BR")
        formatador.dateFormat = "HH:mm"
        return formatador.string(from: data)
    }
}