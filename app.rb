# require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # There are 2 arrays with 2 types of hashes
  # What are the properties for each of the two types of hashes
  # 1.apartments have id, address, monthly_rent,square_feet
  # 2.tenants have id, name, age, apartment_id

# Use enumerables to -
  # Print all the addresses for the apartments
  addresses = apartments.map do |apartment|
        apartment[:address]
   end
    addresses

  # Print all the names for tenants
  names = tenants.map do |tenant|
      tenant[:name]
  end
   names

  # Print only apartments that are less then 700 in rent
  less_expencive_apartments = apartments.select do |apartment|
    apartment[:monthly_rent] < 700
  end
  less_expencive_apartments
  # Print only tenants that are over the age of 44
  tenants_over_forty = tenants.select do |tenant|
    tenant[:age] > 40
  end
  tenants_over_forty

  # Print only tenants that have an apartment id of 1
  tenants.each do |tenant|
      if tenant[:apartment_id] == 1
         tenant
      end
  end

  # Print all the tenants in order from youngest to oldest
  tenants_by_age = tenants.sort_by do |tenant|
    tenant[:age]
  end
  tenants_by_age


  # Print the names of all the tenants alphabetically
  tenants_by_name = tenants.sort_by do |tenant|
    tenant[:name]
  end
  puts tenants_by_name



  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  names.zip(addresses).each do |name, address|
    puts [name,address]
end


  # When printing all apartments, under each apartment print all of its tenants
# binding.pry

# puts "end of the code!"
