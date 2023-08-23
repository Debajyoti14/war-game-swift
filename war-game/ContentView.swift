//
//  ContentView.swift
//  war-game
//
//  Created by Debajyoti Saha on 23/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    // Generate Random No
                    var playerRand = Int.random(in: 2...14)
                    var cpuRand = Int.random(in: 2...14)
                    
                    // Update Cards
                    playerCard = "card"+String(playerRand)
                    cpuCard = "card"+String(cpuRand)
                    
                    // Update Score
                    if(playerRand > cpuRand){
                        playerScore+=1
                    }else if(playerRand == cpuScore){
                        
                    }else{
                        cpuScore+=1
                    }
                } label: {
                    Image("dealbutton")
                }

               
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
