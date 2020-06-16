//
//  WelcomeView.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 10/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct WelcomeView: View {
    public var body: some View {
        HStack(alignment: .center) {
            Spacer()
            PersonView(emoji: "👩‍🦰", name: "Alice").padding()
            Spacer()
            PersonView(emoji: "👱‍♂️", name: "Bob").padding()
            Spacer()
        }
    }
}
