require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

ruby_apartments = apartments.each do |apartment|
  Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
end

ruby_tenants = tenants.each do |tenant|
  Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
end

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # ruby_apartments.each do |apartment|
  #     puts apartment[:address]
  # end
  # Print all the names for tenants
  # ruby_tenants.each do |tenant|
  #     puts tenant[:name]
  # end
  # Print only apartments that are less then 700 in rent
  # ruby_apartments.each do |apartment|
  #     if apartment[:monthly_rent] < 700
  #       puts apartment[:address]
  #     end
  # end
  # Print only tenants that are over the age of 44
  # ruby_tenants.each do |tenant|
  #     if tenant[:age] > 44
  #       puts tenant[:name]
  #     end
  # end
  # Print only tenants that have an apartment id of 1
  # ruby_tenants.each do |tenant|
  #     if tenant[:apartment_id] == 1
  #       puts tenant[:name]
  #     end
  # end
  # Print all the tenants in order from youngest to oldest
    # puts tenants.sort_by{ |tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
    # puts tenants.sort_by{ |tenant| tenant[:name].downcase }

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

  # - I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.

  # puts "Welcome to Landlord! Ready to begin? y/n"
  # user_input = gets.chomp
  #
  # # Let's get started
  # if user_input == "y"
  #   puts "Great! Let's get started!"
  #   puts "Press [1] to view all apartments and [2] to view all tenants."
  #
  #   options = gets.chomp
  #   # view all apartments
  #   if options == "1"
  #     apartments.each do |apartment|
  #       puts apartment[:address]
  #     end
  #   # view all tenants
  #   elsif options == "2"
  #     tenants.each do |tenant|
  #       puts tenant[:name]
  #     end
  #   else
  #     puts "Sorry, you didn't enter a valid option."
  #   end
  # else
  #   puts "Good-bye!"
  # end
