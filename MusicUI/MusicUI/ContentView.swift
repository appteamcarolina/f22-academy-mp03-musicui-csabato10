//
//  ContentView.swift
//  MusicUI
//
//  Created by Chiara Sabato on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var player: Double = 5
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.black, Color("bgGray")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                
                HStack{
                    Image(systemName: "chevron.down")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 15)
                        .padding(10)
                    Spacer()
                    Text("sad indie girl shit")
                        .foregroundColor(.white)
                        .font(.subheadline)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .padding(10)
                }
                .padding()
                Spacer()
                
            }
            
            VStack{
            
                Image("boygenius")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading)
                    .padding(.trailing)
                
                
                HStack{
                    
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                Text("Salt in the Wound")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                Text("Julien Baker, Pheobe Bridgers, Lucy Dacus")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                            .padding(20)
                            Spacer()
                            Button{
                            }
                        label:{
                            Image(systemName: "heart")
                                .resizable()
                                .foregroundColor(.white)
                                .padding(.trailing)
                                .frame(width: 40, height: 20)
                            
                            
                        }
                            
                        }
                        VStack{
                            Slider(value: $player, in:-50...100)
                                .accentColor(.white)
                            HStack{
                                Text("0.00")
                                    .foregroundColor(.white)
                                    .padding(.leading)
                                Spacer()
                                Text("4.10")
                                    .foregroundColor(.white)
                                    .padding(.trailing)
                            }
                        }
                        HStack{
                            Image(systemName: "shuffle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(8)
                            Spacer()
                            Image(systemName: "backward.end.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(8)
                            Image(systemName: "pause.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .padding(8)
                            Image(systemName: "forward.end.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(8)
                            Spacer()
                            Image(systemName: "repeat")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(8)
                        }
                        HStack{
                
                            Image(systemName: "laptopcomputer.and.iphone")
                                .resizable()
                                .frame(width: 25, height: 15)
                                .foregroundColor(.white)
                                .padding(.leading)
                            Spacer()
                            Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .frame(width: 20, height: 25)
                                .foregroundColor(.white)
                                .padding(.trailing)
                            Image(systemName: "text.line.first.and.arrowtriangle.forward")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding(.trailing)

                        }
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
