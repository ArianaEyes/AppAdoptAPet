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
        "Gatos",
        "Pajaros",
        "Peces",
        "Conejos",
        "Roedores",
        "Reptiles",
        "Insectos"
    ]
    
    func iconoParaCategoria(_ categoria: String) -> String {
        switch categoria {
        case "Perros":
            return "dog"
        case "Gatos":
            return "cat"
        case "Pajaros":
            return "bird"
        case "Peces":
            return "fish"
        case "Conejos":
            return "hare"
        case "Roedores":
            return "cat"
        case "Reptiles":
            return "lizard"
        case "Insectos":
            return "ant"
        
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
