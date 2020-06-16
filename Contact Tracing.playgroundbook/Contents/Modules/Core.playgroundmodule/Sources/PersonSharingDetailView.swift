//
//  PersonSharingDetailView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct PersonSharingDetailView: View {
    let emoji: String
    let name: String
    
    let encountered: [String]

    public var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "lock").imageScale(.large)
                .padding(.top)
                .padding(.leading)

            HStack(alignment: .center) {
                
                PersonView(emoji: emoji, name: name)
//                    .padding()
                    .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("Encountered")
                        .font(.headline)
                        .fontWeight(.medium)
                    
                    Text(encountered.joined(separator: ", "))
                        .truncationMode(.head)
                        .font(.caption)
                        .frame(maxWidth: 100, alignment: .leading)
                }.padding(.horizontal)
                
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                .strokeBorder(Color.systemOrange, lineWidth: 3)
            )
        }
    }
}
