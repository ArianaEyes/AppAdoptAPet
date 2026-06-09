//
//  SearchBar.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct SearchBar: View {

    @Binding var texto: String

    var body: some View {

        HStack {

            Image(systemName: "magnifyingglass")

            TextField(
                "Buscar mascota",
                text: $texto
            )
        }
        .padding()
        .background(Color("CardBackground"))
        .cornerRadius(15)
    }
}
