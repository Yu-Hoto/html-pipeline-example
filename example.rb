require 'html_pipeline'
require './auto_link_filter.rb'
require './new_line_filter.rb'
require './maximum_char_filter.rb'

pipeline = HTMLPipeline.new(text_filters: [HTMLPipeline::NewLineFilter.new, HTMLPipeline::MaximumCharFilter.new, HTMLPipeline::AutoLinkFilter.new])

if ARGV[0] == nil
  example_text = "Hello \n\n\n https://google.com!!! this text is very long. but, this pipeline output max 100 characters. over 100 character text adjust 100 character text."
else
  example_text = ARGV[0].gsub(/ *\\n+/, "\n")
end
p "BEFORE: #{example_text}"
p "AFTER : #{pipeline.call(example_text)[:output]}"
