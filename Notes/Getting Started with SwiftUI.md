# Getting Started with SwiftUI

- Requires Xcode 12 or later
  - Shown on the client
- SwiftUI vs. UIKit
  - SwiftUI
    - Hot new way to create interfaces in Swift
    - UI is created completely in code, dynamically updated in Canvas Editor
    - Can get Canvas Editor to code directly on your behalf or code yourself
    - Easy to work with teams, port apps to MacOS, Watch OS, etc.
  - UIKit
    - Still valid way to create apps, developers still are using it
    - Why UIKit still?
      - SwiftUI only supports iOS 13 or later
      - SwiftUI is still early in development (2019) (UIKit out for 12 years), some companies want to give it time to grow
      - UIKit legacy code, hard to port over, many apps written in UIKit
  - Learn both
    - SwiftUI is the future of app development, can make knowledge future-proof
    - UIKit is important if you work for a company that's been around for a while
    - Can make certain part of app in UIKit
- Lesson Plan
  - First app - An app from scratch: must-haves to create MVP
  - First app - Polishing the app: nice-to-haves in programming TODO list, making app pretty
  - Programming in Swift: Fundamentals
  - Second app - habit tracking app
  - Programming in Swift: Functions and types
- Future learning paths: iOS User Interfaces, iOS Data and Networking, iOS IDEs and Tools
  - UIKit: iOS User Interfaces with UIKit
- Programming To-Do List
  - Segment app into milestones, get MVP while you continue to add new features
  - Break down into pieces, makes project a lot more daunting because you know where to start
  - "Must Haves"
    - Add an instruction label
    - Add a target label
    - Add a slider and make it go between the values 1 and 100
    - Add a "Hit Me" button
    - Style the text like Luke's design
    - Show a popup when the user taps the "Hit Me" button
    - Read the value after the user taps the "Hit Me" button
    - Generate a random number for the target value
    - Calculate and display the score
  - "Nice to Haves"
    - Implement multiple rounds
    - Implement restarting the game
    - Add the leaderboard screen
    - Make the app look pretty
- Views: anything that gets drawn on the screen
  - Button, text, slider
  - Any user interface control
  - Some act as containers for other views
  - Biggest view: screen itself
- Some views in SwiftUI

![Screen Shot 2021-12-18 at 1.17.53 PM](./Screen Shot 2021-12-18 at 1.17.53 PM.png)

- Text: Displays one or more lines of text

- Slider: Lets user slide a control (thumb) along a straight line track with minimum and maximum

- Button: Performs an action when you tap on it

  - Can put any view inside of a button, e.g. text

- Vertical Stack: VStack acts as container for other views (children). Arrange vertically

- Horizontal Stack: HStack acts as container for other views (children). Arrange horizontally

- Learning via repetition

- Understand auto-generated code, don't have to understand what's going on

- SwiftUI Views

  - `ContentView.swift`: Using the most for the beginning part of the course - file responsible for what the main screen looks like
  - Resume automatic preview
  - Can update views in the canvas or in the code
  - Plus → object library
  - Be careful of where to let go of dragged object
  - Can drag onto canvas or to code itself (start of line after, creates new line)
  - Button `action` default: block with no code
  - Landscape mode: `previewLayout``
  - ``ContentView_Preview`: Provides preview of app
  - Text dynamically resizes depending on dimensions
  - Run actual simulator using Play button
  - Rotate left and right, Cmd+< and Cmd+>

- View Modifiers

  - Modify style of view, e.g. opacity, box shadow, corner radius

  - Behind the scenes, adding a modifier means that SwiftUI creates a new modified version of the view the modifier is applied on

  - ![Screen Shot 2021-12-18 at 2.22.28 PM](/Users/owner/Desktop/Swift/Notes/Screen Shot 2021-12-18 at 2.22.28 PM.png)

  - ``` swift
    Text("100")
    	.opacity(0.5)
    	.border(Color.red, width: 2)
    ```

    - What will the border look like?
      - Opaque border, partially transparent
      - Order matters, switch the modifier order

- Some view modifiers in SwiftUI

  - Kerning, Bold, Font, Line Spacing, Multiline text alignment
  - Font spacing: iOS has a way to increase or decrease font sizing which is good for accessibility
    - Apple encourages to use preset font style for title, headlines, captions, etc.
  - Button to the right of preview on canvas lets you change size set in settings
  - Help -> developer documentation
  - `some View`: Any kind of view
  - `multilineTextAlignment` and `lineSpacing` work on any kind of view

- Objects, Data, and Methods

  - Group related data and functionality into small pieces
    - e.g. List of dogs - template with name and breed property
    - Create instances of template (filled in versions)
    - `class` and `struct`: structs in Swift are powerful so differences are more subtle
  - App is just a bunch of instances that communicate with each other
    - Instance of `Button` template inside `ContentView`
    - Declared struct called `ContentView` and described what its body will look like
  - `class`/`struct` can have data and functionality
    - Data: view to display, position, width, height
    - Functionality: recognize user tap, highlight self, trigger action
  - Method: provides functionality
    - `bold()` and `kerning()` were called on `Text` instance
    - Store data in structs using a property
    - Two types: **stored property** and **computed property**
      - Code to run to calculate piece of data
  - `some`: Can contain the type or something that behaves like the type
    - Same properties and methods
    - `body`: Basically a `VStack` with other views inside

- Solving Problem

  - Spelling, case sensitivity, missing closed parenthesis (go to first line of error), missing curly brace (check highlight)
  - Errors vs. Warning
    - Errors: fatal, cannot run program until you fix them
    - Warnings: information telling you what to fix