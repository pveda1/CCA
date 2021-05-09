//
//  Main.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/9/21.
//

import SwiftUI

struct Main: View {
    @State private var showingMap = true
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 350)
            
            Button(action: {
                self.showingMap.toggle()
            }){
                VStack {
                    Image("Pencil")
                }
            }
            Button(action: {
                self.showingMap.toggle()
            }){
                VStack {
                    Image("Location")
                }
            }
            
            if showingMap {
                ContentView()
            } else {
                Resources()
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
