import Foundation

// Estructura del artículo
struct Articulo {
    var nombre: String
    var cantidad: Int
}

// Lista para almacenar los artículos
var inventario: [Articulo] = []

// Función para registrar uno o varios artículos
func registrarArticulos() {
    print("\n1. Registrar artículo")
    print("Por favor escribe la cantidad de artículos que deseas ingresar:")

    if let cantidadStr = readLine(), let cantidadTotal = Int(cantidadStr) {
        for i in 1...cantidadTotal {
            print("\nRegistro de artículos")
            print("Ingrese el nombre del artículo \(i), posteriormente presione enter:")
            let nombre = readLine() ?? "Sin nombre"
            print("Ingrese la cantidad de este artículo:")

            if let cantidadArtStr = readLine(), let cantidad = Int(cantidadArtStr) {
                let nuevo = Articulo(nombre: nombre, cantidad: cantidad)
                inventario.append(nuevo)
            } else {
                print("❌ Cantidad inválida. Se omitió este artículo.")
            }
        }
        print("✅ Registro completo. Presiona Enter para volver al menú.")
        _ = readLine()
    } else {
        print("❌ Entrada inválida.")
    }
}

// Función para mostrar todos los artículos
func verListaArticulos() {
    print("\n2. Ver lista de artículos.")
    print("\nListado de productos")

    if inventario.isEmpty {
        print("No hay artículos registrados.")
    } else {
        for (index, art) in inventario.enumerated() {
            print("Artículo \(index + 1): \(art.nombre)")
            print("Cantidad \(index + 1): \(art.cantidad)")
        }
    }

    print("\nPresiona Enter para volver al menú.")
    _ = readLine()
}

// Función para consultar artículos en existencia (cantidad mayor a 0)
func consultarExistencias() {
    print("\n3. Consultar artículos en existencias.")

    let existentes = inventario.enumerated().filter { $0.element.cantidad > 0 }

    if existentes.isEmpty {
        print("No hay artículos con existencia.")
    } else {
        for (index, art) in existentes {
            print("Artículo \(index + 1): \(art.nombre)")
            print("Cantidad \(index + 1): \(art.cantidad)")
        }
    }

    print("\nPresiona Enter para volver al menú.")
    _ = readLine()
}

// Función del menú principal
func mostrarMenu() {
    var salir = false
    while !salir {
        print("""
        ========= MENÚ =========
        1. Registrar artículos.
        2. Ver lista de artículos.
        3. Consultar artículos en existencias.
        4. Salir.
        =========================
        Elige una opción (número):
        """)

        if let opcion = readLine() {
            switch opcion {
            case "1":
                registrarArticulos()
            case "2":
                verListaArticulos()
            case "3":
                consultarExistencias()
            case "4":
                print("👋 Saliendo de la aplicación.")
                salir = true
            default:
                print("❌ Opción inválida. Intenta de nuevo.\n")
            }
        }
    }
}

// Iniciar la app
mostrarMenu()
