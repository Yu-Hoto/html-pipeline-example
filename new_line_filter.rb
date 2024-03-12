require 'html_pipeline'

class HTMLPipeline::NewLineFilter < HTMLPipeline::TextFilter
  def call(doc, *context)
    doc.gsub(/(\r\n?|\n)+/, '\n')
  end
end

