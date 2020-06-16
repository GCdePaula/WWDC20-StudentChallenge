//#-hidden-code
import Foundation
import Core
//#-end-hidden-code
/*:
 # Alice downloads the contact tracing app and launches it.

 She then locks her phone and goes about her day, as usual. Her smartphone will take care of the rest.

 The app creates a random, unique **pseudonym** for Alice, that cannot be traced back to her. Using bluetooth signals, it broadcasts her pseudonym to everyone nearby, like a beacon. In turn, the app logs whatever pseudonyms it receives.

 **Every few minutes her phone generates a new random pseudonym**. It is impossible to link them back to Alice, as they are random. Or track Alice’s pseudonym, as it is always changing.
 
 Aside from Alice's pseudonym, **no information ever leaves Alice’s phone without her express permission.**
 */
let alice = Person()

// Create Alice's first pseudonym
alice.broadcasting = randomString()

// Change Alice's pseudonym every 10 seconds
Timer.scheduledTimer(withTimeInterval: 10, repeats: true) {_ in
    alice.pastPseudonyms.append(alice.broadcasting)
    alice.broadcasting = randomString()
}

// Log encountered pseudonyms
alice.encounteredPseudonyms.append(contentsOf: ["🟠", "🔴", "🟦"])
/*:
 In practice, there are other relevant data and metadata being logged, such as the intensity of the signal (a proxy for distance), date, and time exposed. All of those will help Alice make a better informed decision on her health later on.
*/
//#-hidden-code
startContent2View(person: alice)
//#-end-hidden-code
