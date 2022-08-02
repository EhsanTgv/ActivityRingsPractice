//
//  ContentView.swift
//  ActivityRingsPractice
//
//  Created by Ehsan Taghavi on 2.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State var percentage1: Double = 0
    @State var percentage2: Double = 0
    @State var percentage3: Double = 0

    var body: some View {
        ZStack{
            Ring(
                lineWidth: 30,
                backgroundColor: Color.blue.opacity(0.2),
                foregroundColor: Color.blue,
                percentage: percentage1
            )
            .frame(width: 140, height: 140)
            .onTapGesture {
                self.percentage1 = 70
            }
            Ring(
                lineWidth: 40,
                backgroundColor: Color.yellow.opacity(0.2),
                foregroundColor: Color.yellow,
                percentage: percentage2
            )
            .frame(width: 220, height: 220)
            .onTapGesture {
                self.percentage2 = 60
            }
            Ring(
                lineWidth: 40,
                backgroundColor: Color.red.opacity(0.2),
                foregroundColor: Color.red,
                percentage: percentage3
            )
            .frame(width: 300, height: 300)
            .onTapGesture {
                self.percentage3 = 80
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
