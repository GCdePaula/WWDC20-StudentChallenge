import Core
let bob = Person()

bob.encounteredPseudonyms.append(contentsOf: ["🟤", "🔷", "🟩"])
bob.pastPseudonyms.append(contentsOf: ["🟡", "🟢", "🟪"])

let alice = Person()

// Log Alice's encountered pseudonyms
alice.encounteredPseudonyms.append(contentsOf: ["🟠", "🔴", "🟦"])
alice.pastPseudonyms.append(contentsOf: ["🔶", "🔵", "🟧"])

startContent3View(bob: bob, alice: alice)
