//
//  ContentView.swift
//  aburrimiento
//
//  Created by iOS Maquina 10 on 14/02/23.
//

import SwiftUI

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}

struct ContentView: View {
    @State private var sport = 0
    
    var body: some View {
        ZStack {
            Color(hex: 0x151522, alpha: 1).ignoresSafeArea()
            VStack (alignment: HorizontalAlignment.leading){
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .padding(20)
                        .background(Color(hex: 0x272639, alpha: 1))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .onTapGesture {
                            //
                        }
                    Spacer()
                    Spacer()
                    HStack{
                        Text("Today")
                        Image(systemName: "arrowtriangle.down")
                    }.padding(15)
                        .background(Color(hex: 0xe74815, alpha: 1))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .onTapGesture {
                            //
                        }
                    Spacer()
                    Image(systemName: "bell")
                        .padding(10)
                        .background(Color(hex: 0x272639, alpha: 1))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .onTapGesture {
                            //
                        }
                    Image(systemName: "magnifyingglass")
                        .padding(10)
                        .background(Color(hex: 0xe74815, alpha: 1))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .onTapGesture {
                            //https://dribbble.com/shots/20638573-Cybersport-Mobile-App
                        }
                }
                Text("Home").font(.largeTitle).bold().foregroundColor(.white)
                Picker("Escuge un deporte", selection: $sport){
                    Text("Top").tag(0)
                    Text("CS:GO").tag(1)
                    Text("Dota 2").tag(2)
                    Text("FIFA").tag(3)
                }.pickerStyle(.segmented)
                VStack{
                    Text("BTS Pro Series 14").foregroundColor(.white).bold()
                    Text("Data 2").foregroundColor(.white).font(Font.footnote)
                    HStack{
                        Circle().frame(width: 50).foregroundColor(Color(hex: 0xe74815, alpha: 1))
                        Text("0:1").foregroundColor(.white)
                        Circle().frame(width: 50).foregroundColor(Color(hex: 0xe74815, alpha: 1))
                    }
                    HStack{
                        Text("Thunder  ").foregroundColor(.white)
                        Text("  Wildcard").foregroundColor(.white)
                    }
                }.frame(width: 350, height: 200)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [
                            Color(hex: 0xe74815, alpha: 1),
                            Color(hex: 0x272639, alpha: 1)
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(20)
                    .padding()
                VStack{
                    HStack{
                        Text("IEM Katowice").foregroundColor(.white).padding(.leading)
                        Spacer()
                        Text("2.40").foregroundColor(.gray).font(Font.footnote)
                        Image(systemName: "flag").frame(width: 40, height: 40)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(.trailing)
                    }
                    HStack{
                        Text("Faze vs Liquid").foregroundColor(.gray).font(Font.footnote)
                        Spacer()
                    }.padding(.leading)
                    HStack{
                        Text("22:00").foregroundColor(.white).padding(.leading).font(Font.footnote)
                        Text("21 Feb").foregroundColor(.gray).font(Font.footnote)
                        Spacer()
                        Text("1.70").foregroundColor(.gray).font(Font.footnote)
                        Image(systemName: "scribble").frame(width: 40, height: 40)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(.trailing)
                    }
                }.frame(width: 350, height: 130)
                    .background(Color(hex: 0x272639, alpha: 1))
                    .cornerRadius(20)
                    .padding(.leading)
                    .padding(.trailing)
                VStack{
                    HStack{
                        Text("LCS Spring").foregroundColor(.white).padding(.leading)
                        Spacer()
                        Text("2.10").foregroundColor(.gray).font(Font.footnote)
                        Image(systemName: "touchid").frame(width: 40, height: 40)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(.trailing)
                    }
                    HStack{
                        Text("TSM vs Cloud9").foregroundColor(.gray).font(Font.footnote)
                        Spacer()
                    }.padding(.leading)
                    HStack{
                        Text("22:00").foregroundColor(.white).padding(.leading).font(Font.footnote)
                        Text("21 Feb").foregroundColor(.gray).font(Font.footnote)
                        Spacer()
                        Text("1.67").foregroundColor(.gray).font(Font.footnote)
                        Image(systemName: "wind").frame(width: 40, height: 40)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(.trailing)
                    }
                }.frame(width: 350, height: 130)
                    .background(Color(hex: 0x272639, alpha: 1))
                    .cornerRadius(20)
                    .padding(.leading)
                    .padding(.trailing)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
