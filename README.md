# Scaletor

Generate modal scales and chord voices in a type safe way.

## Usage

Generating a scale for a root note and mode couldn't be easier, simply call the following:

```swift
let root = Note("C")
let lydian = try Scaletor.generateScale(from: root, for: .lydian)
  .map(\.description)
  .joined(separator: " ")
print(lydian) // C D E F♯ G A B
```

## Installing

Scaletor can be installed using Swift Package Manager. To include it in your project, simply [add the Package](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using Xcode 11 or higher.

## Tests

Scaletor has a comprehensive test suite, which may be run either through Xcode or by running the following command in Terminal:

   $ swift test

## What's up with the name?

Scaletor is named after [Skeletor](https://en.wikipedia.org/wiki/Skeletor).
