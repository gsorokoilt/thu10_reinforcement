require 'httparty'

def password

  response = HTTParty.get('https://makemeapassword.org//api/v1/alphanumeric/json?c=10&l=12')


  parsed_response = JSON.parse(response.body)
  passwords = []

  parsed_response['pws'].each do |password|
    passwords.push(password)
  end

return passwords

end

puts password
