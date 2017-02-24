require 'rubygems'
require 'interactive_editor'
require 'irb/completion'

begin
  require 'ap'
rescue LoadError
  require 'pp'
end

# irb history
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irbhistory")
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

module Enumerable
  def frequencies
    self.inject({}) do |counts, elem|
      counts[elem] ||= 0
      counts[elem] += 1
      counts
    end
  end
end
