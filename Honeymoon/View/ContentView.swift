//
//  ContentView.swift
//  Honeymoon
//
//  Created by Manny Chau on 2021-10-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
            // FIXME: Add padding to the cards later on.
                .padding()
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
