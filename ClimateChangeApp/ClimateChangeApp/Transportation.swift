//
//  Transportation.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/8/21.
//

import SwiftUI

struct Transportation: View {
    var body: some View {
        VStack(alignment:.center, spacing: 20){
            Spacer()
            Text("Transportation")
                .font(Font.custom("Roboto-Bold", size: 40))
                .foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.37, blue: 0.27, alpha: 1)))
            Text("Data here.")
                .font(Font.custom("Roboto-Bold", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0.07, green: 0.37, blue: 0.27, alpha: 1)))
            Spacer()
        }
        .padding()
        .frame(width: 420, height: 900)
        .background(Color(#colorLiteral(red: 0.95, green: 0.92, blue: 0.89, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Transportation_Previews: PreviewProvider {
    static var previews: some View {
        Transportation()
    }
}
