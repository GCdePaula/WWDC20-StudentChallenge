//
//  LockPersonView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct LockPersonView: View {
    let emoji: String
    let name: String

    public var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "lock").imageScale(.large)
                .padding(.top)
                .padding(.leading)

            HStack(alignment: .center) {
                
                PersonView(emoji: emoji, name: name)
                    .padding(.horizontal)
//                    .padding(.top)
//                    .padding(.leading)
                
            }
            .padding()            
        }
        .overlay(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
            .strokeBorder(Color.systemOrange, lineWidth: 3)
        )
        .background(            RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(Color.tertiarySystemBackground)
            .shadow(radius: 5)
        )
    }
}
