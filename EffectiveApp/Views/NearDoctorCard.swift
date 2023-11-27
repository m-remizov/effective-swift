//
//  NearDoctorCard.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 17.11.2023.
//

import SwiftUI

struct NearDoctorCard: View {
    
    var doctor:Doctor;
    
    var body: some View {
        VStack(
            spacing: 20
        ){
            HStack() {
                HStack{
                    Image(doctor.imageUrl)
                        .resizable()
                        .frame(width: 53, height: 53)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(
                        alignment: .leading, spacing: 8, content: {
                            Text(doctor.name)
                                .font(.custom("Poppins-Bold", size:16))
                            Text(doctor.speciality)
                                .font(.custom("Poppins-Regular", size:14))
                                .foregroundColor(Color.Secondary)
                        }
                    )
                }
                Spacer()
                HStack{
                    Icons.location
                    Text("\(doctor.distance) KM")
                        .font(.custom("Poppins-Regular", size:14))
                        .foregroundColor(Color.Secondary)
                }
            }
            Divider()
            HStack(
                spacing: 6
            ){
                HStack{
                    Icons.clock
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Color.Attention)
                    Text("\(doctor.rating) (\(doctor.reviewsCount) Reviews)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundColor(Color.Attention)
                }
                Spacer()
                HStack(
                    spacing: 6
                ){
                    Icons.clock
                        .resizable()
                        .frame(
                            width: 20, height: 20
                        )
                        .foregroundColor(Color.Surface)
                    Text("Open at \(doctor.openTime)")
                        .font(.custom("Poppins-Regular", size:12))
                        .foregroundColor(Color.Surface)
                }
                Spacer()
            }
            
        }
        .padding(.horizontal,16)
        .padding(.vertical, 20)
        .background(Color.Primary)
        .cornerRadius(12)
    }
}

#Preview {
    NearDoctorCard(
        doctor: Doctor(imageUrl: "brostito_photo", name: "Dr. Joseph Brostito", distance: "1.2", speciality: "Dental Specialist", rating: "4.8", reviewsCount: 120, openTime: "17:00")
    )
}
