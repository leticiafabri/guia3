func filtrarArray (array: [Int], criterio: (Int) -> Bool) {

    var arrayfiltrado: [Int] = []
    for item in array {
        if criterio(item) {
            arrayfiltrado.append(item)
        }
    }

    return arrayfiltrado
}


let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let numerosPares = filtrarArray(array: numeros) { $0 % 2 == 0 }
print(numerosPares)