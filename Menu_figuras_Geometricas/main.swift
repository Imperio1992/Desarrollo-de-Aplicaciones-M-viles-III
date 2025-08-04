import Foundation

func calcularAreaCuadrado() {
    print("Introduce el valor del lado:")
    if let input = readLine(), let lado = Double(input) {
        let area = lado * lado
        print("El área del cuadrado es: \(String(format: "%.6f", area))")
    } else {
        print("Entrada no válida.")
    }
}

func calcularAreaRectangulo() {
    print("Introduce el valor del lado 1:")
    if let input1 = readLine(), let lado1 = Double(input1) {
        print("Introduce el valor del lado 2:")
        if let input2 = readLine(), let lado2 = Double(input2) {
            let area = lado1 * lado2
            print("El área del rectángulo es: \(String(format: "%.6f", area))")
        } else {
            print("Entrada no válida.")
        }
    } else {
        print("Entrada no válida.")
    }
}

func calcularAreaTriangulo() {
    print("Introduce el valor de la base:")
    if let baseInput = readLine(), let base = Double(baseInput) {
        print("Introduce el valor de la altura:")
        if let alturaInput = readLine(), let altura = Double(alturaInput) {
            let area = (base * altura) / 2
            print("El área del triángulo es: \(String(format: "%.6f", area))")
        } else {
            print("Entrada no válida.")
        }
    } else {
        print("Entrada no válida.")
    }
}

func calcularAreaCirculo() {
    print("Introduce el valor del radio:")
    if let radioInput = readLine(), let radio = Double(radioInput) {
        let area = Double.pi * pow(radio, 2)
        print("El área del círculo es: \(String(format: "%.6f", area))")
    } else {
        print("Entrada no válida.")
    }
}

// Menú principal
print("""
Menu de areas
1- Area del cuadrado
2- Area del rectangulo
3- Area del triangulo
4- Area del circulo
Por favor introduce una opcion (numero):
""")

if let opcionInput = readLine(), let opcion = Int(opcionInput) {
    switch opcion {
    case 1:
        calcularAreaCuadrado()
    case 2:
        calcularAreaRectangulo()
    case 3:
        calcularAreaTriangulo()
    case 4:
        calcularAreaCirculo()
    default:
        print("Opción no válida.")
    }
} else {
    print("Entrada no válida.")
}
