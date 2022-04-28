# Description of this chalange
# https://github.com/centeno/FirstApisulCodingDojo/blob/master/problem.txt

# These are price of tickets to:
# elderly: US$ 6.00
# kids: US$ 5.50
# students: US$ 8.00

# Every day in a week it's price off, each day change for specific target public

# On Monday:
# elderly, kids, students: 10% off

# On Tuesday:
# elderly and kids: 15% off
# students: 5% off 

# On Wednesday:
# elderly: 40% off
# kids: 30% off
# students: 50% off

# On Thursday:
# elderly and kids: 30% off

# On Friday
# kids: 11% off

# On Saturday, Sunday and Holliday:
# elderly: 5% off

# This briefing was copied unashamed manner from @dwildt
################################################################
# Presentation of the programming
puts ("Hello! Here you may know how much customer will pay for a ticket")
################################################################
# An instance of Time class created called today
today = Time.new
# From today.wday a number refer a day of weekday
weekday = today.wday
# case change a number to weekday specific
case weekday
when 0 
    today = "sunday" 
when 1 
    today = "monday"
when 2 
    today = "tuesday"
when 3 
    today = "wednesday"
when 4 
    today = "thursday"
when 5 
    today = "friday"
when 6 
    today = "saturday"
end
# From Time GEM it was defined a weekday 
puts ("Today is  #{today}")

################################################################
# A way to change the weekday defined by GEM Time
puts ("Do you want manipulating #{today} to another weekday? yes or no") 
change_today = gets.chomp.to_s

################################################################
# Just two answers are acceptable, yes or no
while (change_today != "yes") and (change_today != "no") do
      puts ("Do you want manipulating #{today} to another weekday?") 
      puts ("Please type yes or no") 
      change_today = gets.chomp.to_s
end

################################################################
# Conditional if yes to change weekday, manipulating this information
if change_today == "yes"
# A menu to choose a number according weekday
   puts ("Yes was typed, so it's allowed change weekday now.")
   puts ("According to this:")
   puts ("Type number: O = today is sunday")
   puts ("Type number: 1 = today is monday")
   puts ("Type number: 2 = today is tuesday")
   puts ("Type number: 3 = today is wednesday")
   puts ("Type number: 4 = today is thursday")
   puts ("Type number: 5 = today is friday")
   puts ("Type number: 6 = today is saturday")

# First variable #{today} is used to change a integer number according to weekday menu
   today = gets.chomp.to_i
    while (today < 0) and (today > 6) do
        puts ("Please, type any number in zero to six answer is allowed only in this range")
        today = gets.chomp.to_i
    end
# #{today} today in a select case when changing same first variable name of integer number, here storage a string data type
    case today
    when 0
     today = "sunday" 
     puts ("So, now you choose that today is sunday")
    when 1
     today = "monday"
     puts ("So, now you choose that today is monday")
    when 2
     today = "tuesday"
     puts ("So, now you choose that today is tuesday")
    when 3
     today = "wednesday"
     puts ("So, now you choose that today is wednesday")
    when 4
     today = "thursday"
     puts ("So, now you choose that today is thursday")
    when 5
     today = "friday"
     puts ("So, now you choose that today is friday")
    when 6
     today = "saturday"
     puts ("So, now you choose that today is saturday")
    else 
# Only seven days in a week, so if different from zero to six will be refused until validate
       while   
        (today != 0) and 
        (today != 1) and 
        (today != 2) and 
        (today != 3) and 
        (today != 4) and 
        (today != 5) and
        (today != 6)  do
        puts ("According to this:")
        puts ("Type number: O = today is sunday")
        puts ("Type number: 1 = today is monday")
        puts ("Type number: 2 = today is tuesday")
        puts ("Type number: 3 = today is wednesday")
        puts ("Type number: 4 = today is thursday")
        puts ("Type number: 5 = today is friday")
        puts ("Type number: 6 = today is saturday")
# #{today} to input an integer number inside a rage zero to six
        today = gets.chomp.to_i
            while (today < 0) and (today > 6) do
            puts ("Please, type any number in zero to six answer is allowed only in this range")
            today = gets.chomp.to_i
            end
       end
end

# #{today} integer number convert to a string with weekday name
        case today
        when 0
         today = "sunday" 
         puts ("So, now you choose that today is sunday")
        when 1
         today = "monday"
         puts ("So, now you choose that today is monday")
        when 2
         today = "tuesday"
         puts ("So, now you choose that today is tuesday")
        when 3
         today = "wednesday"
         puts ("So, now you choose that today is wednesday")
        when 4
         today = "thursday"
         puts ("So, now you choose that today is thursday")
        when 5
         today = "friday"
         puts ("So, now you choose that today is friday")
        when 6
         today = "saturday"
         puts ("So, now you choose that today is saturday")
        end
