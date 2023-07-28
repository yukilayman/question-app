//
//  SecondView.swift
//  question app
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct SecondView: View {
    @State private var country1 = ""
    // @State private var country2 = ""
   // @State private var country3 = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("What country is on your travel bucket list?")
                    .font(.headline)
                    .padding(1.0)
                Image("travel")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 30.0)
                Button("Italy"){
                    country1 = "🇮🇹 add the amalfi coast to your top place to visit in italy🍕"
                    print(country1)
                }.buttonStyle(.borderedProminent)
                Button("Greece"){
                    country1 = "🇬🇷 add corfu as an island in greece you have to visit🏛️"
                    //print(country2)
                }.buttonStyle(.borderedProminent)
                Button("Japan"){
                    country1 = "🇯🇵 go to okinawa if you want to go somewhere tropical and hokkaido if you want to go in the winter🌴⛷️"
                    //print(country3)
                }.buttonStyle(.borderedProminent)
                Text(country1)
                    .padding(.horizontal, 20.0)
            } .toolbar {
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: ThirdView())
                    {Text("Next Question ➡️")
                            .navigationTitle ("Fun Questions 😄")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(false)
                    }
                }
            }
        }
    }
}
            
            
            struct SecondView_Previews: PreviewProvider {
                static var previews: some View {
                    SecondView()
                }
            }
