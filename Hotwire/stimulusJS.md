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
    connect() {
      console.log("Connected! YAY!");
    }
  }
```
Inside the controller file there's some code for creating a class that inherits from the stimulus controller class and the _**connect method**_ that is called every time the controller is connected to a _DOM element_. You can connect the controller to an element by setting the elements data controller attribute.

The _connect method_ used is a lifecycle callback method which is called every time the stimulus controller connects to a _DOM element_.

Stimulus provides 2 more lifecyle callbacks called _**initialize**_ which is called just once the controller is initialized and _**disconnect**_ and the controller is disconnected from a _DOM element_.

# Actions
With actions, you can handle specific DOM events (like click, submit, etc.)

In this example, we're adding a click handler, which calls the hello action on the test Stimulus controller.
But Stimulus also has actions which are basically just methods on the JavaScript object. but to stick with the rails naming conventions we'll go with _actions_. An _action_ can be called by using the data action attribute
```html
<!-- app/views/site/first.html.erb -->
<div id="someid" data-controller="test">
  <input type="text" data-test-target="text" />
  <button data-action="click->test#hello">Click Me!</button>
</div>
```
On the button we've set the data action to **"click->test#hello"** but what does that mean? There are 3 parts to this value.
- The 1st is the name of the event we want to handle. it's the **click event**
- Then you use an arrow **->** to separate the event name from the controller name and action.
- so the **test** here referes to the name of the stimulus controller and **hello** refers to the action we want to call.

Let's create that action on the controller now. The name of the _action_ will be **hello** and it will print a message to the console whenever we call it. When you click the button, you will see _"Button clicked!"_ in the console.
```javascript
// app/javascript/test_controller.js
import { Controller } from "@hotwired/stimulus"

  // Connects to data-controller="test"
  export default class Controller {
    connect() {
      console.log("Connected! YAY!");
    }

    hello() {
      console.log("Button clicked!");
    }
  }
```
# Targets
- Targets let you read data from different elements in the DOM.
- At some point you'll want to read some value from the DOM.
- That's where Targets come into play. They let you add references to the DOM elements which become properties in your stimulus controller.

In our example, we're reading whatever was typed in the **```input```** field by setting a ```data-test-target="text"``` attribute on the input field, and we're defining a static array of targets in the Stimulus controller.
