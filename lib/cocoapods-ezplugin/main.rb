fname = [
  "ezplugin.rb",
  ".ezplugin.rb",
].find { |name| File.exist?(name) }

require File.join(".", File.basename(fname, ".*")) unless fname.nil?
