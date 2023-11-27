//
//  ContentView.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 11.11.2023.
//


var doctors = [
    Doctor(imageUrl: "brostito_photo", name: "Dr. Joseph Brostito", distance: "1.2", speciality: "Dental Specialist", rating: "4.8", reviewsCount: 120, openTime: "17:00"),
    Doctor(imageUrl: "doctorPhoto", name: "Dr. Imran Syahir", distance: "1.2", speciality: "General Doctor", rating: "4.5", reviewsCount: 228, openTime: "18:00")
]

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack() {
                Header(name:"Hi James")
                Spacer()
                    .frame(height: 32)
                DoctorCard(
                    name:"Dr. Imran Syahir",
                    imageUrl: "doctorPhoto", speciality: "General Doctor", firstTime: "11:00", secondTime: "12:00", date: "Sunday, 12 June"
                )
                Spacer()
                    .frame(height: 20)
                Searchbar()
                Spacer()
                    .frame(height: 24)
                HStack(
                    spacing: 13){
                        Option(caption:"Covid 19", image: Icons.sun)
                        Option(caption:"Doctor", image: Icons.profileAdd)
                        Option(caption:"Medicine", image: Icons.link)
                        Option(caption:"Hospital", image: Icons.hospital)
                    }
                Spacer()
                    .frame(height: 32)
                VStack(
                    spacing: 16){
                        HStack{
                            Text("Near Doctor")
                            Spacer()
                        }
                        VStack(
                            spacing: 12){
                                ForEach(doctors) { doctor in
                                    NearDoctorCard(doctor: doctor);
                                }
                            }
                    }
            }
            .padding()
        }
        HStack(
            spacing: 13){
                FooterButton(isOpen: true,caption: "Home", image: Icons.home)
                FooterButton(isOpen: false,caption: "Calendar", image: Icons.calender)
                FooterButton(isOpen: false,caption: "Message", image: Icons.message)
                FooterButton(isOpen: false,caption: "Profile", image: Icons.profile)
            }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)

    }
}

#Preview {
    ContentView()
}
