//
//  ContentView.swift
//  MusicUI
//
//  Created by Chiara Sabato on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var player: Double = 5
    @State private var isLiked: Bool = false
    @State private var looper: Bool = false
    @State private var paused: Bool = false
    @State private var songTitle: String = "Salt in the Wound"
    @State private var playNext: Bool = false
    @State private var goBack: Bool = false
    
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
                                Text("\(songTitle)")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                Text("Julien Baker, Pheobe Bridgers, Lucy Dacus")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }
                            .padding(20)
                            Spacer()
                            Button(action: {
                               self.isLiked.toggle()
                            }) {
                                Image(systemName: self.isLiked == true ? "heart.fill" : "heart")
                                      .resizable()
                                      .frame(width: 20, height: 20)
                                      .foregroundColor(.white)
                                      .padding(.trailing)
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
                            Button(action: {
                               self.looper.toggle()
                                songTitle = "Salt in the Wound"

                            }) {
                                Image(systemName: "backward.end.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                .padding(8)}
                            
                            Button(action: {
                               self.paused.toggle()
                            }) {
                                Image(systemName: self.paused == true ? "play.circle.fill" : "pause.circle.fill")
                                      .resizable()
                                      .frame(width: 35, height: 35)
                                      .foregroundColor(.white)
                            }
                            Button(action: {
                                self.playNext.toggle()
                                songTitle = "Me and My Dog"
                            }){
                                Image(systemName: "forward.end.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            Spacer()
                            Button(action: {
                               self.looper.toggle()
                            }) {
                                Image(systemName: self.looper == true ? "repeat.1" : "repeat")
                                      .resizable()
                                      .frame(width: 20, height: 20)
                                      .foregroundColor(.white)
                                      .padding(.trailing)
                            }
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
