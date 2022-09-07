- What is ORM in Rails?
```ruby
ORM tends for Object-Relationship-Model, it means that your Classes are mapped to table in the database, and Objects are directly mapped to the rows in the table.
```

- What is Active Record?
```ruby
Active Record are like Object Relational Mapping(ORM), where classes are mapped to table and objects are mapped to colums in the table
```

- What is bundler?
```ruby
- Bundler helps to you manage your gems for the application.
- After specifying gems in your Gemfile, you need to do a bundle install. If the gem is available in the system, bundle will use that else it will pick up from the rubygems.org.
```

- What is Ruby Gems?
```ruby
Ruby Gem is a software package, commonly called a “gem”. Gem contains a packaged Ruby application or library. The Ruby Gems software itself allows you to easily download, install and manipulate gems on your system.
```

- What is Gemfile and Gemfile.lock?
```ruby
- The Gemfile is where you specify which gems you want to use, and lets you specify which versions.
- The Gemfile.lock file is where Bundler records the exact versions that were installed. This way, when the same library/project is loaded on another machine, running bundle install will look at the Gemfile.lock and install the exact same versions, rather than just using the Gemfile and installing the most recent versions.
```

- What is the difference between a plugin and a gem?
```ruby
- A gem is just ruby code. It is installed on a machine and it’s available for all ruby applications running on that machine.
- Rails, rake, json, rspec — are all examples of gems.
- Plugin is also ruby code but it is installed in the application folder and only available for that specific application.
Sitemap-generator, etc.
- In general, since Rails works well with gems you will find that you would be mostly integrating with gem files and not plugins in general. Most developers release their libraries as gems.
```

What is restful in rails
```ruby
Stands for REpresentational State Transfer
```

What is the difference between lambada and proc
```ruby
proc and Lambda are used to create code blocks. After creating them, we can pass them around our code, just like variables.
```

What is asset pipeline
```ruby
asset pipeline which enables proper organization of CSS and JavaScript
```

Difference between render and redirect?
```ruby
- Redirect is a method that is used to issue the error message in case the page is not found or it issues a 302 to the browser. Whereas, render is a method used to create the content.

- Redirect is used to tell the browser to issue a new request. Whereas, render only works in case the controller is being set up properly with the variables that needs to be rendered.

- Redirect is used when the user needs to redirect its response to some other page or URL. Whereas, render method renders a page and generate a code of 200.

- Redirect is used as:
redirect_to: controller => 'users', :action => 'new'

- Render is used as:
render: partial
render: new -> this will call the template named as new.html without the need of redirecting it to the new action.
```

What are helpers and how to use helpers in ROR?
```ruby
- Helpers (“view helpers”) are modules that provide methods which are automatically usable in your view. They provide shortcuts to commonly used display code and a way for you to keep the programming out of your views.
- The purpose of a helper is to simplify the view.
- It’s best if the view file (HTML/XML) is short and sweet, so you can see the structure of the output.
```


- What is the difference between symbol and string?
```ruby
- Symbols have two nice properties compared to strings which can save you memory and CPU time.
- The difference remains in the object_id, memory and process time for both of them when used together at one time.
- Strings are considered as mutable objects. Whereas, symbols, belongs to the category of immutable
- Strings objects are mutable so that it takes only the assignments to change the object information. Whereas, information of, immutable objects gets overwritten
```

- Ruby Supports Single Inheritence/Multiple Inheritence or Both?
```ruby
A. Ruby Supports only Single Inheritnece
```

- Difference between puts and print
```ruby
"puts" adds a newline to the end of the output. "print" does not.
```
- What is TDD and BDD?
```ruby
Test-Driven-Development and Behavior-Driven-Development
```

- How do you sort an Array of objects by a particular attribute? What is a better way to do sorting with ActiveRecord?
```ruby
users = users.sort_by &:lastname
users.sort_by! {|u| u.lastname}
```

- Walk through the flow of a request through Rails.
```ruby
* Web Browser - The browser makes the request, usually on behalf of the user when they click on a link.
* Web Server - The web server takes the request and sends it to the Rails application.
* Router - The router, the first part of the Rails application that sees the request, parses the request and determines which controller/action pair it should call.
* Controller - The controller is called. The controller's job is to retrieve data using the model and send it to a view.
* Model - If any data needs to be retrieved, the model is used to get data from the database.
* View - The data is sent to a view, where HTML output is generated.
* Web Server - The generated HTML is sent back to the server, Rails is now finished with the request.
* Web Browser - The server sends the data back to the web browser, and the results are displayed.
```


What is a class?
What is the difference between a class and a module?
What is an object?
How would you declare and use a constructor in Ruby?
How would you create getter and setter methods in Ruby?
Describe the difference between class and instance variables?
What are the three levels of method access control for classes and what do they signify?
What does ‘self’ mean?
Explain how (almost) everything is an object in Ruby.
Explain what singleton methods are. What is Eigenclass in Ruby?
Describe Ruby method lookup path.
Describe available Ruby callbacks. How can we use them in practice?
What is the difference between Proc and lambda?


What is ActiveJob? When should we use it?
What is Asset Pipeline?
Explain the difference between Page, Action, Fragment, Low-Level, SQL caching types.
What is a Rails engine?

