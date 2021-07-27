worker_processes 4
working_directory "/home/ubuntu/cashtelex/" # available in 0.94.0+
listen "/tmp/unicorn.cashtelex.sock", :backlog => 72
timeout 560
pid "/home/ubuntu/cashtelex/pids/server.pid"
stderr_path "/home/ubuntu/cashtelex/log/unicorn.log"
stdout_path "/home/ubuntu/cashtelex/log/unicorn.log"
