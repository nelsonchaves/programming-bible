# Star Wars Associations


| Table: | person |  |
|:-----|:--------|------:|
| id             | :bigint      | not null, primary key |
| name           | :string      | |
| species_id     | :bigint      | not null |
| created_at     | :datetime    | not null |
| updated_at     | :datetime    | not null |
| home_planet_id | :integer     | |

```ruby
rails g scaffold Person name
rails g model SubjectUser species:references user:references
rails migration - add_column :people, :home_planet_id, :integer, to_table: { foreign_key: :planets }
```
```ruby
class Person < ApplicationRecord
  belong_to :species
  # home_planet doesnt exist in a class so we pass the class_name for where home_planet is in
  belong_to :home_planet, class_name: 'Planet'
  has_many :person_films #on the has_many the name on the assocation will be plural
  has_many :films, through: :person_films
  has_one :senator, through: :home_planet
  has_many :citizens, through: :home_planet
end
```

| Table: | person_films |  |
|:-----|:--------|------:|
| id             | :bigint        | not null, primary key |
| person_id      | :bigint        | not null
| film_id        | :bigint        | not null
| created_at     | :datetime      | not null
| updated_at     | :datetime      | not null

```ruby
class PersonFilm < ApplicationRecord
  belong_to :person
  belong_to :film
end
```

| Table: | films |  |
|:-----|:--------|------:|
| id             | :bigint        | not null, primary key |
| title          | :string        | |
| created_at     | :datetime      |       not null
| updated_at     | :datetime      |       not null

```ruby
class Film < ApplicationRecord
  has_many :person_films
  has_many :people, through: :person_films
end
```

| Table: | planets |  |
|:-----|:--------|------:|
| id             | :bigint        | not null, primary key |
| name       | :string|
| created_at | :datetime  |        not null
| updated_at | :datetime   |       not null
| senator_id | :integer|

```ruby
class Planet < ApplicationRecord
  # senator doesnt exist in a class so we pass the class_name for where senator is in
  belong_to :senator, class_name: 'Person'
  has_many :citizens, class_name: 'Person', foreign_key: :home_planet_id
end
```

| Table: | species |  |
|:-----|:--------|------:|
| id             | :bigint        | not null, primary key |
| name       | :string|
| created_at | :datetime    |      not null
| updated_at | :datetime    |      not null

```ruby
class Species < ApplicationRecord
  has_many :people
end
```
