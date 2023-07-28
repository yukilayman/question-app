//
//  ThirdView.swift
//  question app
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var flower1 = ""
    //@State private var flower2 = ""
    //@State private var flower3 = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite flower?")
                    .font(.headline)
                    .padding(1.0)
                Image("flower")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 30.0)
                    
                    
                Button("Rose"){
                    flower1 = "🌹 ecuador is one of the best places to see roses in the world"
                    print(flower1)
                }.buttonStyle(.borderedProminent)
                Button("Hibiscus"){
                    flower1 = "🌺 hibiscus rosa-sinesis is the national flower of Malaysia"
                    //print(flower1)
                }.buttonStyle(.borderedProminent)
                Button("Sunflower"){
                    flower1 = "🌻 the US is one the best places in the world to see sunflowers"
                    //print(flower3)
                }.buttonStyle(.borderedProminent)
                Text(flower1)
                    .padding(.horizontal, 30.0)
                    .navigationTitle ("Fun Questions 😄")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(false)
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
