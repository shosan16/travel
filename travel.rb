require "./methods"

require "pry"

plans = [
  {name: "沖縄旅行", price: 10000},
  {name: "北海道旅行", price: 20000},
  {name: "九州旅行", price: 15000},
]

disp_plan(plans)
chosen_plan = chosen_plan(plans)
selected_num_of_people = num_of_people
calculate_price(chosen_plan,selected_num_of_people)
