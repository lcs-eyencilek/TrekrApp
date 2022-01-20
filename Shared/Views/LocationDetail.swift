//
//  LocationDetail.swift
//  TrekrApp
//
//  Created by Efe Yencilek on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    // The location to show details about
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
            }
            
            if !location.advisory.isEmpty {
                
                // Show only the location's "more" text with bottom padding included
                Text(location.more)
                    .padding([.horizontal,.bottom])
                
                HStack {
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
            } else {
                // Show only the location's "more" text with bottom padding included
                Text(location.more)
                    .padding([.horizontal, .bottom])
            }
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetail(location: testStore.places[2])
    }
}
