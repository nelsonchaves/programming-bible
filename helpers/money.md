# Money

```ruby
# helper method that takes an integer (positive and negative allowed) and returns the number as a price string.
# If the number is negative, it should return a message that says "Price is invalid!"

include ActionView::Helpers::NumberHelper
number_to_currency(-1234567890.50, negative_format: "Price is invalid!")
```
