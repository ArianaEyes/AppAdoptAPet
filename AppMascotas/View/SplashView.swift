//
//  SplashView.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct SplashView: View {

    @State private var irLogin = false

    var body: some View {

        if irLogin {

            LoginView()

        } else {

            ZStack {

                Color("Primary")
                    .ignoresSafeArea()

                VStack(spacing: 30) {

                    Image("logoMascotas")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)

                    Text("Pet Adopt")
                        .font(
                            .system(
                                size: 36,
                                weight: .bold,
                                design: .rounded
                            )
                        )
                        .foregroundColor(.white)

                    Text("Encuentra a tu mejor amigo")
                        .foregroundColor(.white.opacity(0.9))
                }
            }
            .onAppear {

                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 2
                ) {

                    withAnimation {
                        irLogin = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
