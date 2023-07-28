//
//  ContentView.swift
//  question app
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text1 = ""
   // @State private var text2 = ""
   // @State private var text3 = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite food?")
                    .font(.headline)
                Image("foodie")
                Button("Pasta"){
                    text1 = "🍝 fun fact: the pasta noodle originates all the way back to the Shang Dynasty before the 1100s"
                    print(text1)
                }.buttonStyle(.borderedProminent)
                Button("Tacos"){
                    text1 = "🌮 fun fact: the word taco means light lunch"
                    //print(text2)
                }.buttonStyle(.borderedProminent)
                Button("Sushi"){
                    text1 = "🍣 fun fact: sushi rice was once considered trash"
                    //print(text3)
                }.buttonStyle(.borderedProminent)
                Text(text1)
                    .padding(.horizontal, 30.0)
                
                
            } .toolbar {
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: SecondView())
                    {Text("Next Question ➡️")
                        }
                        
                    }
                }
            }
                .navigationTitle ("Fun Questions 😄")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
            }
        }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
