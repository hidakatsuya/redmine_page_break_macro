require 'redmine'

module PageBreakMacro
  def self.root
    @root ||= Pathname.new File.expand_path('..', File.dirname(__FILE__))
  end

  class ViewHooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      stylesheet_link_tag 'application', media: 'all', plugin: 'redmine_page_break_macro'
    end
  end

  module RedminePatch
    module ITCPDFPatch
      extend ActiveSupport::Concern

      included do
        alias_method_chain :formatted_text, :page_break_macro
      end

      def formatted_text_with_page_break_macro(text)
        html = formatted_text_without_page_break_macro(text)
        # Convert {{page_break}} tags to html tag
        html.gsub! /<p>\{\{page_break\}\}<\/p>/i,
                   '<div style="page-break-after:always;visibility:hidden;height:1px;"></div>'
        html
      end
    end
  end
end

Redmine::WikiFormatting::Macros.register do
  desc "Specify a page break position. Example:\n\n<pre>{{page_break}}</pre>"
  macro :page_break do |obj, args|
    '<div class="page-break"></div>'.html_safe
  end
end

Rails.configuration.to_prepare do
  # Apply plugin patches to Redmine core libraries
  module Redmine
    Export::PDF::ITCPDF.send :include, PageBreakMacro::RedminePatch::ITCPDFPatch
  end
end
