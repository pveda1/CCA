//
//  LocationInfo.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/9/21.
//

import SwiftUI

struct LocationInfo: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("My Info Window")
                .font(.title)
            Button("Press to dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
        }
        
    }
}

struct LocationInfo_Previews: PreviewProvider {
    static var previews: some View {
        LocationInfo()
            .previewLayout(.fixed(width: 220, height: 100))
    }
}
