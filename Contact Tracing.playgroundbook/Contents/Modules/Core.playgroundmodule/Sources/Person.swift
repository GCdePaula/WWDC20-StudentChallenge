import SwiftUI

let shapes = ["🔶", "🔵", "🟧", "🟢", "🟨", "🟤", "🔷", "🟩", "🟡", "🟪", "🔻", "🔺", "🟥", "🟣"]
var currentShape = 0
public func randomString() -> String {
    currentShape = currentShape % shapes.count
    let nextShape = shapes[currentShape]
    currentShape += 1
    return nextShape
}

public class Person: ObservableObject {
    @Published public var broadcasting = ""
    @Published public var pastPseudonyms = [String]()
    public var encounteredPseudonyms = [String]()
    
    public init() {}
}

