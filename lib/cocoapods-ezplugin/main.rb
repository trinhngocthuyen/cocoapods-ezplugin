fname = [
  "ezplugin.rb",
  ".ezplugin.rb",
].find { |fname| File.exis?(fname) }

require File.join(".", File.basename(fname, ".*")) unless fname.nil?
