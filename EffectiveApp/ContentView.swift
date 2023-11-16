//
//  ContentView.swift
//  EffectiveApp
//
//  Created by Maxim Remizov on 11.11.2023.
//

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
                    spacing: 13, content: {
                        Option(caption:"Covid 19", imageUrl: "sun")
                        Option(caption:"Doctor", imageUrl: "profile-add")
                        Option(caption:"Medicine", imageUrl: "link")
                        Option(caption:"Hospital", imageUrl: "hospital")
                    }
                )
                Spacer()
                    .frame(height: 32)
                VStack(
                    spacing: 16,
                    content: {
                        HStack{
                            Text("Near Doctor")
                            Spacer()
                        }
                        VStack(
                            spacing: 12,
                            content: {
                               NearDoctorCard(
                                imageUrl: "brostito_photo", name: "Dr. Joseph Brostito", distance: "1.2", speciality: "Dental Specialist", rating: "4.8", reviewsCount: 120, openTime: "17:00"
                               
                               )
                                NearDoctorCard(
                                 imageUrl: "doctorPhoto", name: "Dr. Imran Syahir", distance: "1.2", speciality: "General Doctor", rating: "4.5", reviewsCount: 228, openTime: "18:00"
                                
                                )
                            }
                        )
                        
                    }
                )
                    
                
                
            }
            .padding()
        }
        HStack(
            spacing: 13, 
            content: {
                FooterButton(isOpen: true,imageUrl: "home", caption: "Home")
                FooterButton(isOpen: false,imageUrl: "calendar", caption: "Calendar")
                FooterButton(isOpen: false,imageUrl: "message", caption: "Message")
                FooterButton(isOpen: false,imageUrl: "profile", caption: "Profile")
            }
        )
        .padding(.horizontal, 24)
        .padding(.vertical, 16)

    }
}

#Preview {
    ContentView()
}
