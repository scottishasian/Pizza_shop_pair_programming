require_relative('../models/pizza')
pizza1 = Pizza.new({
  "first_name" => "Walter",
  "last_name" => "White",
  "topping" => "Pepperoni",
  "quantity" => 1
})

pizza2 = Pizza.new({
  "first_name" => "Jesse",
  "last_name" => "Pinkman",
  "topping" => "Italian Sausage",
  "quantity" => 12
})

pizza3 = Pizza.new({
  "first_name" => "Super",
  "last_name" => "Mario",
  "topping" => "Bowser Special",
  "quantity" => 40
})

pizza1.save
pizza2.save
pizza3.save
