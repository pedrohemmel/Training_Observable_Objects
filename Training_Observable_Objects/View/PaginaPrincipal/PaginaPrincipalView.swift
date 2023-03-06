//
//  ContentView.swift
//  Training_Observable_Objects
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 06/03/23.
//

import SwiftUI

struct PaginaPrincipal: View {
    @StateObject var carteiraPessoaViewModel = CarteiraPessoaViewModel(carteiraPessoa: CarteiraPessoaModel(nome: "Pedro Henrique", saldo: 0))
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Saldo atual")
                Text(String(format: "%.2f", carteiraPessoaViewModel.carteiraPessoa.saldo))
                
                Spacer()
                NavigationLink {
                    PaginaModificarSaldoView(carteiraPessoaViewModel: self.carteiraPessoaViewModel)
                } label: {
                    Text("Modificar saldo de \(carteiraPessoaViewModel.carteiraPessoa.nome)")
                }
                Spacer()
            }
        }
        .navigationTitle(carteiraPessoaViewModel.carteiraPessoa.nome)
        .padding()
    }
}
