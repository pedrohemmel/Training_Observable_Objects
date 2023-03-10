//
//  Training_Observable_ObjectsTests.swift
//  Training_Observable_ObjectsTests
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 06/03/23.
//

import SwiftUI
import XCTest
@testable import Training_Observable_Objects

final class Training_Observable_ObjectsTests: XCTestCase {

    override func setUpWithError() throws {
        print("Começou testes")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        print("Acabou testes")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        print("OI")
        @StateObject var carteiraPessoaViewModel = CarteiraPessoaViewModel(carteiraPessoa: CarteiraPessoaModel(nome: "Pedro Henrique", saldo: 10))

        carteiraPessoaViewModel.retiraSaldoCarteiraSaldo(qtdSaldo: 11.0)
        XCTAssert(carteiraPessoaViewModel.carteiraPessoa.saldo == 1)
    }

}
