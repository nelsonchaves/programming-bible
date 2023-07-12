# Possessive Name

In this example, the ends_with? method is used to check if the name ends with an "s". If it does, an apostrophe (') is added after the name. Otherwise, an apostrophe followed by an "s" ('s) is added.
```ruby
name = "Phill"
possessive_name = "#{name}#{name.ends_with?('s') ? "'" : "'s"}"
```

```ruby
sentence = "This is #{possessive_name} pen."
puts sentence
```

Output:
```ruby
This is Phill's pen.
```
or
```ruby
This is Chaves' pen.
```
