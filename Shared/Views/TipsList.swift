//
//  TipsList.swift
//  TrekrApp
//
//  Created by Efe Yencilek on 2022-01-20.
//

import SwiftUI

struct TipsList: View {
    
    // This view creates has it's own source of truth
    @StateObject var tipHandler = TipHandler()
    
    var body: some View {
        List(tipHandler.tips, id: \.text, children: \.children) { tip in
            
            // If there are children on this particular tip...
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                Text(tip.text)
            }
            
        }
        .navigationTitle("Tips")
    }
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
