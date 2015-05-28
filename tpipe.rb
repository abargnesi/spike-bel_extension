#!/usr/bin/env ruby
$: << File.join(File.expand_path(File.dirname(__FILE__)), 'lib')

require 'bel'
require 'bel2'

from_format, to_format = *ARGV
BEL::Translation.translate($stdin, from_format, to_format, $stdout)
