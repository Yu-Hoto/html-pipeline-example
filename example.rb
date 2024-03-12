require 'html_pipeline'
require './auto_link_filter.rb'
require './new_line_filter.rb'

autolink = HTMLPipeline::AutoLinkFilter.new
newline = HTMLPipeline::NewLineFilter.new

pipeline = HTMLPipeline.new(text_filters: [HTMLPipeline::AutoLinkFilter.new, HTMLPipeline::NewLineFilter.new])

if ARGV[0] == nil
  example_text = "Hello \n\n\n https://google.com!!!"
  p "BEFORE: #{example_text}"
  p "AFTER : #{pipeline.call(example_text)[:output]}"
else
  p "BEFORE: #{ARGV[0]}"
  p "AFTER : #{pipeline.call(ARGV[0])}"
end
