//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Manny Chau on 2021-10-26.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - Properties
    var title: String
    var subtitle: String
    var descripton: String
    var icon: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                }
                Divider().padding(.bottom, 4)
                Text(descripton)
                    .font(.footnote)
                    .foregroundColor(Color.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subtitle: "Swipe Right", descripton: "This is placeholder sentence", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
        
    }
}
