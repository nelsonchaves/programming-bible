# Numbers



```ruby
# Make sure to add this first in the console to test it out
include ActionView::Helpers::NumberHelper
```
This helper method that takes an integer (positive and negative allowed) and returns the number as a price string. If the number is negative, it should return a message that says "Price is invalid!"
```ruby
number_to_currency(-1234567890.50, negative_format: "Price is invalid!")
# => "Price is invalid!"
```
```ruby
number_to_currency(1234567890, delimiter: "|")
# => "$1|234|567|890.00"

number_to_human(1234567890)
# => "1.23 Billion"

number_to_percentage(123)
# => "123.000%"

number_to_human_size(1234567890)
# => "1.15 GB"

number_to_phone(1001234)
# => "100-1234"

number_to_phone(1235551234, area_code: true)
# => "(123) 555-1234"

number_to_phone(1235551234, country_code: 1)
# => "+1-123-555-1234"
```
