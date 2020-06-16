import Foundation
import Core
let alice = Person()
alice.broadcasting = randomString()
Timer.scheduledTimer(withTimeInterval: 10, repeats: true) {_ in
    alice.pastPseudonyms.append(alice.broadcasting)
    alice.broadcasting = randomString()
}

alice.encounteredPseudonyms.append(contentsOf: ["🟠", "🔴", "🟦"])

startContent2View(person: alice)
