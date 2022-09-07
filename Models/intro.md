# The Model
- It maintains the relationship between the objects and the database and handles validation, association, transactions, and more.
- Model names are singular.
- The Movie model automatically maps to the movies table.

- What things we can define in the model?
1. Validations (like validates_presence_of, numeracility_of, format_of etc.)
2. Relationships(like has_one, has_many, HABTM etc.)
3. Callbacks(like before_save, after_save, before_create etc.)
4. Suppose you installed a plugin say validation_group, So you can also define validation_group settings in your model
5. ROR Queries in Sql

- How many Types of Relationships does a Model has?
* (1) has_one
* (2) belongs_to
* (3) has_many
* (4) has_many :through
