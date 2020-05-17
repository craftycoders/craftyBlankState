# craftyBlankState


CraftyBlankState lets you elegantly handle blank screens for iOS apps. Makes your iOS app look profressionally done even though the reality is you just finished iOS Developement 101 yesterday. Fully customizable to handle different cases with built-in defaults. Completely adaptive to all devices and screen sizes.


## Installation
 
craftyBlankState is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:
 
```ruby
pod 'craftyBlankState'
```

## Implementation
Step 1: import `craftyBlankState` into your viewController or view.
```swift
import craftyBlankState
```
Step 2: Conform to the protocol `CraftyBlankStateable`. This will ask you to define which view it should use to display the blank state. 
```swift
class ViewController: UIViewController, CraftyBlankStateable {
    var blankStateView: CraftyBlankStateView! = CraftyBlankStateView()

}
```
or
```swift
class View: UIView, CraftyBlankStateable {
    var blankStateView: CraftyBlankStateView! = CraftyBlankStateView()
}
```
Step 3: Tag your view as the data source and call refresh. That's it! If the data source isn't defined, it will use the default image and message
```swift
override func viewDidLoad() {
    super.viewDidLoad()
    blankStateView.dataSource = self
    blankStateView.refresh()
}

extension ViewController: CraftyBlankStateDataSource {
    //dataSource methods will be automatically defined here
    //an enum and switch statement can be used if multiple blank state cases exist
    func image(in blankStateView: CraftyBlankStateView) -> UIImage? {
        return MyBlankStateImage
    }
    
    func message(in blankStateView: CraftyBlankStateView) -> String {
        return MyBlankStateMessage
    }
    
    func font(in blankStateView: CraftyBlankStateView) -> UIFont {
        return MyDesiredFont
    }
}
```
![](/Example/screenShot.png "craftyBlankState Sample") 

## Feature Requests
We've always valued the importance of sending the right message to users all the time. We designed this framework as flexible as possible without making your code looking like your mom's spaghetti. If you have features that you'd like to see on future versions, please throw in an issue and label it as a feature request. 

## Contributors
Well, just fork it. Send in a PR, describe what it does and how we should test it. 

## License

craftyBlankState is available under the MIT license. See the LICENSE file for more info.


