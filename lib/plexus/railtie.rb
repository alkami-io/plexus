class Plexus::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/start_plexus.rake'
  end
end
