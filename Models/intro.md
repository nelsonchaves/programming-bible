# The Model
- It maintains the relationship between the objects and the database and handles validation, association, transactions, and more.
- Model names are singular.
- The Movie model automatically maps to the movies table.

What things we can define in the model?
```ruby
* Validations (like validates_presence_of, numeracility_of, format_of etc.)
* Relationships(like has_one, has_many, HABTM etc.)
* Callbacks(like before_save, after_save, before_create etc.)
* Suppose you installed a plugin say validation_group, So you can also define validation_group settings in your model
* ROR Queries in Sql
```

How many Types of Relationships does a Model has?
```ruby
* has_one
* belongs_to
* has_many
* has_many :through
```
