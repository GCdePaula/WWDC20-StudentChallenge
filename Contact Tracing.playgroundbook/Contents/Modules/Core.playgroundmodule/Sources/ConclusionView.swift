//
//  ConclusionView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct ConclusionView: View {
    public var body: some View {
        HStack(alignment: .center) {
            Spacer()
            LockPersonView(emoji: "👩‍🦰", name: "Alice").padding()
            Spacer()
            LockPersonView(emoji: "👱‍♂️", name: "Bob").padding()
            Spacer()
        }

    }
}
