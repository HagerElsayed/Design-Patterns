import UIKit

/*:
 
 # Builder Pattern
 ## Creational Design Pattern
 - - - - - - - - - -
 ![BuilderPattern](builder-pattern-uml.png)
 
 
 ## Example
 */

// MARK: Product
struct House {
    let rooms: Int
    let doors: Int
    let windows: Int
}

extension House: CustomStringConvertible {
    public var description: String {
        return "\(rooms) Rooms, \(doors) Doors and \(windows) Windows"
    }
}

// MARK: Builder
class HouseBuilder {
    var rooms: Int = 0
    var doors: Int = 0
    var windows: Int = 0
    
    func addRooms(numberOfRooms: Int) {
        self.rooms = numberOfRooms
    }
    
    func addDoors(numberOfDoors: Int) {
        self.doors = numberOfDoors
    }
    
    func addWindows(numberOfWindows: Int) {
        self.windows = numberOfWindows
    }
    
    func build() -> House {
        return House(rooms: rooms, doors: doors, windows: windows)
    }

}


// MARK: Director
public class Person {
    func buildHouse () throws -> House {
        let builder = HouseBuilder()
        builder.addRooms(numberOfRooms: 6)
        builder.addDoors(numberOfDoors: 2)
        builder.addWindows(numberOfWindows: 10)
        return builder.build()
    }
}

let person = Person()
if let house = try? person.buildHouse() {
    print("The House consist Of " + house.description)
}
