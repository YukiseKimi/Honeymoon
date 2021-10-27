//
//  GuideView.swift
//  Honeymoon
//
//  Created by Manny Chau on 2021-10-27.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                
                Text("Discover and pick the perfect destination for your honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "Like", subtitle: "Swipe Right", descripton: "Do you like this destination? Swipe right and it will be saved to your favourites", icon: "heart.circle")
                    
                    GuideComponent(title: "Dismiss", subtitle: "Swipe Left", descripton: "Would you skip this one? Swipe left!", icon: "xmark.circle")
                }
                    GuideComponent(title: "Book", subtitle: "Tap the Button", descripton: "Our selection of honeymoon destinations is the perfect setting for you to embark on a new life together", icon: "checkmark.square")
                
                
                Spacer(minLength: 10)
                
                Button(action: {
                    // ACTION
                    print("A button was tapped.")
                }) {
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Capsule().fill(Color.pink))
                        .foregroundColor(Color.white )
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }

    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
