//
//  UploadToDatabaseView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct BobUploadToDatabaseView: View {
    let previous: [String]
    let encountered: [String]

    public var body: some View {
        VStack {
            PersonSharingDetailView(emoji: "👱‍♂️", name: "Bob", encountered: encountered)
            
            VStack {
                Text("Previous pseudonyms").font(.headline)
                    .fontWeight(.medium)
                    .padding(.bottom, 5)

                
                Text(previous.joined(separator: ", "))
                    .truncationMode(.head)
                    .font(.body)
                    .lineLimit(1)
                    .frame(width: 180)
            }
            .padding(.top, 10)
            .padding(.horizontal)

        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.tertiarySystemBackground)
                .shadow(radius: 5)
        )
    }
}
