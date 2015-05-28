require_relative 'bel2/core'
require_relative 'bel2/quoting'
require_relative 'bel2/model'
require_relative 'bel2/format'
require_relative 'bel2/translation'

BEL::Extension.load_extension('json/json', 'bel')
