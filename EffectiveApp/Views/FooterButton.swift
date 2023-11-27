//
//  FooterButton.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 17.11.2023.
//

import SwiftUI

struct FooterButton: View {
    var isOpen = false;
    var caption:String;
    var image:Image
 
    
    var body: some View {
        HStack(
            spacing: 8, content: {
                image
                    .resizable()
                    .frame(
                        width: 24, height: 24
                    )
                    .foregroundColor(isOpen ? Color.OnButton : Color.Secondary)
                Text(isOpen ? caption : "")
                    .foregroundColor(isOpen ? Color.OnButton : Color.Primary)
            }
        )
        .padding(12)
        .background(isOpen ? Color.Button : Color.Primary)
        .cornerRadius(12)
    }
}

#Preview {
    FooterButton(isOpen: true,caption: "Home",image: Icons.home)
}
