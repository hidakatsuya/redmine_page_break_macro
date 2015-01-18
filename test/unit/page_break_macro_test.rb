require File.expand_path('../../test_helper', __FILE__)

class RedminePatchTest < ActiveSupport::TestCase
  def test_ITCPDF_formatted_text
    pdf = Redmine::Export::PDF::ITCPDF.new 'en'
    html = pdf.formatted_text('{{page_break}}')

    assert_equal '<div style="page-break-after:always;visibility:hidden;height:1px;"></div>', html
  end
end

class MacroTest < ActionView::TestCase
  include ApplicationHelper
  include ERB::Util

  def test_macro_page_break
    assert_equal '<p><div class="page-break"></div></p>', textilizable("{{page_break}}")
  end
end
