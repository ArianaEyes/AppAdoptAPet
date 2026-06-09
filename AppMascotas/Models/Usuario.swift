//
//  Usuario.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI
import Foundation

struct Usuario: Identifiable {

    let id: UUID
    let nombre: String
    let edad: Int
    let ocupacion: String
    let telefono: String
    let ubicacion: String
    let correo: String
    let foto: String
}
