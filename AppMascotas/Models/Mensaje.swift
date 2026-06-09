//
//  Mensaje.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI
import Foundation

struct Mensaje: Identifiable {

    let id: UUID
    let remitente: String
    let contenido: String
    let fecha: Date
}
