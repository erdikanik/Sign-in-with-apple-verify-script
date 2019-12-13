require 'jwt'

key_file = 'Keys file full name' #
ecdsa_key = OpenSSL::PKey::EC.new IO.read key_file

headers = {
    'kid' => 'Key ID'
}

claims = {
    'iss' => 'Your apple team id',
    'iat' => 1576252452,
    'exp' => 1586256052,
    'aud' => 'https://appleid.apple.com',
    'sub' => 'your bundle identifier or Service ID',
}

token = JWT.encode claims, ecdsa_key, 'ES256', headers

File.open('RUBI_output.txt', 'w') do |fo|
    fo.puts token
end

puts 'done'
