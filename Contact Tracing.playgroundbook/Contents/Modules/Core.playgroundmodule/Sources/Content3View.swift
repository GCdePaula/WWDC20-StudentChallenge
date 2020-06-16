//
//  Content3View.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct Content3View: View {
    let bob: Person
    let alice: Person
    
    public var body: some View {
        ZStack {
            Color.secondarySystemBackground
            .edgesIgnoringSafeArea(.all)
            Page3View(bobPrevious: bob.pastPseudonyms, bobEncountered: bob.encounteredPseudonyms, alicePrevious: alice.pastPseudonyms, aliceEncountered: alice.encounteredPseudonyms)
        }

    }
}

//


import PlaygroundSupport
public func startContent3View(bob: Person, alice: Person) {
    let view = Content3View(bob: bob, alice: alice)
    PlaygroundPage.current.setLiveView(view)
}
