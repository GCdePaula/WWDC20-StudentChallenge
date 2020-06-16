//
//  FullPersonView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct FullPersonView: View {
    let previous: [String]
    let encountered: [String]

    public var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "lock").imageScale(.large)
                .padding(.top)
                .padding(.leading)

            HStack(alignment: .center) {
                PersonView(emoji: "👩‍🦰", name: "Alice")
                    .padding(.horizontal)
                    
                PersonDetailView(previous: previous, encountered: encountered)
                    .padding(.horizontal)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                .strokeBorder(Color.systemOrange, lineWidth: 3)
            )
        }
    }
}
