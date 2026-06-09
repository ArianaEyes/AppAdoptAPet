//
//  RegistroView.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//
import SwiftUI

struct RegistroView: View {

    @StateObject private var vm = RegistroViewModel()

    var body: some View {

        ZStack {

            Color("Background")
                .ignoresSafeArea()

            ScrollView {

                VStack(spacing: 25) {

                    Spacer()
                        .frame(height: 30)

                    ZStack {

                        Circle()
                            .fill(Color("Secondary"))
                            .frame(width: 120, height: 120)

                        Image(systemName: "camera.fill")
                            .font(.system(size: 35))
                            .foregroundColor(.gray)
                    }

                    VStack(spacing: 8) {

                        Text("Crear cuenta")
                            .tituloPrincipal()

                        Text("Únete a Pet Adopt")
                            .subtituloPrincipal()
                    }

                    VStack(spacing: 15) {

                        CustomTextField(
                            placeholder: "Nombre completo",
                            texto: $vm.nombre
                        )

                        CustomTextField(
                            placeholder: "Correo electrónico",
                            texto: $vm.correo
                        )

                        CustomTextField(
                            placeholder: "Teléfono",
                            texto: $vm.telefono
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
                            titulo: "Registrarme"
                        )
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    NavigationStack {
        RegistroView()
    }
}
