# Listing 5.1: season.rb
# obtain the current month
m = Time.new.month 

# # Set s equal to the current season in the Northern Hemisphere
s = if m < 4 
    "winter"
elsif m < 7
    "spring"
elsif m < 10 
    "summer"
else 
    "fall"
end 

# Display the value of s
puts s 