Provide an example of RESTful routing and controller.
Describe CRUD verbs and actions.
How should you test routes?
How should you use filters in controllers?
What are Strong Parameters?
What do we need to test in controllers?
How should you use content_for and yield?
How should you use nested layouts?


SHARE


We at RubyGarage want to share our knowledge about how to interview a Ruby on Rails developer. Since our main purpose is to sell great code, we require great coders.

This article will come in handy for you when you need to test a Ruby on Rails programmer but aren’t sure what questions to ask the Rails interviewee. You can consider this article as a guide for how to interview a Ruby on Rails programmer.

We’re not going to include all the questions you could ask, as that would take more than one article. For example, we decided to omit questions about code idioms and cunning expressions in Ruby. Also, we don’t want to give away all the questions which we might ask during an interview with a developer. We don't want a developer to simply look for answers on the Internet, as our main purpose is to ensure that we check the developer's grasp of the language and framework. We merely want to see how a Ruby software engineer expounds their knowledge of the domain.

Now let's chalk out the structure of a Ruby on Rails interview. The article will be divided into several parts since we usually check separate domains of knowledge. Here is the structure we typically use:

Ruby questions;
Ruby on Rails questions;
A pair programming task;
A home task.
Now it’s time to start asking questions to your Ruby on Rails developer to find out what they know!

Ask Ruby Questions to Test a Web Developer
Why do we ask Ruby-related questions to a Ruby on Rails developer? Because the Rails framework is written in Ruby. This means that when we write code for Ruby on Rails, we’re using Ruby. The main issue we encounter with Ruby on Rails programmers is actually that they don’t completely understand the basics – the programming language itself. We want to hire forward-thinking software engineers who will create high-quality code, and so we want to assess their Ruby competence.

Ruby questions to a Ruby on Rails developer
Our Ruby interview questions usually concern the Object Oriented Programming paradigm and object oriented design patterns. Class hierarchies, encapsulation, inheritance, and polymorphism are key concepts that every Ruby on Rails web developer should know well.


If you have no idea about object-oriented design principles, check this in-depth article. We’ve included useful examples.

If a programmer correctly answers a list of questions similar to the ones below, then we move forward. Quality preparation for a job interview is important for a Ruby programmer. So if they can’t answer the following questions satisfactorily, then the interview is already over.

What is a class?
What is the difference between a class and a module?
What is an object?
How would you declare and use a constructor in Ruby?
How would you create getter and setter methods in Ruby?
Describe the difference between class and instance variables?
What are the three levels of method access control for classes and what do they signify?
What does ‘self’ mean?
Explain how (almost) everything is an object in Ruby.
Explain what singleton methods are. What is Eigenclass in Ruby?
Describe Ruby method lookup path.
Describe available Ruby callbacks. How can we use them in practice?
What is the difference between Proc and lambda?
The Second Series of Ruby Questions: Business Applications
Knowing the basics isn't enough to work for RubyGarage or for any other serious web development company. A programmer should also be able to explain how to write code for business applications. Since Rack is a very popular interface that makes it possible to develop an application in Ruby, we ask specific questions about it. Here are four possible questions and challenges:

What is Rack?
Explain the Rack application interface.
Write a simple Rack application.
How does Rack middleware works?
The Third Series of Ruby Questions: Ruby Gems
Ruby is a very popular programming language and it has a huge community of developers who create numerous helpful libraries. We at RubyGarage love gems because they simplify and accelerate the work process. Third-party code helps us develop web applications quickly and smoothly.


Grab this collection of Ruby gems to boost the productivity of your project.

In this part of the Ruby on Rails interview, we want to learn how a Ruby web developer perceives the basic structure of a gem library. A programmer will use multiple gems when building applications on the job, which is why it’s important for us to see if the developer can read and comprehend code written by other programmers. The interviewee should also describe RubyGems, which is a special system to create, implement, and share gems.

We have built up a series of four questions about Ruby gems:

What is RubyGems? How does it work?
How can you build your own Ruby gem?
Explain the structure of a Ruby gem.
Can you give me some examples of your favorite gems besides Ruby on Rails?
Ruby on Rails Interview Questions
Now it's time to plunge into the world of the Rails framework. A qualified developer should be familiar with the Model-View-Controller approach to building applications. The series of Ruby on Rails interview questions for experienced programmers is divided into three groups. First, we ask some general questions related to the Rails framework. Second, we want to see what the developer knows about routing, controllers, and views – the main parts of any business application.

And finally, the ActiveRecord-related questions let us test how the programmer understands the Model part of an application. In order to work efficiently, a developer should write as little configuration code as possible when making ActiveRecord models. We ask about the conventions used for implementing such logic as well.

Ruby on Rails interview questions
Top Ruby on Rails Interview Questions
What is ActiveJob? When should we use it?
What is Asset Pipeline?
Explain the difference between Page, Action, Fragment, Low-Level, SQL caching types.
What is a Rails engine?
Routing, Controllers, and Views
Provide an example of RESTful routing and controller.
Describe CRUD verbs and actions.
How should you test routes?
How should you use filters in controllers?
What are Strong Parameters?
What do we need to test in controllers?
How should you use content_for and yield?
How should you use nested layouts?

Active Record
Explain the Active Record pattern.
What is Object-Relational Mapping?
Describe Active Record conventions.
Explain the Migrations mechanism.
Describe types of associations in Active Record.
What is Scopes? How should you use it?
Explain the difference between optimistic and pessimistic locking.
