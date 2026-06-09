//
//  CategoriaChip.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct CategoriaChip: View {

    let nombre: String

    var body: some View {

        
        Text(nombre)
            .font(.subheadline)
            .padding(.horizontal, 18)
            .padding(.vertical, 10)
            .background(Color("Secondary"))
            .cornerRadius(20)
    }
}
