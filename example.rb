require 'html_pipeline'
require './auto_link_filter.rb'
require './new_line_filter.rb'
require './maximum_char_filter.rb'

pipeline = HTMLPipeline.new(text_filters: [HTMLPipeline::AutoLinkFilter.new, HTMLPipeline::NewLineFilter.new, HTMLPipeline::MaximumCharFilter.new])

if ARGV[0] == nil
  example_text = "Hello \n\n\n https://google.com!!! this text is very long. but, this pipeline output max 100 characters."
else
  example_text = ARGV[0].gsub(/ *\\n+/, "\n")
end
p "BEFORE: #{example_text}"
p "AFTER : #{pipeline.call(example_text)[:output]}"
