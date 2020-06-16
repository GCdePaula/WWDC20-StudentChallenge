//
//  Page3View.swift
//  wwdc20_proto2
//
//  Created by Gabriel C Paula on 13/05/20.
//  Copyright © 2020 Gabriel C Paula. All rights reserved.
//

import SwiftUI

public struct Page3View: View {
    let bobPrevious: [String]
    let bobEncountered: [String]
    
    let alicePrevious: [String]
    let aliceEncountered: [String]

    public var body: some View {
        GeometryReader {g in
            ZStack(alignment: .center) {
                if g.size.height > g.size.width {
                    Page3Portrait(bobPrevious: self.bobPrevious, bobEncountered: self.bobEncountered, alicePrevious: self.alicePrevious, aliceEncountered: self.aliceEncountered)
                }
                else {
                        Page3Landscape(bobPrevious: self.bobPrevious, bobEncountered: self.bobEncountered, alicePrevious: self.alicePrevious, aliceEncountered: self.aliceEncountered)
                }
            }
        }
    }
}


public struct Page3Landscape: View {
    let bobPrevious: [String]
    let bobEncountered: [String]
    
    let alicePrevious: [String]
    let aliceEncountered: [String]

    public var body: some View {
        VStack {
            HStack(alignment: .center) {
                BobUploadToDatabaseView(previous: bobPrevious, encountered: bobEncountered)
                    .padding(.trailing, 40)
                
                AliceDownloadView(previous: alicePrevious, encountered: aliceEncountered, indexCases: bobPrevious)
                    .padding(.leading, 40)
            }.padding()
            HStack {
                Spacer()
                Spacer()
                Image(systemName: "arrow.down").imageScale(.large)
                    .padding(.horizontal, 60)
                Image(systemName: "arrow.up").imageScale(.large)
                    .padding(.horizontal, 60)
                Spacer()
                Spacer()
            }
            DatabaseView().padding()
        }
    }
}

public struct Page3Portrait: View {
    let bobPrevious: [String]
    let bobEncountered: [String]
    
    let alicePrevious: [String]
    let aliceEncountered: [String]

    public var body: some View {
        VStack {
            Group {
                BobUploadToDatabaseView(previous: bobPrevious, encountered: bobEncountered)
            }
            
            Group {
                Image(systemName: "arrow.down").imageScale(.large)
                    .padding()
                DatabaseView()
                Image(systemName: "arrow.down").imageScale(.large)
                .padding()
            }
            
            Group {
                AliceDownloadView(previous: alicePrevious, encountered: aliceEncountered,  indexCases: bobPrevious)
            }
        }
    }
}
