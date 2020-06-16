//
//  BroadcastView2.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 11/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct BroadcastView: View {
    @ObservedObject var person: Person
        
    public var body: some View {
        VStack(alignment: .center) {

            FullPersonView(previous: person.pastPseudonyms, encountered: person.encounteredPseudonyms)
            
            VStack {
                HStack {
                    Text("Broadcasting").font(.headline)
                        .fontWeight(.medium)
                    
                    Image(systemName: "antenna.radiowaves.left.and.right")
                    .imageScale(.large)
                }.padding(.top)


                PersonBroadcastingView(name: person.broadcasting).id("rataria" + person.broadcasting)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.tertiarySystemBackground)
                .shadow(radius: 5)
            .aspectRatio(1, contentMode: .fill)
        )

        
    }}

