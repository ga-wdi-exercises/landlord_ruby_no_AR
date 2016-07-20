require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
# apartments.each do |apartment|
#   puts apartment[:address]
# end
  # Print all the names for tenants
# tenants.each do |tenant|
#   puts tenant[:name]
# end
  # Print only apartments that are less then 700 in rent
# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
  # Print only tenants that are over the age of 44
# puts tenants.select {|tenant| tenant[:age] > 44}
  # Print only tenants that have an apartment id of 1
# puts tenants.select {|tenant| tenant[:id] == 1}
  # Print all the tenants in order from youngest to oldest
# puts tenants.sort{|left, right| left[:age] <=> right[:age]}
  # Print the names of all the tenants alphabetically
# puts tenants.sort{|left, right| left[:name] <=> right[:name]}
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
