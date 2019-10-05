desc "Start a Plexus"
task :start_plexus do
  puts "starting plexus"
  plexus_server = Plexus::Server.new
  plexus_server.start_server
end
