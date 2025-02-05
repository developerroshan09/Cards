//
//  TextExtensions.swift
//  Cards
//
//  Created by Roshan Bade on 05/02/2025.
//

import Foundation
import SwiftUI

extension Text {
  func scalableText(font: Font = Font.system(size: 1000)) -> some View {
    self
      .font(font)
      .minimumScaleFactor(0.01)
      .lineLimit(1)
  }
}
