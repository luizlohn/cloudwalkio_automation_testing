require 'cucumber/rake/task'

desc 'To run:'
task :run, [:ENV, :DEBUGGER, :PROFILE] do |_t, args|
  init = 'cucumber' \
      ' ENV=' + args[:ENV] +
      ' DEBUGGER=' + args[:DEBUGGER] +
      ' -p ' + args[:PROFILE]

  system(init)
end