require 'html_pipeline'

class HTMLPipeline::NewLineFilter < HTMLPipeline::TextFilter
  def call(doc, *context)
    doc.gsub(/ *\n+/, "\n")
  end
end

