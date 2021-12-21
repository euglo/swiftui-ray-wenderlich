# Coding in Swift

- Swift Standard Library

  - Pre-defined functions and types
  - Knowing what's available: detailed developer documentation

- Unit Testing

  - Write code to test other code

  - Write once, use forever

  - Single responsibility

  - Built-in support

    - ``` swift
      class YourTestCaseName: XCTestCase {
        override func setUpWithError() throws {
          // Your code here
        }
        
        override func tearDownWithError() throws {
        	// Your code here  
        }
        
        func yourTestName() throws {
          // Your code here
        }
      }
      ```

  - Built in functions to compare expected with actual: **asserts**
    - XCTAssertTrue
    - XCTAssertEqual
    - XCTAssertGreaterThan
    - ... and more
    - `@testable import Bullseye`
      - `Bullseye` is a separate target from `BullseyeTests`

- Test-Driven Development

  - First, write test (test will fail)
  - Then, write code (such that test will pass)

- If/Else Statements

- Variables and Constants

  - Once you assign a constant, you can never assign again
  - Rule of thumb: prefer to use `let`

- Type Inference

  - Hold down option button on variable
  - Set it to an expression that evaluates to particular type
  - Funtion with only one line is assumed to be return value