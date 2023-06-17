# Model
- The models main purpose is to handle the storing and retrieval of the application's data
- Contains the data of the application (in the DB)
- 99% of the time the storage is a database but it doesn't have to be
- Provides data to the Controller
- handles business logic that is closely related to the data but you should not put all your business logic in the model. Just the parts that are closely related to the data
- Has no knowledge about the view

# View
- Has no knowledge about the Model
- Builds the page using data from the Controller
- The view has access to all the instance variables defined in the controller
- It is the User's interface
- Returns the result to the Controller

# Controller
- Handles the request form the browser
- Fetches data from the Model
- Provides data to the View
- Returns the response to the Browser
- it talks to the model and the view
- The controller gets the data from the model
- the controller passes the data to the view by assigning to an instance variable

structure_1
