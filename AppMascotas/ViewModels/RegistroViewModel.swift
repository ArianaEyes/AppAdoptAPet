//
//  RegistroViewModel.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI
import Foundation
internal import Combine

final class RegistroViewModel: ObservableObject {

    @Published var nombre = ""
    @Published var correo = ""
    @Published var telefono = ""
    @Published var contraseña = ""
}
