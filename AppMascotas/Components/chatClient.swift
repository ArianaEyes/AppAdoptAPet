//
//  chatClient.swift
//  AppMascotas
//
//  Created by Alumno on 10/06/26.
//

import SwiftUI

struct chatClient: View {
    let nombre: String
    let mensaje: String
    
    var body: some View {
        HStack() {

            

            VStack(
                alignment: .trailing,
                spacing: 6
            ) {

                Text(nombre)
                    .font(.headline)
                    

                Text(mensaje)
                    .foregroundStyle(Color("Gray"))
                    .lineLimit(2)
            }
            Circle()
                .fill(Color("Primary"))
                .frame(width: 60, height: 60)
                .overlay {

                    Image(systemName: "pawprint.fill")
                        .foregroundColor(.white)
                }

            
        }
        .padding()
        .background(Color("CardBackground"))
        .cornerRadius(20)
        .shadow(
            color: .black.opacity(0.05),
            radius: 5
        )
    }
}

#Preview {
    chatClient(nombre: "Ruby", mensaje: "Ben sigue dispobile?")
}
