require 'mysql2'

client = Mysql2::Client.new(host: "127.0.0.1", username: "root", password: "password", port: 33066)
client.query('use mysql')
while(true) do
  t = Time.now
  client.query("SELECT * FROM user")
  puts "Time taken: #{Time.now - t}"
end