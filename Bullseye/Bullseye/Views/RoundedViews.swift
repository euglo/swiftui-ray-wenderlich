//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Eugene Lo on 12/21/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .cornerRadius(50.0)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56.0, height: 56.0)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRectTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-0.2)
      .bold()
      .font(.title3)
      .frame(width: 68.0, height: 56.0)
      .cornerRadius(21.0)
      .foregroundColor(Color("TextColor"))
      .overlay(
        RoundedRectangle(cornerRadius: 21.0)
          .stroke(lineWidth: 2.0)
          .foregroundColor(Color("ButtonStrokeColor"))
      )
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
      RoundRectTextView(text: "3")
    }
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
