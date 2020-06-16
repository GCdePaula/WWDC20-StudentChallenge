//
//  PersonBroadcastingView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct PersonBroadcastingView: View {
    let name: String
    
    public var body: some View {
        Text(name)
            .font(.largeTitle)
            .background(
                ZStack {
                    CircleAnimationView(duration: 1.5)
                    CircleAnimationView(duration: 2)
                    CircleAnimationView(duration: 3)
                }
            )
            .transition(
                AnyTransition.opacity
                    .animation(
                        Animation.easeInOut(duration: 1.0)))

    }
}
