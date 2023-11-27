//
//  DoctorCard.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 17.11.2023.
//

import SwiftUI

struct DoctorCard: View {
    var name:String;
    var imageUrl:String;
    var speciality:String;
    var firstTime:String;
    var secondTime:String;
    var date:String
    
    
    var body: some View {
        VStack(
            spacing: 16
        ){
            HStack{
                HStack(
                    spacing: 12
                ){
                    Image(imageUrl)
                        .resizable()
                        .frame(width: 58, height: 58)
                        .background(Color.Primary)
                        .clipShape(Circle())
                        
                    VStack(
                        alignment: .leading, spacing: 8
                    ){
                        Text(name)
                            .font(.custom("Poppins-Regular", size:16))
                            .foregroundStyle(Color.Primary)
                        Text(speciality)
                            .font(.custom("Poppins-Regular", size:14))
                            .foregroundStyle(Color.Caption)
                    }
                }
                Spacer()
                Icons.arrowRight
            }
            Divider()
                .background(Color(red: 255, green: 255, blue: 255, opacity: 0.15))
            HStack(
                spacing: 8
            ){
                HStack{
                    Icons.calender
                        .resizable()
                        .frame(
                            width: 16, height: 16
                        )
                        .foregroundColor(Color.Primary)
                    Text(date)
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundStyle(Color.Primary)
                }
                Spacer()
                HStack{
                    Icons.clock
                        .resizable()
                        .frame(
                            width: 16, height: 16
                        )
                        .foregroundStyle(Color.Primary)
                    Text("\(firstTime) - \(secondTime)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundStyle(Color.Primary)
                }
                Spacer()
            }
        }
        .padding(20)
        .background(
            Color("Surface")
        )
        .cornerRadius(12)
    }
}

#Preview {
    DoctorCard(
        name:"Dr. Imran Syahir",
        imageUrl: "doctorPhoto", speciality: "General Doctor", firstTime: "11:00", secondTime: "12:00", date: "Sunday, 12 June"
    )
}
