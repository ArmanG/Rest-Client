require "rest-client"


begin

	puts "Choose an option (1 or 2):"
	puts "1) Do a google search"
	puts "2) Ping a heroku app"

rescue

	retry if gets.chomp != '1' || gets.chomp != '2'
	
end

choice = gets.chomp

if choice.to_i == 1

	puts "What would you like to seach for?"
	query = gets.chomp
	query_lst = query.split(" ")

	result = RestClient.get 'https://www.google.ca/#q='
	result = result.to_s

	query_lst.each do |s|

		if query_lst.index(s) < querylst.length - 1
			result.concat(s + '+')
		else
			result.concat(s)
		end
	end

	return result

else

	puts "Whats the name of your app?"
	name = gets.chomp.downcase
	result = RestClient.get '.herokuapp.com'.prepend("#{name}")

	return result

end

