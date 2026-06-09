//
//  DetalleMascotaView.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct DetalleMascotaView: View {

    let mascota: Mascota

    var body: some View {

        ScrollView(showsIndicators: false) {

            VStack(spacing: 0) {

                ZStack(alignment: .topTrailing) {

                    Image(mascota.imagen)
                        .resizable()
                        .frame(height: 380)
                        .frame(maxWidth: .infinity)
                        .clipped()

                    Button {

                    } label: {

                        Image(systemName: "heart.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 55, height: 55)
                            .background(
                                Color.red.opacity(0.85)
                            )
                            .clipShape(Circle())
                    }
                    .padding()
                }

                VStack(
                    alignment: .leading,
                    spacing: 22
                ) {


                    VStack(
                        alignment: .leading,
                        spacing: 6
                    ) {

                        Text(mascota.nombre)
                            .font(
                                .system(
                                    size: 34,
                                    weight: .bold,
                                    design: .rounded
                                )
                            )

                        Text("Busca una familia llena de amor ")
                            .foregroundColor(Color("Gray"))
                    }

                 
                

                    HStack(spacing: 12) {

                        InfoCard(
                            titulo: "Edad",
                            valor: mascota.edad,
                            icono: "calendar"
                        )

                        InfoCard(
                            titulo: "Peso",
                            valor: mascota.peso,
                            icono: "scalemass"
                        )

                        InfoCard(
                            titulo: "Sexo",
                            valor: mascota.genero,
                            icono: "pawprint"
                        )
                    }

                    VStack(
                        alignment: .leading,
                        spacing: 10
                    ) {

                        Text("Ubicación")
                            .font(.headline)

                        HStack {

                            Image(
                                systemName:
                                    "mappin.circle.fill"
                            )
                            .foregroundColor(
                                Color("Primary")
                            )

                            Text(
                                mascota.ubicacion
                            )
                        }
                    }


                    VStack(
                        alignment: .leading,
                        spacing: 10
                    ) {

                        Text("Sobre mí")
                            .font(.headline)

                        Text(
                            mascota.descripcion
                        )
                        .foregroundColor(Color("Gray"))
                    }

                    VStack(
                        alignment: .leading,
                        spacing: 10
                    ) {

                        Text("Vacunas")
                            .font(.headline)

                        ForEach(
                            mascota.vacunas,
                            id: \.self
                        ) { vacuna in

                            HStack {

                                Image(
                                    systemName:
                                        "checkmark.circle.fill"
                                )
                                .foregroundColor(
                                    .green
                                )

                                Text(vacuna)
                            }
                        }
                    }

               

                    VStack(
                        alignment: .leading,
                        spacing: 10
                    ) {

                        Text("Contacto")
                            .font(.headline)

                        Text(
                            mascota.contacto
                        )
                    }


                    NavigationLink {

                        FormularioAdopcionView()

                    } label: {

                        Text("Adoptar ahora")
                    }
                    .botonPrincipal()
                }
                .padding()
            }
        }
        .background(
            Color("Background")
        )
        .ignoresSafeArea(
            edges: .top
        )
        .navigationBarTitleDisplayMode(
            .inline
        )
    }
}

#Preview {

    NavigationStack {

        DetalleMascotaView(
            mascota: mascotasData[0]
        )
    }
}
