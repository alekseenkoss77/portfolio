# Minimal sample configuration file for Unicorn (not Rack) when used
# with daemonization (unicorn -D) started in your working directory.
#
# See http://unicorn.bogomips.org/Unicorn/Configurator.html for complete
# documentation.
# See also http://unicorn.bogomips.org/examples/unicorn.conf.rb for
# a more verbose configuration using more features.

app_path = "/home/renegade/projects/portfolio"

listen 20012 # by default Unicorn listens on port 8080
worker_processes 2 # this should be >= nr_cpus
listen "/home/renegade/projects/portfolio/tmp/sockets/unicorn.sock", :backlog => 64
pid "/home/renegade/projects/portfolio/tmp/pids/unicorn.pid"
stderr_path "/home/renegade/projects/portfolio/log/unicorn.log"
stdout_path "/home/renegade/projects/portfolio/log/unicorn.log"
