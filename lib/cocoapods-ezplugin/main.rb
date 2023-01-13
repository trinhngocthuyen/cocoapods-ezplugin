fname = [
  "ezplugin.rb",
  ".ezplugin.rb",
].find { |fname| File.exist?(fname) }

require File.join(".", File.basename(fname, ".*")) unless fname.nil?
