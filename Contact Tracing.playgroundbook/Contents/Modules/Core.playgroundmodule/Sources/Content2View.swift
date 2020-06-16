//
//  Content2View.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct Content2View: View {
    let person: Person
    
    public var body: some View {
        ZStack {
            Color.secondarySystemBackground
            .edgesIgnoringSafeArea(.all)

            BroadcastView(person: person)
        }
    }
}

import PlaygroundSupport
public func startContent2View(person: Person) {
    let view = Content2View(person: person)
    PlaygroundPage.current.setLiveView(view)
}
