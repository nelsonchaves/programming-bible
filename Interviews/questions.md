- What is ORM in Rails?
```ruby
ORM tends for Object-Relationship-Model, it means that your Classes are mapped to table in the database, and Objects are directly mapped to the rows in the table.
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

- What is the difference between form_for and form_tag?
```ruby
- form_tag and form_for both are used to submit the form and it’s elements.
- The main difference between these two is the way of managing objects related to that particular model is different.
```
form_for
——-
We should use “form_for” tag for a specific model
It performs the “standard http post” which is having fields related to active record (model) objects

form_tag:
—–
It creates a form as a normal form. form_tag also performs the “standard http post” without any model backed and has normal fields. This is mainly used when specific data need to be submitted via form.
It just creates a form tag and it is best used for non-model forms.

Example:

<% form_tag ‘/articles’ do -%>
<%= text_field_tag “article”, “firstname” %>
<% end -%>




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
