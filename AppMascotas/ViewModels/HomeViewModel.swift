//
//  HomeViewModel.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//
import Foundation

internal import Combine
final class HomeViewModel: ObservableObject {

    @Published var busqueda = ""

    @Published var categoriaSeleccionada = "Perros"

    let categorias = [
        "Perros",
        "Gatos"
    ]
    
    func iconoParaCategoria(_ categoria: String) -> String {
        switch categoria {
        case "Perros":
            return "dog"
        case "Gatos":
            return "cat"
        default:
            return "pawprint"
        }
    }

    var mascotasFiltradas: [Mascota] {

        mascotasData.filter {

            $0.categoria == categoriaSeleccionada &&
            (
                busqueda.isEmpty ||
                $0.nombre.localizedCaseInsensitiveContains(busqueda)
            )
        }
    }
}
