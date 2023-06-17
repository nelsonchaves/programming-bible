# Ordering Queries

This is the place holder conditions here to filter out the the most recent users who joined before this month.
You could fetch this in any order and then sort them in memory. It's more efficient to let the database do the sorting for you.

```ruby
User.where("created_at >= :this_month", { this_month: Date.today.beginning_of_month }).order(created_at: :desc)
```
