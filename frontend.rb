require 'unirest'

while true


  system 'clear'
  print "Enter a candidate name to search for: "
  candidate_name = gets.chomp
  response = Unirest.get("http://localhost:3000/candidates?search=#{candidate_name}")
  candidates = response.body["results"]

  candidates.each do |candidate|
    puts
    puts "=" * 200
    puts
    print "#{candidate["name"]} ran for the #{candidate["office_full"]}." 
    puts

  end
  puts "Press enter to search again. Enter 'q' if you'd like to exit."
  input = gets.chomp
  if input == "q"
    exit
  end
end