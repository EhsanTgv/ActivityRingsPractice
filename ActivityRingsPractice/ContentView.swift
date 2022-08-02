//
//  ContentView.swift
//  ActivityRingsPractice
//
//  Created by Ehsan Taghavi on 2.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Ring(
                lineWidth: 50,
                backgroundColor: Color.blue.opacity(0.2),
                foregroundColor: Color.blue,
                percentage: 50
            )
            .frame(width: 300, height: 300)
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
