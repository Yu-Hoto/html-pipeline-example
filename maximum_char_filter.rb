require 'html_pipeline'

class HTMLPipeline::MaximumCharFilter < HTMLPipeline::TextFilter
  def call(doc, *context)
    doc.slice(0..99)
  end
end
