require "cucumber/rake/task"

task :default => [:firefox]


desc "Run tests in firefox"
Cucumber::Rake::Task.new(:firefox) do |task|
  task.cucumber_opts = ["-p firefox"]
end

desc "Run tests in chrome"
Cucumber::Rake::Task.new(:chrome) do |task|
  task.cucumber_opts = ["-p chrome"]
end

desc "Run tests in firefox with an iphones user agent"
Cucumber::Rake::Task.new(:mobile_user_agent) do |task|
  task.cucumber_opts = ["-p chrome"]
end

desc "Run tests in ie on a remote windows machine"
Cucumber::Rake::Task.new(:remote_ie) do |task|
  task.cucumber_opts = ["-p remote_ie"]
end

desc "Run tests in ie on a remote android device"
Cucumber::Rake::Task.new(:remote_android) do |task|
  task.cucumber_opts = ["-p remote_android"]
end

