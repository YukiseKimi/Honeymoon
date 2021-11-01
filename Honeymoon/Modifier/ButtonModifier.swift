//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Manny Chau on 2021-11-01.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Capsule().fill(Color.pink))
            .foregroundColor(Color.white )
    }
}

