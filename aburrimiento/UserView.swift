//
//  UserView.swift
//  aburrimiento
//
//  Created by iOS Maquina 10 on 17/02/23.
//

import SwiftUI

struct UserView: View {
    @State private var sport = 0
    
    var body: some View {
        ZStack {
            Color(hex: 0x151522, alpha: 1).ignoresSafeArea()
            VStack{
                HStack{
                    Image(systemName: "chevron.left").padding(20)
                        .background(Color(hex: 0x272639, alpha: 1))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .onTapGesture {
                            //
                        }
                    Spacer()
                    Image(systemName: "ellipsis").padding(20)
                        .background(Color(hex: 0x272639, alpha: 1))
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .onTapGesture {
                            //
                        }
                }.padding()
                Circle().frame(width: 200).foregroundColor(Color(hex: 0x272639, alpha: 1))
                Text("Samuel Anderson").foregroundColor(.white).font(Font.largeTitle)
                Text("Sammyboy").foregroundColor(.gray).font(Font.title).bold()
                HStack{
                    Text("Support")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(hex: 0x272639, alpha: 1))
                        .cornerRadius(30)
                    Text("Carry")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(hex: 0x272639, alpha: 1))
                        .cornerRadius(30)
                }
                VStack(alignment: .leading){
                    Picker("Escoge un deporte", selection: $sport){
                        Text("OverView").tag(0)
                        Text("Performance").tag(1)
                        Text("Socials").tag(2)
                    }.pickerStyle(.segmented).padding()
                    HStack{
                        Text("Name").foregroundColor(.gray)
                        Spacer()
                        Text("Samuel Anderson").foregroundColor(.white)
                    }.padding([.bottom], 10)
                    HStack{
                        Text("Birth").foregroundColor(.gray)
                        Spacer()
                        Text("September 15, 1999").foregroundColor(.white)
                    }.padding([.bottom], 10)
                    HStack{
                        Text("Country").foregroundColor(.gray)
                        Spacer()
                        Text("🇺🇸 United States").foregroundColor(.white)
                    }.padding([.bottom], 10)
                    HStack{
                        Text("Years Active").foregroundColor(.gray)
                        Spacer()
                        Text("2015 - Present").foregroundColor(.white)
                    }.padding([.bottom], 10)
                    HStack{
                        Text("Total Winnings").foregroundColor(.gray)
                        Spacer()
                        Text("$64,963").foregroundColor(.white)
                    }.padding([.bottom], 10)
                    HStack{
                        Text("Total Matches").foregroundColor(.gray)
                        Spacer()
                        Text("358").foregroundColor(.white)
                    }
                }.frame(width: 360, height: 300).padding([.horizontal], 10)
                    .background(Color(hex: 0x272639, alpha: 1)).cornerRadius(20)
                Spacer()
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
