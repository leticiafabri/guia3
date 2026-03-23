struct ResultadoOperacao<T, E>{
    var sucesso: T?
    var erro: E?


    init ( sucesso: T) {
        self.sucesso = sucesso
        self.erro = nil
    }

    init ( erro: E) {
        self.sucesso = nil
        self.erro = erro
    }
}

func ConverterArray(array: [String]) -> [ResultadoOperacao<Int, String>] {

    var resultadoConversao: [ResultadoOperacao<Int, String>] = []

    for item in array {
        if let valorConvertido = Int(item) {
            resultadoConversao.append(ResultadoOperacao(sucesso: valorConvertido))
        } else {
            resultadoConversao.append(ResultadoOperacao(erro: "Erro ao converter valor: \(item)"))
        }
    }
    return resultadoConversao
}