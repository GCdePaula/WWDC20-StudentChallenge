//
//  Content4View.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct Content4View: View {
    public var body: some View {
        ZStack {
            Color.secondarySystemBackground
            .edgesIgnoringSafeArea(.all)
            ConclusionView()
        }
    }
}

import PlaygroundSupport
public func startContent4View() {
    let view = Content4View()
    PlaygroundPage.current.setLiveView(view)
}
