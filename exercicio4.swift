protocol Desenhavel{
    func desenhar()
    var area: Double { get }
}


extension Desenhavel {
    func imprimirDescricao(){

        //pega o nome do tipo da struct que implementa o protocolo
        print("Tipo: \(type(of: self)), Área: \(area)")
    }
}


struct Circulo: Desenhavel {
    var area: Double

    func desenhar() {
        print("Desenhando")
    }
}

struct Retangulo: Desenhavel {
    var area: Double

    func desenhar() {
        print("Desenhando")
    }
}

func DesenharForma(formas: [Desenhavel]) {
    for forma in formas {
        forma.desenhar()
        forma.imprimirDescricao()
    }
}