//
//  AliceDownloadView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct AliceDownloadView: View {
    let previous: [String]
    let encountered: [String]
    let indexCases: [String]

    public var body: some View {
        VStack {
            FullPersonView(previous: previous, encountered: encountered)
            
            VStack {
                Text("Index cases").font(.headline)
                    .fontWeight(.medium)
                    .padding(.bottom, -8)

                
                HStack {
                    Image(systemName: "ellipsis")
                        .padding(.bottom, -15)
                    Text(indexCases.joined(separator: ", "))
                        .truncationMode(.head)
                        .font(.body)
                        .lineLimit(1)
                    Image(systemName: "ellipsis")
                        .padding(.bottom, -15)
                }
            }
            .padding(.top, 10)
            .padding(.horizontal)

        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.tertiarySystemBackground)
                .shadow(radius: 5)
//            .aspectRatio(1, contentMode: .fill)
        )
    }
}
