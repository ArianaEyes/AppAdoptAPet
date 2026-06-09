//
//  CustomButton.swift
//  AppMascotas

import SwiftUI

struct CustomButton: View {
    
    let titulo: String
    
    var body: some View {
        
        Text(titulo)
            .botonPrincipal()
    }
}

#Preview {
    
    CustomButton(
        titulo: "Iniciar sesión"
    )
    .padding()
}
