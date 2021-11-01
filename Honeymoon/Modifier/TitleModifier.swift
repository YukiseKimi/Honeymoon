//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Manny Chau on 2021-11-01.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.largeTitle)
        .foregroundColor(Color.pink)
    }
}
