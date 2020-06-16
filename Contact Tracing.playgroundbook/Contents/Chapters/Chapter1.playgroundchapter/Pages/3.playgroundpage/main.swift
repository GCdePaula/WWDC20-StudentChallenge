//#-hidden-code
import Core
func upload(pseudonyms: [String], withToken: String) {}
func downloadDatabase() -> [String] {return [""]}
func compare(_ encountered: [String], with: [String]) -> Bool {false}
let token = ""
//#-end-hidden-code
/*:
 # Bob just got some terrible news.

 After going to the hospital for a fever, he was diagnosed with COVID-19. Luckily his symptoms are mild.

 Bob is given a **digital single-use token**, which acts as proof that he was diagnosed by a **testing authority**.

 Bob is strongly encouraged (but not required) to share his past pseudonyms to an **exposure database**. Only users with the token are allowed to upload to the database.

 Bob decides to share his pseudonyms, and thus uploads them to the exposure database, expending the token. He becomes an index case. **No information that can identify Bob is shared**.

 The database only contains a list of pseudonyms that alone cannot be used to identify users. In fact, **it doesn’t even know who Bob came into contact with.**
 
 ## Now back to Alice.
 Her smartphone downloads the exposure database and compares it with her own local `encounteredPseudonyms`. If the app finds a match, it notifies Alice that she has been exposed and advises Alice to contact her health care provider.
 */
let bob = Person()

// Log Bob's encountered and previous pseudonyms
bob.encounteredPseudonyms.append(contentsOf: ["🟤", "🔷", "🟩"])
bob.pastPseudonyms.append(contentsOf: ["🟡", "🟢", "🟪"])

upload(pseudonyms: bob.pastPseudonyms, withToken: token)

let alice = Person()

// Log Alice's encountered and previous pseudonyms
alice.encounteredPseudonyms.append(contentsOf: ["🟠", "🔴", "🟦"])
alice.pastPseudonyms.append(contentsOf: ["🔶", "🔵", "🟧"])

let indexCases = downloadDatabase()
let wasAliceExposed = compare(alice.encounteredPseudonyms, with: indexCases)
//#-hidden-code
startContent3View(bob: bob, alice: alice)
//#-end-hidden-code
