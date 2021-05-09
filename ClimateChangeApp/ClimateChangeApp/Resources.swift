//
//  Resources.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/8/21.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        NavigationView {
            VStack {
                    HStack {
                        Spacer()
                        Image("Location")
                        Image("Pencil")
                    }
                    .padding(.top)
                    .padding(.trailing, 30)
                    .frame(height: 0)
                
                 Spacer()
                    .frame(height: 40)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Your Contribution")
                            .foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.37, blue: 0.27, alpha: 1)))
                            .font(.custom("Roboto-Bold", size: 40))
                        Text("For a better future.")
                            .font(.custom("Roboto-Regular", size: 30))

                    }
                    .padding(.leading, 30)
                    
                    Spacer()
                }
                .frame(width: 400)
                
                VStack(alignment: .center, spacing: 20) {
                    NavigationLink(destination: EnergyConservation()) {
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image("Conservation")
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("energy \nconservation →")
                                        .font(Font.custom("Roboto-Bold", size: 18))
                                        .foregroundColor(Color.black)
                                        .frame(height: 50)
                                    
                                    Text("input the estimated amount of energy you use and learn how to reduce consumption")
                                        .font(Font.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color.gray)
                                        .padding(.bottom, 5)
                                }
                                .padding(.all, 2)
                            }
                        
                        }
                        .frame(width: 350, height: 150)
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        
                    }
                    .navigationBarBackButtonHidden(true)
                
                
                    NavigationLink(destination: WaterUsage()) {
                        VStack(alignment: .leading) {
                            HStack {
                                Image("WaterUsage")
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("water \nusage →")
                                        .font(Font.custom("Roboto-Bold", size: 18))
                                        .foregroundColor(Color.black)
                                        .frame(height: 60)
                                    
                                    Text("check if your region is facing issues regarding water usage and consumption")
                                        .font(Font.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color.gray)
                                        .padding(.bottom, 5)
                                }
                                .padding(.all, 2)
                            }
                        }
                        .frame(width: 350, height: 150)
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(12)
                        .shadow(radius: 5)
                    }
                    .navigationBarBackButtonHidden(true)
                    
                    NavigationLink(destination: Transportation()) {
                        VStack(alignment: .leading) {
                            HStack {
                                Image("Transportation")
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("transportation →")
                                        .font(Font.custom("Roboto-Bold", size: 18))
                                        .foregroundColor(Color.black)
                                        .frame(width: 140, height: 25)
                                        .offset(x: -20)
                                        .padding(.bottom, 0.5)
                                    
                                    Text("the air quality we breathe is very important and use this feature to learn about how you can help the environment")
                                        .font(Font.custom("Roboto-Regular", size: 12))
                                        .foregroundColor(Color.gray)
                                        .padding(.bottom, 5)
                                        .frame(width: 130, height: 90)
                                        .offset(x: -10)
                                }
                                .padding(.all, 2)
                            }
                        }
                        .frame(width: 350, height: 150)
                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(12)
                        .shadow(radius: 5)
                    }
                    .navigationBarBackButtonHidden(true)
                    
                }
                .padding()
                
                Spacer()
                    .frame(height: 80)
            }
            .frame(height: 900)
            .background(Color(#colorLiteral(red: 0.95, green: 0.92, blue: 0.89, alpha: 1)))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
