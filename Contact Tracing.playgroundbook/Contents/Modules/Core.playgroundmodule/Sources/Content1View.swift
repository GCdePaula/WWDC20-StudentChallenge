//
//  Content1View.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI
import Core

public struct Content1View: View {
    public var body: some View {
        ZStack {
            Color.secondarySystemBackground
            .edgesIgnoringSafeArea(.all)
            WelcomeView()
        }
    }
}

import PlaygroundSupport
public func startContent1View() {
    let view = Content1View()
    PlaygroundPage.current.setLiveView(view)
}
