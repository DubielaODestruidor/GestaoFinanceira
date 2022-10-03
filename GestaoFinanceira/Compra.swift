//
// Created by João Dubiela on 26/09/22.
//

import Foundation

class Compra {

    var Produto: String
    var Quantidade: Int
    var Valor: Double
    var Fornecedor: String

    init(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String) {
        self.Produto = Produto
        self.Quantidade = Quantidade
        self.Valor = Valor
        self.Fornecedor = Fornecedor
    }

    func getValorTotal() {
        let ValorTotal = String(format: "%.2f", Float(Quantidade)*Float(Valor))
        print("R$\(ValorTotal)", terminator: "")
    }

    func escrituracao() {
        getValorTotal()
    }
}