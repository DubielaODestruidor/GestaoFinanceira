//
//  main.swift
//  GestaoFinanceira
//
//  Created by João Dubiela on 26/09/22.
//
//

import Foundation

let fabrica = FabricaCompras()

print("\nCompra nacional")
let compraNacional = fabrica.criarCompraNacional(Produto: "Coca-Cola", Quantidade: 10, Valor: 5.0, Fornecedor: "Coca-Cola", Estado: "São Paulo")
compraNacional.escrituracao()

print("\nCompra nacional fora do estado")
let compraNacionalForaDoEstado = fabrica.criarCompraNacionalForaDoEstado(Produto: "Pote de Nutella 3KG", Quantidade: 1, Valor: 160, Fornecedor: "Food Service", Estado: "Minas Gerais", Aliquota: 18)
compraNacionalForaDoEstado.escrituracao()

print("\nCompra internacional")
let compraInternacional = fabrica.criarCompraInternacional(Produto: "iPhone 13", Quantidade: 1, Valor: 1000, Fornecedor: "Apple", Pais: "Estados Unidos", ImpostoDeImportacao: 60)
compraInternacional.escrituracao()
