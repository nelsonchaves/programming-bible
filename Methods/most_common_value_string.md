this goes in the model
```ruby
def self.most_common_string(array)
  return nil if array.empty?

  counts = Hash.new(0)
  array.each { |item| counts[item] += 1 }

  most_common = counts.max_by { |_key, value| value }
  most_common.first

end
```
This goes in the view
array = ["apple", "banana", "apple", "orange", "banana", "apple"]

```ruby
- most_common = Trade.most_common_string(@trades.wins.map(&:pair))
- if most_common
  %p
    The most common string is: #{most_common}
- else
  %p No strings found in the array.
```
