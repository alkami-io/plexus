desc "Start a Plexus"
task :start_plexus do
  puts "starting plexus"
  plexus_server = Plexus::IpAddress.new
  plexus_server.start_bound_server
end
