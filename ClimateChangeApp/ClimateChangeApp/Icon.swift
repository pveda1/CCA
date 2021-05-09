//
//  Icon.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/9/21.
//

import SwiftUI

struct Icon: View {
    var body: some View {
        ZStack {
            Image("Bubble")
            VStack {
                Text("San Francisco, California")
                    .font(.custom("Roboto-Bold", size: 12))
                Text("tap to view more")
                    .font(.custom("Roboto-Regular", size: 10))
                    .underline().foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.7, blue: 0.16, alpha: 1)))
            }
            .padding()
            
        }
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon()
            .previewLayout(.fixed(width: 170, height: 70))
    }
}
