//
//  HeaderView.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//
import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading,
                   spacing: 6) {
                
                HStack () {
                    Text("Encuentra un nuevo amigo")
                        .font(
                            .system(
                                size: 28,
                                weight: .bold,
                                design: .rounded
                            )
                        )
                    Image(systemName: "pawprint.fill")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .foregroundColor(Color("Primary"))
                }
                
                Text("Muchas mascotas esperan un hogar")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 55))
                .foregroundColor(
                    Color("Primary")
                )
        }
    }
}

#Preview {
    
    HeaderView()
        .padding()
}
