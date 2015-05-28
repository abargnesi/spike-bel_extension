module BEL
  module Translation
    include BEL::Extension::Format

    def self.translate(input, input_format, output_format, writer = nil)
      in_formatter  = BEL::Extension::Format.formatters_for(input_format) or
        raise FormatError.new(FORMAT_ERROR % input_format)

      out_formatter = BEL::Extension::Format.formatters_for(output_format) or
        raise FormatError.new(FORMAT_ERROR % output_format)

      objects = in_formatter.deserialize(input)
      output = out_formatter.serialize(objects, writer)
    end
  end
end
