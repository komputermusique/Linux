require 'net/ssh'
Net::SSH.start("192.168.0.145", "alex", :password => "user") do |ssh|
  output = ssh.exec!("hostname")
  puts output
  pp output.exitstatus
end


