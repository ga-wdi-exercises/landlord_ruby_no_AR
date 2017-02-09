require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = apartments.map do |a|
  Apartment.new a[:id], a[:address], a[:monthly_rent], a[:square_feet]
end

ruby_tenants = tenants.map do |t|
  Tenant.new t[:id], t[:name], t[:age], t[:apartment_id]
end

puts "Good day, Mr. Pizza. What would you like to do?"
puts "   1. List apartments"
puts "   2. List tenants"
puts
input = gets.chomp.to_i

if input == 1
  ruby_apartments.each{|a| p a}
elsif input == 2
  ruby_tenants.each{|t| p t}
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
    # There is a global method called `data`. This defines an apartments array and a tenants array, and it returns the hash, {apartments:apartments, tenants:tenants}. Each array's elements are hashes.
  # What are the properties for each of the two types of hashes
    # The apartment hashes have :id, :address, :monthly_rent, and :square_feet keys (properties). The tenant hashes have :id, :name, :age, and :apartment_id keys (properties).

# # Use enumerables to -
#   # Print all the addresses for the apartments
#   addresses = ruby_apartments.map{|apartment| apartment.address}
#   p addresses
#   # Print all the names for tenants
#   names = ruby_tenants.map{|tenant| tenant.name}
#   puts names
#   # Print only apartments that are less then 700 in rent
#   cheaper = ruby_apartments.select{|apartment| apartment.monthly_rent < 700}
#   puts cheaper
#   # Print only tenants that are over the age of 44
#   older = ruby_tenants.select{|tenant| tenant.age > 44}
#   puts older
#   # Print only tenants that have an apartment id of 1
#   id_1 = ruby_tenants.select{|tenant| tenant.id == 1}
#   puts id_1
#   # Print all the tenants in order from youngest to oldest
#   tenants_by_age = ruby_tenants.sort_by{|tenant| tenant.age}
#   puts tenants_by_age
#   # Print the names of all the tenants alphabetically
#   tenants_by_name = ruby_tenants.sort_by{|tenant| tenant.name}
#   puts tenants_by_name

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
