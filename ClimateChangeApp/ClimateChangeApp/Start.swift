//
//  Start.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/8/21.
//

import SwiftUI

struct StartView: View {
    @State private var action: Int? = 0
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View {
       
            VStack {
                Spacer()
                Text("welcome to")
                    .font(Font.custom("Roboto-Regular", size: 30))
                Text("cliMAP")
                    .font(Font.custom("Roboto-Bold", size: 30))
                    
                
                Spacer()
                    .frame(height: 60)
                
                Image("World")
                    .resizable()
                    .frame(width: 394, height: 288)
                
                Spacer()
                    .frame(height: 60)


                Text("saving the planet one day at a time")
                    .font(Font.custom("Roboto-Regular", size: 20))
                    .padding()

//                NavigationLink(destination: ContentView(), tag: 1, selection: $action) {
//                    EmptyView()
//                }
//                .navigationBarTitle("")
//                .onAppear {
//                    self.isNavigationBarHidden = true
//                }
//                .navigationBarBackButtonHidden(true)
//
//                Text("continue →")
//
//                    .font(.custom("Roboto-Bold", size: 20))
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 264, height: 54)
//                    .background(Color.black)
//                    .cornerRadius(30)
//                    .padding()
//                    .onTapGesture {
//                        self.action = 1
//                    }
                
//              Button Here Instead
               // NavigationLink(destination: ContentView()) {
//                Button(action: ContentView(), label: {
                    Text("continue →")
                        .font(.custom("Roboto-Bold", size: 20))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 264, height: 54)
                        .background(Color.black)
                        .cornerRadius(30)
                        .padding()

//                }
//                .hiddenNavigationBarStyle()
//                .navigationBarTitle("")
//                .navigationBarHidden(true)
//                .navigationBarBackButtonHidden(true)
//                .opacity(0)
                
                
                Spacer()
            }
            .frame(width: 500)
            .background(Color(#colorLiteral(red: 0.95, green: 0.92, blue: 0.89, alpha: 1)))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

