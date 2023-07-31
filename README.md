# Swift TODO

A simple todo application built with swiftUI and firebase

## Table of Contents
- [Demo](#-demo)
- [Features](#-features)
- [Technologies Used](#-technologies-used)
- [Installation & Usage](#-installation--usage)
- [Motivation](#-motivation)
- [Architecture/Design](#-architecturedesign)
- [Topics](#-topics-)
- [Packages Used](#-packages-used)
- [QA](#-qa)
- [Explore](#-explore-)
- [Issues](#-issues)
- [Contact](#-contact)
- [Related Projects](#-related-projects)
- [Acknowledgments](#-acknowledgments)

## 🎥 Demo

![Demo](https://github.com/alxayeed/iOS-todo/blob/main/ss/demo.gif)

<!--

## 🚀 Live Demo

🟢 [Google Play Store](https://play.google.com/store/apps/details?id=com.your_username.awesomeapp)

🍏 [Apple App Store](https://apps.apple.com/us/app/awesome-app/id1234567890)

Please note that the live demo may have limited features compared to the full version available in the GitHub repository.
-->

## 🚀 Features

- Authentication
- List existing todo items
- Add new item in the list
- Update status of an item
- Delete an item

## 🛠️ Technologies Used

- Swift
- Firebase

## 🚧 Installation & Usage

To use Awesome App in your own project, follow these steps:

1. Clone the repository: `git clone https://github.com/your_username/awesome-app.git`
2. Open the Xcode project: `cd awesome-app && open AwesomeApp.xcodeproj`
3. Build the project: Press `Command + B` or click the "Build" button in Xcode.
4. Run the app: Press `Command + R` or click the "Run" button in Xcode.


## 📃 Motivation

This project is built from personal interest to explore the world of Native iOS app development

## 🏛️ Architecture/Design

- MVVM

##  Topics 🌟
- Swift
- SwiftUI
- Xcode

## 📦 Packages Used

- [Firebase](https://firebase.google.com/) - Firebase core for backend services and data synchronization.

## ❓ QA

#### Q: Question 1?
<pre>
A: Answer 1.
</pre>

#### Q: Question 2?
<pre>
A: Answer 2.
</pre>



## 📖 Explore

#### protocol
A protocol in Swift is a blueprint or contract that defines a set of methods, properties, and other requirements that a class, struct, or enum must adopt and implement.

Example:
```
protocol Vehicle {
    var numberOfWheels: Int { get }
    func start()
    func stop()
}

class Car: Vehicle {
    let numberOfWheels = 4
    
    func start() {
        print("Car started.")
    }
    
    func stop() {
        print("Car stopped.")
    }
}

class Motorcycle: Vehicle {
    let numberOfWheels = 2
    
    func start() {
        print("Motorcycle started.")
    }
    
    func stop() {
        print("Motorcycle stopped.")
    }
}
```

In this example, we define a Vehicle protocol with three requirements: a numberOfWheels property and start() and stop() methods. The Car and Motorcycle classes adopt the Vehicle protocol by implementing its requirements. They provide their own implementation of the methods and properties defined in the protocol. Protocols allow us to create reusable and polymorphic code, enabling different types to conform to the same contract.

#### extension
n Swift, an extension allows you to add new functionality or behavior to an existing class, struct, enum, or protocol without modifying its original implementation.

Example:
```
// Original struct
struct Person {
    var name: String
}

// Extension adding a computed property and a method to the Person struct
extension Person {
    var greeting: String {
        return "Hello, my name is \(name)."
    }

    func sayHello() {
        print("Hello, I'm \(name).")
    }
}

let person = Person(name: "John")
print(person.greeting) // Output: "Hello, my name is John."
person.sayHello() // Output: "Hello, I'm John."
```
In this example, we define a Person struct with a name property. Then, using an extension, we add a computed property greeting and a method sayHello() to the Person struct. The extension allows us to enhance the functionality of the Person struct without modifying its original code.

Extensions are especially useful for:

Adding computed properties, instance methods, or type methods to existing types.
Implementing protocol conformance for types that didn't originally conform to the protocol.
Organizing and separating code into logical sections based on functionality.
Extensions are a powerful feature in Swift that promotes code modularity, readability, and reusability.

#### struct
In Swift, a struct is a value type that encapsulates data and behavior,
similar to a class, but with copy-by-value semantics.
```
struct Book {
    var title: String
    var author: String
}

var book1 = Book(title: "The Alchemist", author: "Paulo Coelho")
var book2 = book1 // Copying the struct

book1.title = "Harry Potter"

print(book1) // Output: Book(title: "Harry Potter", author: "Paulo Coelho")
print(book2) // Output: Book(title: "The Alchemist", author: "Paulo Coelho") (Unaffected by changes to book1)

```
- Structs are value types, meaning they are copied when assigned to another variable or passed as a parameter to a function.
- Instances of a struct are immutable by default if the struct is declared as a constant (using let). However, specific properties can be made mutable by marking them as var.
- Structs are stack-allocated and don't require memory management like classes.
- They can have properties, methods, and initializers like classes.
- A memberwise initializer is automatically provided by default, allowing you to create instances conveniently without writing a custom initializer.
- Structs are suitable for small, simple data types that don't require inheritance or reference semantics.
- Unlike classes, structs cannot inherit from other types, and they cannot be subclassed.
- When a struct instance is copied, all its properties are copied as well. Changes to one instance do not affect other instances.
- Structs are preferred for lightweight data types with copy-by-value semantics, and classes are used for reference semantics, inheritance, or more complex behaviors.

The choice between structs and classes depends on the specific use case and the behavior needed for your data types.
Structs are chosen for simplicity, immutability, and value semantics, while classes are used for reference semantics and more complex object-oriented designs.

#### Stored property
A stored property in Swift is a property that stores a value and has a fixed memory location within an instance.

Example:
```
struct Car {
    var make: String // Stored property to store the make of the car
    var model: String // Stored property to store the model of the car
}

var myCar = Car(make: "Toyota", model: "Camry")
print(myCar.make) // Output: "Toyota"
print(myCar.model) // Output: "Camry"
```

#### Computed property
A computed property in Swift is a property that doesn't store a value but provides a getter and an optional setter to compute its value on-the-fly based on other properties or logic.

Example:
```
struct Circle {
    var radius: Double
    
    // Computed property to calculate the area of the circle
    var area: Double {
        return Double.pi * radius * radius
    }
}

var circle = Circle(radius: 5.0)
print(circle.area) // Output: 78.53981633974483
```

- Codable
```
In Swift, "codable" is a protocol used to easily convert custom types to and from JSON representation,
allowing for seamless data encoding and decoding.

It's a combination of Encodable and Decodable
For example:

struct Person: Codable {
    var name: String
    var age: Int
}

let jsonString = "{\"name\":\"John\",\"age\":30}"
let jsonData = jsonString.data(using: .utf8)!

do {
    let person = try JSONDecoder().decode(Person.self, from: jsonData)
    print(person) // Output: Person(name: "John", age: 30)
} catch {
    print(error)
}
```
#### Identifiable
Identifiable is a protocol in Swift that provides a unique identifier for a type, allowing it to be easily identified and compared.

Example:
```
struct Person: Identifiable {
    var id: Int
    var name: String
}

let person1 = Person(id: 1, name: "John")
let person2 = Person(id: 2, name: "Jane")

print(person1.id) // Output: 1
print(person2.name) // Output: "Jane"

```
In this example, the Person struct adopts the Identifiable protocol by providing an id property. 
This allows instances of Person to be uniquely identified based on their id, 
which can be useful for operations such as comparisons or looking up specific objects in collections.

#### ObservableObject
ObservableObject is a protocol in SwiftUI that allows a class object to broadcast changes to its properties, enabling automatic UI updates.

Example:
```
import SwiftUI

class WeatherModel: ObservableObject {
    @Published var temperature: Double = 20.0
}

struct WeatherView: View {
    @ObservedObject var weatherModel = WeatherModel()

    var body: some View {
        VStack {
            Text("Current Temperature: \(weatherModel.temperature)°C")
            Button("Increase Temperature") {
                weatherModel.temperature += 1.0
            }
        }
    }
}
```
In this example, WeatherModel adopts the ObservableObject protocol, and the temperature property is marked with @Published. 
In the WeatherView, we use the @ObservedObject property wrapper to observe changes to the WeatherModel, and when the temperature is updated, the SwiftUI UI automatically reflects the new value.

#### @Published
@Published is a property wrapper in SwiftUI that automatically triggers object change notifications, enabling SwiftUI views to respond to updates to the annotated property.

Example:
```
import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = "Guest"
}

struct ProfileView: View {
    @ObservedObject var userData = UserData()

    var body: some View {
        VStack {
            Text("Username: \(userData.username)")
            TextField("Enter your username", text: $userData.username)
                .padding()
        }
    }
}

```
In this example, the UserData class adopts the ObservableObject protocol, and the username property is marked with @Published. When the username is updated, SwiftUI automatically triggers a UI update to reflect the new value in the ProfileView.

#### @ObservedObject
@ObservedObject is a property wrapper in SwiftUI that allows a view to observe changes to an observable object, and automatically update the view when the observed object's properties change.

Example:
```
import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = "Guest"
}

struct ProfileView: View {
    @ObservedObject var userData = UserData()

    var body: some View {
        VStack {
            Text("Username: \(userData.username)")
            TextField("Enter your username", text: $userData.username)
                .padding()
        }
    }
}
```

In this example, the UserData class adopts the ObservableObject protocol, and the username property is marked with @Published. The ProfileView uses @ObservedObject to observe changes to the userData instance. When the username property is updated, SwiftUI automatically updates the view to reflect the new value in the Text view and allows the user to input a new username in the TextField.



#### @StateObject
@StateObject is a property wrapper in SwiftUI that creates a new instance of an observable object and persists it throughout the view's lifecycle, preventing unnecessary reinitialization.

Example:
```
import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = "Guest"
}

struct ProfileView: View {
    @StateObject var userData = UserData()

    var body: some View {
        VStack {
            Text("Username: \(userData.username)")
            TextField("Enter your username", text: $userData.username)
                .padding()
        }
    }
}
```

In this example, the ProfileView uses @StateObject to create a new instance of UserData and ensures that it persists across view updates. This way, the userData instance retains its state, and the user's input in the TextField won't be lost when the view is refreshed.

#### Difference between @ObservedObject and @StateObject


|           | `@ObservedObject`                  | `@StateObject`                         |
|-----------|------------------------------------|---------------------------------------|
| Purpose   | Observe changes to an external object whose lifecycle is managed externally. | Observe changes to an object while ensuring its persistence throughout the view's lifecycle. |
| Ownership | SwiftUI does not retain ownership. | SwiftUI retains ownership.            |
| Recreate  | Recreated on view refresh.         | Persisted across view updates.        |
| Suitable For | External object passed to the view. | Object whose lifecycle is managed by SwiftUI within the view. |
| Property Type | Class conforming to `ObservableObject`. | Class conforming to `ObservableObject`. |

#### guard

guard is a control flow statement in Swift used for early exit from a function, method, or loop when a condition is not met.

Example:
```
func processNumber(_ number: Int?) {
    guard let unwrappedNumber = number else {
        print("Number is nil. Exiting...")
        return
    }

    // If the number is not nil, continue with further processing.
    print("Processing number: \(unwrappedNumber)")
}
```

In this example, the processNumber function uses guard to safely unwrap the optional number. If the number is nil, the guard statement will execute the code block inside the else clause, print the error message, and exit early from the function using the return keyword. If the number is not nil, the function will continue with further processing after the guard statement.

#### DispatchQueue.main.async
DispatchQueue.main.async is a way to schedule a closure to be executed asynchronously on the main thread in a multithreaded environment like iOS or macOS.

Example:
```
func updateUI() {
    // Perform UI updates on the main thread asynchronously
    DispatchQueue.main.async {
        // UI code here...
        label.text = "Updated Text"
        button.isEnabled = false
    }
}
```
In this example, DispatchQueue.main.async is used to update the UI components like label and button safely on the main thread. As UI updates should always be done on the main thread, using DispatchQueue.main.async ensures that the code block inside the closure is executed on the main thread, even if the updateUI() function is called from a background thread or a different queue. This helps to avoid UI-related issues and maintain a smooth user experience.


#### @ViewBuilder
@ViewBuilder is an attribute in SwiftUI that allows you to return multiple child views from a function or a computed property, simplifying view composition and construction.

Example:
```
import SwiftUI

struct ContentView: View {
    var isUserLoggedIn: Bool = true

    var body: some View {
        VStack {
            if isUserLoggedIn {
                showWelcomeMessage()
            } else {
                showLoginButton()
            }
        }
    }

    @ViewBuilder
    func showWelcomeMessage() -> some View {
        Text("Welcome, User!")
        Button("Logout") {
            // Perform logout action
        }
    }

    @ViewBuilder
    func showLoginButton() -> some View {
        Text("Please log in to continue.")
        Button("Login") {
            // Perform login action
        }
    }
}
```

In this example, the @ViewBuilder attribute allows the showWelcomeMessage() and showLoginButton() functions to return multiple views. Depending on the value of isUserLoggedIn, the appropriate view (either the welcome message or the login button) will be shown in the VStack of the ContentView. The @ViewBuilder attribute simplifies view composition and allows for a more concise and readable SwiftUI code.

#### @Binding
@Binding is a property wrapper in SwiftUI used to create a two-way connection between a property in a child view and its parent view, enabling changes made in the child to reflect in the parent.

Example:
```
import SwiftUI

struct ToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Toggle", isOn: $isOn)
    }
}

struct ContentView: View {
    @State private var toggleState = false

    var body: some View {
        VStack {
            ToggleView(isOn: $toggleState)
            Text("Toggle state: \(toggleState ? "On" : "Off")")
        }
    }
}
```

In this example, the ToggleView takes a @Binding property isOn. When the user toggles the switch inside ToggleView, the changes will be reflected in the parent view (ContentView) since the isOn variable is marked as @Binding. This allows for a bidirectional flow of data between the child and parent views.

#### @FirestoreQuery



## 📞 Contact

For any inquiries or collaboration requests, feel free to reach out via [email](mailto:alxayeed@gmail.com) or connect on [LinkedIn](https://www.linkedin.com/in/alxayeed).

## 📌 Related Projects

Check out our other awesome projects:
- [Emoji](https://github.com/alxayeed/swift-emoji-lover)


## 🙏 Acknowledgments

I would like to express our gratitude to the Flutter and Firebase teams for providing exceptional tools that made this project possible.
