//
//  ContentView.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/8/21.
//

import GoogleMaps
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)

            HStack {
                Spacer()
                Image("Location")
                Image("Pencil")
            }
            .padding(.top)
            .padding(.trailing, 30)
            .frame(height: 0)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Maps")
                        .foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.37, blue: 0.27, alpha: 1)))
                        .font(.custom("Roboto-Bold", size: 40))
                    Text("Built for you.")
                        .font(.custom("Roboto-Regular", size: 30))

                }
                .padding(.leading, 30)
                
                Spacer()
            }
            .frame(width: 400)
            
    
            ZStack {
                Maps()
                    .frame(height: 680)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 0.5)
                    )
                    .padding()
                
                HStack(alignment: .center) {
                    Image("Pin")
                   
                    Text("Example Location")
                        .foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.92, blue: 0.89, alpha: 1)))
                        .font(.custom("Roboto-Regular", size: 20))
                    Spacer()
                        .frame(width: 15)
                }
                .frame(width: 260, height: 40)
                .background(Color.black)
                .cornerRadius(30)
                .offset(y: -325)
               // .padding(.top)
            }
//            Spacer()
        }
        .frame(height: 900)
        .background(Color(#colorLiteral(red: 0.95, green: 0.92, blue: 0.89, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