elsif 
    # Keeps the weekday insert by first data from Time.new Class
    change_today == "no"
    puts ("Weekday keeps on #{today}")
end

###############################################################
# Weekends and holidays are in the same price off rule

puts ("This #{today} is a holiday? Example: yes or no")
holiday = gets.chomp.to_s

while   (holiday != "yes") and (holiday != "no") do
        puts ("Please, only one these two answeres are acceptable: yes or no")
        holiday = gets.chomp.to_s    
end

if  holiday == "yes" 
    puts ("Ok, it's confirmed this #{today} is a holiday.")     
    holiday = true
elsif 
    holiday == "no"
    puts ("No, this #{today} it's not a holiday.")
    holiday = false  
end

###############################################################
# An important block of code to make date calculations from the birth date, separated by numbers

puts ("What is customer birth year? Example: 1988")
customer_birth_year = gets.chomp.to_i
    
while   (customer_birth_year < 1900) or (customer_birth_year > 2022) do
        puts ("Since 1900 until 2022 range of years allowed")
        customer_birth_year = gets.chomp.to_i
end

puts ("What is customer birth month? Example: 04 = April")
customer_birth_month = gets.chomp.to_i

while   (customer_birth_month < 1) or (customer_birth_month > 12) do
        puts ("Since 1 until 12 range of months of year allowed")
        customer_birth_month = gets.chomp.to_i
end

puts ("What is customer birth day? Example: 18")
customer_birth_day = gets.chomp.to_i

while   (customer_birth_day < 1) or (customer_birth_day > 31) do
        puts ("Since 1 until 31 range of days in a month allowed")
        customer_birth_day = gets.chomp.to_i
end

puts ("This is customer birthdate #{customer_birth_day}/#{customer_birth_month}/#{customer_birth_year}")

################################################################
# Converting seconds to years and calculating a number according to customer years old

require 'date'

def 
    age_in_years(day, month, year)   
    birthdate = Time.new(year, month, day)
    average_seconds_in_four_years = 31557600
    seconds = (Time.now - birthdate).to_i
    years_old = seconds / average_seconds_in_four_years
    years_old
end

###############################################################

customer_years_old = age_in_years(customer_birth_day, customer_birth_month, customer_birth_year)
puts ("Customer is #{customer_years_old} years old")

puts ("What's customer name?")
customer_name = gets.chomp.to_s

puts ("Customer #{customer_name} was born #{customer_birth_day}/#{customer_birth_month}/#{customer_birth_year} todays is #{customer_years_old} years old")

###############################################################
# A rule that defined kind of customer according to the years old

if
    (customer_years_old <= 12)
    customer_kid = true
    customer_elderly = false
    customer_teenager_adult = false
    puts ("Under or until twelve years old, it's classified kid")
    
    elsif
        (customer_years_old >= 55)
        customer_elderly = true
        customer_kid = false
        customer_teenager_adult = false
        puts ("From fifty five years old or above, it's classified a elderly")
    elsif
        (customer_years_old > 12) and (customer_years_old < 55)
        customer_teenager_adult = true
        customer_kid = false
        customer_elderly = false
        puts ("This customer can be classified a teenager, young adult or adult")
end

###############################################################
# Another rule to restrict the age of customer students 

if      customer_years_old < 7
        puts ("This customer is too young to be a student.")

elsif   customer_years_old > 7
        puts ("Is #{customer_name} student? Answer example: yes or no.")
        customer_student = gets.chomp.to_s
    
        while   (customer_student != "yes") and (customer_student != "no") do
                puts ("Please type yes or no, to confirm if a student")
                customer_student = gets.chomp.to_s
        end

        if      customer_student == "yes"
                customer_student = true
        
        elsif   customer_student == "no"
                customer_student = false
        end
end

##############################################################
# It is just a menu to show price list after compare discounts

puts (" ______________________________")
puts (" |    This is a price list    |")
puts (" |      Elderly: US$ 6.00     |")
puts (" |       Kids: US$ 5.50       |")
puts (" |     Students:_US$ 8.00     |")
puts (" | Elderly above 55 years old |")
puts (" |   Kids under 12 years old  |")
puts (" |____________________________|")

##############################################################
# On mondays and holidays

