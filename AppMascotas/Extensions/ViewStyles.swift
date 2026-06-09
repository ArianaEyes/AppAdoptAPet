//
//  ViewStyles.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

extension View {
    
    func tituloPrincipal() -> some View {
        self
            .font(
                .system(
                    size: 34,
                    weight: .bold,
                    design: .rounded
                )
            )
            .foregroundColor(.primary)
    }
    
    func subtituloPrincipal() -> some View {
        self
            .font(
                .system(
                    size: 16,
                    weight: .medium,
                    design: .rounded
                )
            )
            .foregroundColor(.gray)
    }
    
    func cardBlanca() -> some View {
        self
            .background(Color("CardBackground"))
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 28
                )
            )
            .shadow(
                color: .black.opacity(0.08),
                radius: 12,
                x: 0,
                y: 6
            )
    }
    
    func botonPrincipal() -> some View {
        self
            .font(
                .system(
                    size: 18,
                    weight: .bold,
                    design: .rounded
                )
            )
            .foregroundColor(.white)
            .frame(height: 58)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(
                    colors: [
                        Color("Primary"),
                        Color.orange
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 18
                )
            )
    }
    
    func textFieldStyle() -> some View {
        self
            .padding()
            .background(Color("CardBackground"))
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 16
                )
            )
            .shadow(
                color: .black.opacity(0.08),
                radius: 12,
                x: 0,
                y: 6
            )
    }
}
