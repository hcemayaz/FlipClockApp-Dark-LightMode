//
//  ContentView.swift
//  FlipClock
//
//  Created by cemayaz on 17.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            ClockView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