if (today == "monday") and (holiday == false) and (customer_elderly == true)
    puts ("#{customer_name} is a elderly so, pays 5.40 for a ticket")

    elsif (today == "monday") and (holiday == false) and (customer_kid == true)
        puts ("#{customer_name} is a kids so, pays 4.95 for a ticket")

    elsif (today == "monday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == true)
        puts ("#{customer_name} is a teenager or a young adult or adult and also student so, pays 7.20 for a ticket")
    
    elsif (today == "monday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == false)
        puts ("#{customer_name} is a teenager or young adult or adult and not a student so, no discounts")
    
    elsif (today == "monday") and (holiday == true) and (customer_elderly == true) and (customer_student == false)
        puts ("#{customer_name} is a elderly, when is a holiday like this monday pays 5.7 for a ticket")
end

##############################################################
# On tuesdays and holidays

if (today == "tuesday") and (holiday == false) and (customer_elderly == true)
    puts ("#{customer_name} is a elderly so, pays 5.10 for a ticket on tuesdays")

    elsif (today == "tuesday") and (holiday == false) and (customer_kid == true)
    puts ("#{customer_name} is a kid so, pays 4.68 for a ticket on tuesdays")

    elsif (today == "tuesday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == true)
    puts ("#{customer_name} is a teenager or a young adult or adult and also student so, pays 7.60 for a ticket on tuesdays")

    elsif (today == "tuesday") and (holiday == true) and (customer_elderly == true) and (customer_student == false)
    puts ("#{customer_name} is a elderly, when is a holiday like this tuesday pays 5.7 for a ticket")

end

##############################################################
# On wednesdays and holidays

if (today == "wednesday") and (holiday == false) and (customer_elderly == true)
    puts ("#{customer_name} is a elderly so, pays 3.6 for a ticket on wednesdays")

    elsif (today == "wednesday") and (holiday == false) and (customer_kid == true)
    puts ("#{customer_name} is a kid so, pays 3.85 for a ticket on wednesdays")

    elsif (today == "wednesday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == true)
    puts ("#{customer_name} is a teenager or a young adult or adult and also student so, pays 4.00 for a ticket on wednesdays")

    elsif (today == "wednesday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == false)
    puts ("#{customer_name} is a teenager or young adult or adult and not a student so, no discounts")

    elsif (today == "wednesday") and (holiday == true) and (customer_elderly == true) and (customer_student == false)
    puts ("#{customer_name} is a elderly, when is a holiday like this wednesday pays 5.70 for a ticket")

end

##############################################################
# On thursdays and holidays

if (today == "thursday") and (holiday == false) and (customer_elderly == true)
    puts ("#{customer_name} is a elderly so, pays 4.20 for a ticket on thursdays")

    elsif (today == "thursday") and (holiday == false) and (customer_kid == true)
        puts ("#{customer_name} is a kid so, pays 3.85 for a ticket on thursdays")

    elsif (today == "thursday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == false)
        puts ("#{customer_name} is a teenager or young adult or adult and not a student so, no discounts")

    elsif (today == "thursday") and (holiday == true) and (customer_elderly == true) and (customer_student == false)
        puts ("#{customer_name} is a elderly, when is a holiday like this wednesday pays 5.70 for a ticket")
end

##############################################################
# On fridays and holidays

if (today == "friday") and (holiday == false) and (customer_elderly == true)
    puts ("#{customer_name} is a elderly so, no discounts on fridays, holiday is exception")

    elsif (today == "friday") and (holiday == false) and (customer_kid == true)
    puts ("#{customer_name} is a kid so, pays 4.90 for a ticket on fridays")

    elsif (today == "friday") and (holiday == false) and (customer_teenager_adult == true) and (customer_student == false)
        puts ("#{customer_name} is a teenager or young adult or adult and not a student so, no discounts on fridays")

    elsif (today == "thursday") and (holiday == true) and (customer_elderly == true) and (customer_student == false)
        puts ("#{customer_name} is a elderly, when is a holiday like this friday pays 5.70 for a ticket")

end

##############################################################
# At weekends and holidays

if ((today == "saturday") or (today == "sunday") or (holiday == true)) and (customer_elderly == true)
    puts ("#{customer_name} is a elderly so, pays 5.70 for a ticket at weekends")

    elsif((today == "saturday") or (today == "sunday")) and (holiday == false) and (customer_kid == true)
    puts ("#{customer_name} is a kid so, no discounts at weekends and on holidays")

    elsif ((today == "saturday") or (today == "sunday")) and (holiday == false) and (customer_teenager_adult == true) and (customer_student == false)
    puts ("#{customer_name} is a teenager or young adult or adult and not a student so, no discounts at weekends and on holidays")
  
    elsif ((today == "saturday") or (today == "sunday")) and (holiday == false) and (customer_teenager_adult == true) and (customer_student == true)
    puts ("#{customer_name} is a teenager or young adult or adult and a student so, anyway at weekends and on holidays, no discounts")

end