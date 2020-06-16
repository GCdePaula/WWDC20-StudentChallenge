//
//  DatabaseView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct DatabaseView: View {
    public var body: some View {
        HStack {
            Text("Exposure database")
                .font(.headline)
            Image(systemName: "icloud")
                .imageScale(.large)
                .padding(.top, -5)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.tertiarySystemBackground)
                .shadow(radius: 5)
        )

    }
}
