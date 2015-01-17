Redmine::Plugin.register :redmine_page_break_macro do
  name 'Redmine Page Break Macro'
  author 'Katsuya Hidaka'
  description 'Redmine plugin for adding page break macro that specify a page break position'
  version '1.0.0'
  requires_redmine '2.6'
  url 'https://github.com/hidakatsuya/redmine_page_break_macro'
  author_url 'https://twitter.com/hidakatsuya'
end

require_relative 'lib/page_break_macro'
