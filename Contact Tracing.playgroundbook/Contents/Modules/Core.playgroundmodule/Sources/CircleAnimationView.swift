//
//  Spinner.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 11/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct CircleAnimationView: View {
    
    @State private var scaleAll = false
    @State private var first = true
    
    let duration: Double
    
    public var body: some View {
        Circle()
            .stroke(style: .init(lineWidth: 2, lineCap: .round, lineJoin: .round))
            .foregroundColor(Color.systemGray)
            .scaleEffect(scaleAll ? 1.8 : 0)
            .opacity(scaleAll ? 0 : 1)
            .opacity(scaleAll ? 1 : 0.5)
            .animation(
                Animation.easeInOut(duration: duration)
                .delay(first ? 0 : (3-duration))
                .repeatForever(autoreverses: false)
            ).onAppear() {
                self.scaleAll.toggle()
                self.first = false
            }
    }
}
