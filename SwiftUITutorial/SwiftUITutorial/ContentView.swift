//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by okitsu teppei on 2020/08/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300.0)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Temmie san")
                    .font(.title)
                HStack {
                    Text("Temmie village")
                        .font(.subheadline)
                    Spacer()
                    Text("Waterfall")
                        .font(.subheadline)
                    
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
