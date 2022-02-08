//
//  Shapes.swift
//  Bullseye
//
//  Created by Eugene Lo on 12/21/21.
//

import SwiftUI

struct Shapes: View {
  @State private var wideShapes = true
  @State private var scale = 1.0
  
  var body: some View {
    VStack {
      if !wideShapes {
        Circle()
          .strokeBorder(Color.blue, lineWidth: 20.0)
          .frame(width: 200.0, height: 100.0)
          .transition(.scale)
      }
      RoundedRectangle(cornerRadius: 20.0)
        .fill(Color.blue)
        .frame(width: wideShapes ? 200.0 : 100.0, height: 100.0)
//        .animation(.easeInOut, value: scale)
      Capsule()
        .fill(Color.blue)
        .frame(width: wideShapes ? 200.0 : 100.0, height: 100.0)
      Ellipse()
        .fill(Color.blue)
        .frame(width: wideShapes ? 200.0 : 100.0, height: 100.0)
      Button(action: {
        scale += 1
        withAnimation {
          wideShapes.toggle()
        }
      }) {
        Text("Animate!")
      }
    }
    .background(Color.green)
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
