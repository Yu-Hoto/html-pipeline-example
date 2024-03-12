require 'html_pipeline'
require 'uri'

class HTMLPipeline::AutoLinkFilter < HTMLPipeline::TextFilter
  def call(doc, *context)
    reg = URI.regexp(%w[http https])
    doc.gsub(reg) { %{<a href="#{$&}" target="_blank">#{$&}</a>} }
  end
end
