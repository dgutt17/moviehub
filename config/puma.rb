port ENV.fetch("PORT", 9292)
#bind "tcp://0.0.0.0:9292"

environment ENV.fetch("RACK_ENV", "development")

workers 1
threads 1, 5

preload_app!
