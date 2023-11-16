//
//  FooterButton.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 17.11.2023.
//

import SwiftUI

struct FooterButton: View {
    var isOpen = false;
    var imageUrl:String;
    var caption:String;
 
    
    var body: some View {
        HStack(
            spacing: 8, content: {
                Image(imageUrl)
                    .resizable()
                    .frame(
                        width: 24, height: 24
                    )
                    .foregroundColor(Color( isOpen ? "onButton" : "Secondary"))
                Text(isOpen ? caption : "")
                    .foregroundColor(Color(isOpen ? "onButton" : "Primary"))
            }
        )
        .padding(12)
        .background(Color(isOpen ? "Button" : "Primary"))
        .cornerRadius(12)
    }
}

#Preview {
    FooterButton(isOpen: true,imageUrl: "home", caption: "Home")
}
