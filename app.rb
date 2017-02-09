##################################
# 201702081919L  EL MIERCOLES   JAY
##################################



# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  DATA SHARES A COMMON KEY,
  APARTMENTS HAS "id":        {:id=>1, ...
                    # {:id=>1, :address=>"9841 Tanner Key", :monthly_rent=>606, :square_feet=>779},
  TENANTS HAS "apartment_id"  ... :apartment_id=>8}
                # {:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8},


  # What are the properties for each of the two types of hashes
    APARTMENTS HAS
        :id, :address, :monthly_rent, :square_feet
            # {:id=>1, :address=>"9841 Tanner Key", :monthly_rent=>606, :square_feet=>779},
    TENANTS HAS
        :id, :name, :age, :apartment_id
            # {:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8},


              # ---------------------------------
  require_relative "data"
  apartments = data[:apartments]
  tenants = data[:tenants]
  # Use enumerables to -
              # ENUMERABLES: # each  is an enumerable # users = ["Alice", "Bob", "Carol"] # users.each do |user| #  puts user # end
              # ALL
              # Print all the addresses for the apartments
              puts ''
              apartments.each do |apartment|
              # puts apartment                    # {:id=>19, :address=>"72108 Leuschke Greens", :monthly_rent=>661, :square_feet=>967} # {:id=>20, :address=>"4705 Rosenbaum Ville", :monthly_rent=>993, :square_feet=>1168} #   Wed Feb 08 11:50:12 ~/wdi/homework/due_201702090900L/landlord_ruby_no_AR (master *)
              # puts "apartments_address: #{apartment[:address]}"  # [22] pry(main)*   puts "unit Addr: #{apt[:address]}" [22] pry(main)* end unit Addr: 9841 Tanner Key unit Addr: 6971 Corwin Locks
              p    "apartment_address: #{apartment[:address]}"
            end

              # Print all the names for tenants
              puts ''
              tenants.each do |tenant|
              puts "tenant_name: #{tenant[:name]}}"  # THIS WORKS THANKS TO WILL


              # SELECT
              # Print only apartment that are less then 700 in rent
              puts ''
              apartment =  apartments.select do |apartment|
                apartment[:monthly_rent] < 700
                  # puts "apartments_cheap: #{apartment[:address]}"
                  p     "apartment_cheap:  #{apartment[:address]}"
              end


              # SELECT
              # Print only tenants that are over the age of 44
              puts ''
              tenant = tenants.select do |tenant|
                tenant[:age] > 44
              # puts "tenants_44: #{tenants44[:name]}" # puts "tenants_44: #{tenants44[:name][:age]}" # puts "tenants_44: #{tenants44[:name]} , #{tenants44[:age]}" # puts "tenants_44: name: #{tenants44[:name]} , age: #{tenants44[:age]}"
              p    "tenant_44: name: #{tenant[:name]} , age: #{tenant[:age]}"
            end

              # SORT
              # WILLS SORT BY
              # Print the names of all the tenants alphabetically
              # names.sort_by {|h| h.keys[0]} # array_o f_hashes.sort_by { |hash| hash[:key_to_sort] } # search_results.sort_by { |user| user.age.to_i } # tenants.each do sort # sort { |a, b| block.bind(b).call <=> block.bind(a).call } # tenant = tenants.sort do |tenant| # sorted = dataarray.sort {|a,b| a[:zip] <=> b[:zip]} # people.sort_by { |k, v| v[:age] } # {:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8}, # tenants_alpha = tenants.sort {|id, name| v[:name]} do # tenants_alpha = tenants.sort {|id, name| v[name]} do |tenants_alpha| # tenants_alpha = tenants.sort_by {|tenants_alpha| tenants_alpha.name} do |tenants_alpha| # puts    tenants.sort_by {|tenant| tenant[:name]}  # THIS WORKS THANKS TO WILL # tenant_alpha = tenants.sort_by {|tenant| tenant[:name]} # p "tenant_alpha, by name: " + tenant_alpha # p "tenant_alpha, by name: #{tenant[:name]}"
              puts ''
              puts "WILLS SORT BY"
              puts "sort by name #{tenants.sort_by {|tenant| tenant[:name]}}"  # THIS WORKS THANKS TO WILL


              # SELECT
              # Print only tenants that have an apartment id of 1
              puts ''
              apartment_id_is_1 =  apartments.select do |apartment_id_is_1|
              apartment_id_is_1[:id] = 1
              p     "apartment_id_is_1:  #{apartment_id_is_1[:address]}"
            end

              # SORT
              # Print all the tenants in order from youngest to oldest
              puts ''
              puts "sort by age desc  #{tenants.sort_by {|tenant| tenant[:age]}.reverse}"  # THIS WORKS THANKS TO WILL


              ## More challenging
              # THIS ONE IS ONE STEP BEYOND FOR ME
              # RIGHT NOW AS IT REQ A JOIN BETWEEN THE ARRAYS ON
              # THE APT ID FIELD
              # SELECT
              # When printing tenants also print out the address that the tenants resides in.
              # puts ''
              # THIS ONE WORKS ONLY WHEN EVERYTHING ABOVE IS
              # COMMENTED
              tenants.each do |tenant|
                 apartments.each do |apt|# Prints all the names for tenants # When printing tenants also print out the address that the tenant resides in.
                   if tenant[:apartment_id] == apt[:id]
                   puts "#{tenant[:name]} #{apt[:address]}"
                   end
                 end
               end

              # When printing all apartments, under each apartment print all of its tenants
