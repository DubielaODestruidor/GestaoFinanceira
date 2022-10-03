//
// Created by João Dubiela on 03/10/22.
//

import Foundation

class FabricaCompras {

    func criarCompraNacional(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Estado: String) -> CompraNacional {
        return CompraNacional(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor, Estado: Estado)
    }

    func criarCompraNacionalForaDoEstado(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Estado: String, Aliquota: Double) -> NacionalForaDoEstado {
        return NacionalForaDoEstado(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor, Estado: Estado, Aliquota: Aliquota)
    }

    func criarCompraInternacional(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Pais: String, ImpostoDeImportacao: Double) -> CompraInternacional {
        return CompraInternacional(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor, Pais: Pais, ImpostoDeImportacao: ImpostoDeImportacao)
    }
}
