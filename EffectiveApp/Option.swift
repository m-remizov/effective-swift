//
//  Option.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 17.11.2023.
//

import SwiftUI

struct Option: View {
    var caption:String
    var imageUrl:String
    
    
    var body: some View {
        VStack(
            spacing: 8
        ){
            Image(imageUrl)
                .resizable()
                .frame(
                    width: 24, height: 24
                )
                .padding(24)
                .background(Color.Container)
                .clipShape(Circle())
            Text(caption)
                .font(.custom("Poppins-Regular", size:15))
                .foregroundColor(Color.Secondary)
            
        }
    }
}

#Preview {
    Option(caption:"Covid 19", imageUrl: "sun")
}
