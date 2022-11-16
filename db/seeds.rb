puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Peperroni = {name: "peperroni", address: "7 Boundary St, London E2 7JE", phone_number: "0633456376", category: "italian"}
Margarite = {name: "margarite", address: "Cooladresse", phone_number: "0633456356", category: "chinese"}
Jambon = {name: "Jambon", address: "5 rue pasteur", phone_number: "0633456390", category: "belgian"}
Fromagi = {name: "Fromagi", address: "33 rue coty", phone_number: "0633456456", category: "italian"}
Francecool = {name: "Francecool", address: "whatever", phone_number: "0633456654", category: "french"}

[Peperroni, Margarite, Jambon, Fromagi, Francecool].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
