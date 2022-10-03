//
// Created by João Dubiela on 02/10/22.
//

import Foundation

class CompraNacional: Compra {

    var Estado: String

    init(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Estado: String) {
        self.Estado = Estado
        super.init(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor)
    }

    override func escrituracao() {
        print("\(getValorTotal()) foi adicionado ao estoque.")
        print("\(getValorTotal()) foi registrado na tesouraria para \(Fornecedor).")
    }
}
