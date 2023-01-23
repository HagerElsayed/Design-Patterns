/*:
 
 # Factory Pattern
 - - - - - - - - - -
 ![FactoryPattern](FactoryPattern.png)
 
 
 ## Code Example
 */
import Foundation

enum ButtonType {
    case custom
    case system
    case detailsDisclosure
}

protocol Button {
    func draw()
}

struct SystemButton: Button {
    func draw() {
        print("System")
    }
}

struct CustomButton: Button {
    func draw() {
        print("Custom")
    }
}

struct DetailsDisclosure: Button {
    func draw() {
        print("detailsDisclosure")
    }
}


// Factory

class ButtonFactory {
    static func createButton(type: ButtonType) -> Button {
        switch(type) {
            
        case .custom: return CustomButton()
        case .system: return SystemButton()
        case .detailsDisclosure: return DetailsDisclosure()
        }
    }
}

let button = ButtonFactory.createButton(type: .custom)
button.draw()
