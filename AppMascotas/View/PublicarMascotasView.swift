//
//  PublicarMascotasView.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//
import SwiftUI

struct PublicarMascotaView: View {

    @State private var nombre = ""
    @State private var edad = ""
    @State private var peso = ""
    @State private var descripcion = ""

    var body: some View {

        NavigationStack {

            ZStack {

                Color("Background")
                    .ignoresSafeArea()

                ScrollView {

                    VStack(spacing: 28) {

                        Image(systemName: "photo.badge.plus")
                            .font(.system(size: 90))
                            .foregroundColor(Color("Primary"))

                        Text("Publicar Mascota")
                            .tituloPrincipal()

                        Text("Ayuda a encontrar un hogar")
                            .subtituloPrincipal()

                        CustomTextField(
                            placeholder: "Nombre",
                            texto: $nombre
                        )

                        CustomTextField(
                            placeholder: "Edad",
                            texto: $edad
                        )

                        CustomTextField(
                            placeholder: "Peso",
                            texto: $peso
                        )
                        
                        ZStack(alignment: .topLeading) {
                            if descripcion.isEmpty {
                                Text("Descripción")
                                    .foregroundColor(Color.gray.opacity(0.5))
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 12)
                            }
                            
                            TextEditor(text: $descripcion)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 8)
                                .scrollContentBackground(.hidden)
                        }
                        .frame(height: 150)
                        .background(Color("CardBackground"))
                        .cornerRadius(18)


                        Button {

                        } label: {

                            Text("Publicar")
                        }
                        .botonPrincipal()
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 16)
                }
            }
            .navigationTitle("Publicar")
        }
    }
}

#Preview {
    PublicarMascotaView()
}
