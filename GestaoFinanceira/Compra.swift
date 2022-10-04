//
// Created by João Dubiela on 26/09/22.
//

import Foundation

protocol Compra {

    var Produto: String { get }
    var Quantidade: Int { get }
    var Valor: Double { get }
    var Fornecedor: String { get }
    var Extra1_tipo: String { get } //País ou estado
    var Extra1: String { get } //Nome
    var Extra2_tipo : String { get } //Aliquota ou ICMS
    var Extra2: Double { get } //Valor

    func getValorTotal() -> String
    func escrituracao()
}