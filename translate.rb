#!/usr/bin/env ruby
$: << File.join(File.expand_path(File.dirname(__FILE__)), 'lib')

require 'bel'
require 'bel2'

file, from_format, to_format = *ARGV
BEL::Translation.translate(File.open(file, :ext_enc => 'UTF-8'), from_format, to_format, $stdout)
