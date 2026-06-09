//
//  LoginViewModel.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI
import Foundation
internal import Combine

final class LoginViewModel: ObservableObject {

    @Published var correo = ""
    @Published var contraseña = ""

}
