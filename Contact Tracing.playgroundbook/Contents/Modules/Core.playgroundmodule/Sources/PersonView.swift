//
//  PersonView.swift
//  wwdc20_proto
//
//  Created by Gabriel C Paula on 07/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct PersonView: View {
    let emoji: String
    let name: String
        
    public var body: some View {
        VStack(alignment: .center) {
            Text(emoji)
                .font(.system(size: 60))
            Text(name)
                .font(.title)
        }
    }
}
