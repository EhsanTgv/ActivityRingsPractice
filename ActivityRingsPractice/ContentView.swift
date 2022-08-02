//
//  ContentView.swift
//  ActivityRingsPractice
//
//  Created by Ehsan Taghavi on 2.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State var percentage1: Double = 0
    
    var body: some View {
        ZStack{
            Ring(
                lineWidth: 40,
                backgroundColor: Color.blue.opacity(0.2),
                foregroundColor: Color.blue,
                percentage: percentage1
            )
            .frame(width: 300, height: 300)
            .onTapGesture {
                self.percentage1 = 100
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro")
                .preferredColorScheme(.dark)
        }
    }
}
