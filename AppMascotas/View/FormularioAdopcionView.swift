//
//  FormularioAdopcionView.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//
import SwiftUI

struct FormularioAdopcionView: View {

    @State private var nombre = ""
    @State private var telefono = ""
    @State private var direccion = ""
    @State private var motivo = ""

    var body: some View {

        ScrollView {

            VStack(spacing: 20) {

                Text("Solicitud de Adopción")
                    .tituloPrincipal()

                CustomTextField(
                    placeholder: "Nombre completo",
                    texto: $nombre
                )

                CustomTextField(
                    placeholder: "Teléfono",
                    texto: $telefono
                )

                CustomTextField(
                    placeholder: "Dirección",
                    texto: $direccion
                )
                
                ZStack(alignment: .topLeading) {
                    if motivo.isEmpty {
                        Text("¿Por qué deseas adoptar?")
                            .foregroundColor(Color.gray.opacity(0.5))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                    }
                    
                    TextEditor(text: $motivo)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 8)
                        .scrollContentBackground(.hidden)
                }
                .frame(height: 150)
                .background(Color("CardBackground"))
                .cornerRadius(18)

                Button {

                } label: {

                    Text("Enviar Solicitud")
                }
                .botonPrincipal()
            }
            .padding()
        }
        .background(
            Color("Background"))
        .navigationTitle("Adopción")
    }
}

#Preview {
    NavigationStack {
        FormularioAdopcionView()
    }
}
