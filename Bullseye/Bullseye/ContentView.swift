//
//  ContentView.swift
//  Bullseye
//
//  Created by Eugene Lo on 12/18/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT YOUR BULLSEYE AS CLOSE AS YOU CAN TO")
        .padding()
      Text("89")
      HStack {
        Text("1")
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
      }
      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
        Text("Hit me")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
