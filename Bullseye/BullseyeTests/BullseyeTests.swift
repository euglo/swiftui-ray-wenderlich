//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Eugene Lo on 12/20/21.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
  
  // Exclamation point: even though there may not be a value, we know there will be so treat it as it will be
  var game: Game!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    game = Game()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    game = nil
  }
  
  func testScorePositive() {
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95) // 5 points from 100
  }
  
  func testScoreNegative() {
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95) // 5 points from 100
  }
  
}
