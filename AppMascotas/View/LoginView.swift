//
//  LoginView.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//
import SwiftUI

struct LoginView: View {

    @StateObject private var vm = LoginViewModel()

    var body: some View {

        ZStack {

            Color("Background")
                .ignoresSafeArea()

            ScrollView {

                VStack(spacing: 30) {

                    Spacer()
                        .frame(height: 60)

                    Image("logoMascotas")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180)

                    VStack(spacing: 10) {

                        Text("Bienvenido")
                            .tituloPrincipal()

                        Text("Encuentra a tu compañero ideal")
                            .subtituloPrincipal()
                    }

                    VStack(spacing: 18) {

                        CustomTextField(
                            placeholder: "Correo electrónico",
                            texto: $vm.correo
                        )

                        CustomSecureField(
                            placeholder: "Contraseña",
                            texto: $vm.contraseña
                        )
                    }

                    NavigationLink {

                        MainTabView()

                    } label: {

                        CustomButton(
                            titulo: "Iniciar sesión"
                        )
                    }

                    HStack {

                        Text("¿No tienes cuenta?")

                        NavigationLink {

                            RegistroView()

                        } label: {

                            Text("Regístrate")
                                .fontWeight(.bold)
                                .foregroundColor(Color("Primary"))
                        }
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
