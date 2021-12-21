# SwiftUI Data

- Part Overview
  - Buttons and Actions
  - SwiftUI State
  - SwiftUI Bindings
  - Strings
  - Variables
  - Intro to App Architecture
  - Creating a Data Model
  
- Buttons and Actions
  - Functions: Methods that are not attached to an instance
    - `functionName(parameters)`
  - Methods: `Instance.methodName(parameters)`
  - `print()`: Prints text to console
  
- State
  - Numeric values: speed, fuel level, distance traveled
  - Boolean values: low oil, needs maintenance
  - All together: Visualization of car's **state**
  - By driver action...
    - Driver presses accelerator
    - Car moves faster
    - Dashboard updates -> Only helping driver help understand that fact
  - By internal circumstance
    - Car burns gas
    - Dashboard updates
  - What if state and dashboard are not in sync? Big problems
    - Corollary: UI does not reflect internal state of the app
    - SwiftUI: Forced to write apps in a way that user state and UI is always consistent
  - Hit me button: Set popup state to true
  - `@State` special keyword to annotate a state variable
    - When a state variable changes, we want the UI to update so they are always in sync
    - `private` is best practice to say that the variable is private to `ContentView`
    - `Bool`: Boolean type
    - `self`: This particular instance
  - Each @State variable will have an initial value
  - When app starts up, iOS calls body to get a "dashboard" based on current state
  - When alertIsVisible is set to true, iOS automatically refreshes the body for you
  - ![Screen Shot 2021-12-19 at 10.39.37 PM](/Users/owner/Desktop/Swift/Notes/Screen Shot 2021-12-19 at 10.39.37 PM.png)
  - `.alert(isPresented)`: Check when to display
    - `$alertIsVisible`: To create a binding for the state variable
  
- Bindings
  - Fancy way of saying a particular UI view will always be tied to a particular state value
  - Slider is bound to state variable, and vice versa
  
- Strings
  - Text surrounded by quotes
  - Sequence of characters
  - String interpolation: `"Hello, \(name)!"`
    - Dynamically evaluated at runtime
  
- Variables
  - Temporary storage data for a single piece of data
  - Slider value is changed every time slider is move
  - Different animals in a hat
  - Putting shapes into their correct holder
  - `@State private var variableName: Type = InitialValue`
    - `@State` only able to added in a property
  - Type safety: can't assign an int value to a double variable
  - Casting: convert from one time to another
  - Slider value stays throughout the lifetime of the app together with ContentView
  
- Intro to App Architecture
  - As app grows, it is too messy to put everything in ContentView
  - Hard to spot bugs and test
  - App architecture: The strategy to organize your code
  - Single Responsibility Principle
    - Each struct/class has one job
    - e.g. Parse file, authenticate user, perform calculation
    - ContentView: Display User Interface
      - Should not handle game logic
    - Easier to modify, understand, and test
  - Views and models - different types of class
    - View "has a" model, calls it whenever it needs to interact with/calculate data
    - Want model to not know about views, more reusable and testable
  
- Create a model

  - Method in Swift

  - ``` swift
    func yourMethodName(parameterName: ParameterType) -> ReturnType {
      // Your code here!
      return yourReturnValue
    }
    ```