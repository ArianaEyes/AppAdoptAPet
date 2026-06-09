//
//  MascotaCard.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct MascotaCard: View {
    @State private var esFavorito = false
    let mascota: Mascota
    
    var body: some View {
        
        VStack(alignment: .leading,
               spacing: 0) {
            
            ZStack(alignment: .topTrailing) {
                
                Image(mascota.imagen)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 190)
                    .clipped()
                
                Button {

                    esFavorito.toggle()

                } label: {

                    Image(systemName: esFavorito ? "heart.fill" : "heart")
                        .foregroundColor(esFavorito ? .red : .white)
                        .frame(width: 40, height: 40)
                        .background(
                            Color.black.opacity(0.25)
                        )
                        .clipShape(Circle())
                }
                .padding(12)
            }
            
            VStack(alignment: .leading,
                   spacing: 10) {
                
                Text(mascota.nombre)
                    .font(
                        .system(
                            size: 22,
                            weight: .bold,
                            design: .rounded
                        )
                    )
                
                HStack {
                    
                    Label(
                        mascota.edad,
                        systemImage: "pawprint.fill"
                    )
                    
                    Spacer()
                    
                    Text(mascota.genero)
                }
                .font(.caption)
                .foregroundColor(.gray)
                
                HStack {
                    
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(
                            Color("Primary")
                        )
                    
                    Text(mascota.ubicacion)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
        .cardBlanca()
    }
}

#Preview {
    
    MascotaCard(
        mascota: mascotasData[0]
    )
    .padding()
}
