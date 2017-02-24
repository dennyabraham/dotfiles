def loud_require(file)
  require file
rescue LoadError
  puts "failed to load #{file}"
end

loud_require 'rubygems'
loud_require 'interactive_editor'
loud_require 'irb/completion'
loud_require 'ap'

# irb history
loud_require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irbhistory")
IRB.conf[:AUTO_INDENT] = true

ARGV.concat ["--readline"]

module Enumerable
  def frequencies
    self.inject({}) do |counts, elem|
      counts[elem] ||= 0
      counts[elem] += 1
      counts
    end
  end
end
