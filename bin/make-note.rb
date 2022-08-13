#!/usr/bin/env ruby

require 'optparse'
require 'date'
require 'erb'
require 'pathname'

options = {}
OptionParser.new do |opts|
  opts.banner = 'Usage: new-entry <title> [options]'

  opts.on('--professional=NAMESPACE', 'professional note namespace') do |n|
    options[:realm] = 'professional'
    options[:namespace] = n if n
  end

  opts.on('--personal=NAMESPACE', 'personal note namespace') do |n|
    options[:realm] = 'personal'
    options[:namespace] = n if n
  end

  opts.on('--knowledgebase=NAMESPACE', 'knowledgebase note namespace') do |n|
    options[:realm] = 'personal'
    options[:namespace] = n if n
  end

  opts.on('--date=DATE', 'date for note') do |d|
    options[:date] = Date.parse(d)
  end
end.parse!

date = options[:date] ? options[:date].strftime('%F') : Time.now.strftime('%F')
realm = options[:realm] || ENV["NOTES_DEFAULT_TYPE"] || 'personal'

if realm == 'professional'
  namespace = options[:namespace] || ENV['PROFESSIONAL_NAMESPACE']
  puts 'must include namespace' unless namespace
  exit
end

namespace ||= options[:namespace]

notes_directory = ENV["NOTES_DIRECTORY"]
if notes_directory.nil? || notes_directory.empty?
  puts 'must have NOTES_DIRECTORY env var set'
  exit
end

title = ARGV.join(' ')
if title.nil? || title.empty?
  puts 'must include title'
  exit
end

filename = Pathname.new(notes_directory) + realm + namespace.to_s + (date + '-' + title.gsub(' ', '-') + '.md')

template = ERB.new <<-TEMPLATE
# <%= title.capitalize %>
## Attendees
### <%= namespace&.capitalize || "Party" %>
* @attendee

### OTHERS

## characters
* character

## items
* item

## locations
* location

## Agenda
* agenda

## Documents
* link

## Summary
* event

## Action Items
* [ ] @attendee to schedule next meeting

## Decisions
* [ ] consequence
TEMPLATE

File.open(filename, 'a') { |f| f.puts(template.result(binding)) }
puts "created #{filename}"
