//
// Created by João Dubiela on 02/10/22.
//

import Foundation

struct CompraNacional: Compra {

    private(set) var Produto: String
    private(set) var Quantidade: Int
    private(set) var Valor: Double
    private(set) var Fornecedor: String
    private(set) var Extra: String = "None"
    private(set) var Extra1_tipo: String = ""
    private(set) var Extra1: String = ""
    private(set) var Extra2_tipo: String = ""
    private(set) var Extra2: Double = 0


    func getValorTotal() -> String {
        let ValorTotal = String(format: "%.2f", Float(Quantidade)*Float(Valor))
        return "R$\(ValorTotal)"
    }

    func escrituracao() {
        print("Compra de \(Produto).")
        print("\(getValorTotal()) foi adicionado ao estoque.")
        print("\(getValorTotal()) foi registrado na tesouraria para \(Fornecedor).")
    }

}
