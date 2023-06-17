# The Model
- The model primary goal is to talk with the database
- To do that it's Rails model is just a ruby object mapped to a database table and the columns of the table become the object's attributes.
- This technique is called ORM - Object Relational Mapping.
- Rails uses a framework called Active Record to achieve this mapping.
- It maintains the relationship between the objects and the database and handles validation, association, transactions, and more.
- Model names are singular.
- The Movie model automatically maps to the movies table.

# Active Record
### The Framework
Provides the
- mapping
- association - between the models to represent table relationships
- validation - of the data before it gets persisted to the database
- DB > OOP - It allows us to work with the database in a object oriented way through these objects called models.
- The ApplicationRecord inherets from the ActiveRecord base class. we get all the behavior is provides

##### What things we can define in the model?
- **bold**Validations - like validates_presence_of, validates_numericality_of, format_of etc.
- Relationships - like has_one, has_many, HABTM etc.
- Callbacks - like before_save, after_save, before_create etc.
- Suppose you installed a plugin say validation_group, So you can also define validation_group settings in your model
- ROR Queries in Sql


How many Types of Relationships does a Model has?

- has_one
- belongs_to
- has_many
- has_many :through
