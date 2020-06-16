//
//  PersonDetailView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 10/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct PersonDetailView: View {
    let previous: [String]
    let encountered: [String]
    
    public var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                Text("Encountered")
                    .font(.headline)
                    .fontWeight(.medium)
                
                Text(encountered.joined(separator: ", "))
                    .truncationMode(.head)
                    .lineLimit(2)
                    .font(.caption)
                    .frame(width: 100, alignment: .leading)

            }.padding(.bottom)
            
            VStack(alignment: .leading) {
                
                Text("Previous")
                    .font(.headline)
                    .fontWeight(.medium)
                
                Text(previous.joined(separator: ", "))
                    .truncationMode(.head)
                    .lineLimit(1)
                    .font(.caption)
                    .frame(width: 100, alignment: .leading)
                .transition(
                    AnyTransition.opacity
                        .animation(
                            Animation.easeInOut(duration: 1.0)))
                .id("rataria" + previous.joined(separator: ", "))
            }

        }.fixedSize()
    }
}
