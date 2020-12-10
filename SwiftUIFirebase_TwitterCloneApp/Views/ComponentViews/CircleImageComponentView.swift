//
//  CircleImageComponentView.swift
//  SwiftUIFirebase_TwitterCloneApp
//
//  Created by Jose Martinez on 12/10/20.
//

import SwiftUI

struct CircleImageComponentView: View {
    // MARK: - ©PROPERTIES
    //∆..............................
    let imageName: String
    //∆..............................
    
    //∆.....................................................
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 56, height: 56)
            .padding(.leading)
    }
}
