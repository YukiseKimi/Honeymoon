//
//  ContentView.swift
//  Honeymoon
//
//  Created by Manny Chau on 2021-10-22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    var body: some View {
        VStack {
            
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
            // FIXME: Add padding to the cards later on.
                .padding()
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success"),
                  message: Text("Wishing a lovely and most precious times together for the lovely couple."),
                  dismissButton: .default(Text("Happy Honeymoon")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
