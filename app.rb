require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # Both sets of data are stored in an array of hashes.
  # What are the properties for each of the two types of hashes
  # Properties of "apartments": id, address, monthly_rent, and square feet
  # Properties of tenats: id, name, age, and apartment ID which relates to the apartment data set

# Use enumerables to -
  # # Print all the addresses for the apartments
  # puts "Apartment Addresses--------------------------"
  # addresses = apartments.map{ |x| x[:address]}
  # puts addresses
  # # Print all the names for tenants
  # puts "Tenant Names---------------------------------"
  # tenant_names = tenants.each{ |x| puts x[:name]}
  # puts tenant_names
  # # Print only apartments that are less then 700 in rent
  # puts "Cheap Apartments-----------------------------"
  # cheap_apartments = apartments.select{ |x| x[:monthly_rent] < 700 }
  # puts cheap_apartments
  # # Print only tenants that are over the age of 44
  # puts "Old Tennats----------------------------------"
  # old_tenants = tenants.select{ |x| x[:age] > 44 }
  # puts old_tenants
  # # Print only tenants that have an apartment id of 1
  # puts "Tenants with Apt ID of 1---------------------"
  # apt_id_one = tenants.select{ |x| x[:apartment_id] == 1}
  # puts apt_id_one
  # # Print all the tenants in order from youngest to oldest
  # puts "Tenants, oldest to youngest------------------"
  # young_to_old = tenants.sort_by{ |x| x[:age]}
  # puts young_to_old
  # # Print the names of all the tenants alphabetically
  # puts "Tenants, alphabetically----------------------"
  # tenants_by_name = tenants.sort_by{ |x| x[:name]}
  # puts tenants_by_name
  #
  # ## More challenging
  # # When printing tenants also print out the address that the tenant resides in.
  # puts "Tenants and their address---------------------"
  # for i in tenants do
  #   i[:apartment] = nil
  #   tenant_apt_id = i[:apartment_id]
  #   apts = apartments.find{ |x| x[:id] == tenant_apt_id}
  #   i[:apartment] = apts[:address]
  #   puts i
  # end
  # # # When printing all apartments, under each apartment print all of its tenants
  # puts "Apartments and their Tenants------------------"
  # for i in apartments do
  #   i[:tenants] = nil
  #   apt_id = i[:id]
  #   apt_tenants = tenants.find_all{ |x| x[:apartment_id] == apt_id}
  #   i[:tenants] = apt_tenants.map{ |x| x[:name]}
  #   puts i
  # end

# App

puts '------------------'
puts '   Landlord App'
puts '------------------'

puts 'Options:'
puts '[1] View all apartments with tenants.'
puts '[2] View all tenants and their apartments.'

input = gets.chomp
if input == '1'
  for i in apartments do
    i[:tenants] = nil
    apt_id = i[:id]
    apt_tenants = tenants.find_all{ |x| x[:apartment_id] == apt_id}
    i[:tenants] = apt_tenants.map{ |x| x[:name]}
    puts "Appartment: #{i[:address]},   tenants: #{i[:tenants].join(', ')}"
  end

elsif input == '2'
  puts 'Enter tenant name'
  ten_name = gets.chomp
  ten_with_apt = []
  for i in tenants do
    i[:apartment] = nil
    tenant_apt_id = i[:apartment_id]
    apts = apartments.find{ |x| x[:id] == tenant_apt_id}
    i[:apartment] = apts[:address]
    ten_with_apt << i
  end
  answer = ten_with_apt.find_all{|x| x[:name] == ten_name}
  puts "Adress is: #{answer[0][:apartment]}"
end
