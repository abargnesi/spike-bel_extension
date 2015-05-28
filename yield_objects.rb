#!/usr/bin/env ruby
$: << File.join(File.expand_path(File.dirname(__FILE__)), 'lib')

require 'pp'
require 'bel'
require 'bel2'

file, format  = *ARGV

bel_formatter = BEL::Extension::Format.formatters_for(format)
bel_formatter.deserialize(File.open(file, :ext_enc => 'UTF-8')).each do |ev|
  pp ev
end

