#!/usr/bin/env ruby

require 'fileutils'

FILETYPES = %w[pdf jpg png tif]

filenames = FILETYPES.map do |ext|
  Dir[Dir.pwd + "/*.#{ext}"]
end.flatten

moves = filenames.map do |filename|
  ext = File.extname(filename)
  source = File.basename(filename, '.*')
  destination = source.downcase.gsub(/[^a-z0-9]/, '-').gsub(/-+/, '-')
  [source + ext, destination + ext]
end

if filenames.size != moves.map(&:first).uniq.count ||
    filenames.size != moves.map(&:last).uniq.count
  puts 'collisions detected'
  puts moves.inspect

  exit
end

moves.each do |source, destination|
  FileUtils.mv(source, destination, noop: false, verbose: true)
end
