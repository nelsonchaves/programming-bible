# StimulusJS
- It's a small JavaScript framework that works hand in hand with Hotwire to enhance the capabilities of your application even more as opposed to all the other JavaScript Frameworks out there, stimulus JS takes a different approach.
- It leverages rails capabilities for rendering the page and enhances the existing HTML instead of Reinventing the wheel.
- It connects JavaScript objects which are called controllers to elements on the page.

To generate a Stimulus JS controller, you can use the Rails generator.
```ruby
rails generate stimulus test
```
```javascript
// app/javascript/test_controller.js
import { Controller } from "@hotwired/stimulus"

  // Connects to data-controller="test"
  export default class Controller {
    connect()
  }
  static targets = ["text"];

  hello() {
    console.log("Button clicked!");
    console.log("You typed: " + this.textTarget.value);
  }
}
```
Inside the controller file there's some code for creating a class that inherits from the stimulus controller class and the _connect method_ that is called every time the controller is connected to a _DOM element_. You can connect the controller to an element by setting the elements data controller attribute.

The _connect method_ used is a lifecycle callback method which is called every time the stimulus controller connects to a _DOM element_.
 Stimulus provides 2 more lifecyle callbacks called _**initialize**_ which is called just once the controller is initialized and _**disconnect**_ and the controller is disconnected from a _DOM element_.
