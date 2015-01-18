# Redmine Page Break Macro

[![Build Status](http://img.shields.io/travis/hidakatsuya/redmine_page_break_macro.svg?style=flat)](https://travis-ci.org/hidakatsuya/redmine_page_break_macro)

Redmine plugin for adding page break macro that specify a page break position in wiki page.

Usage for `{{page_break}} macro`:

![How to use page break macro in wiki page](http://art37.photozou.jp/pub/683/3135683/photo/217402642_org.v1421552108.png)

Print in browser:

![Print in browser](http://art21.photozou.jp/pub/683/3135683/photo/217404253_org.v1421554083.png)

Export wiki page as PDF:

![Export wiki page as PDF ](http://art37.photozou.jp/pub/683/3135683/photo/217404643_org.v1421554762.png)

Exported PDF:

![Exported PDF](http://art29.photozou.jp/pub/683/3135683/photo/217404975_org.v1421555250.png)

## Supported versions

  * Redmine 2.6, trunk
  * Ruby 1.9.3, 2.2.0

## Install

`git clone` to `/path/to/redmine/plugins`.

    $ git clone https://github.com/hidakatsuya/redmine_page_break_macro.git /path/to/redmine/plugins

Or, download from [here](https://github.com/hidakatsuya/redmine_page_break_macro/releases), and create `/path/to/redmine/plugins/redmine_page_break_macro` directory.

Finally, restart Redmine.

## Uninstall

Remove `/path/to/redmine/plugins/redmine_page_break_macro`, then restart Redmine.

## Contribute

### How to test

    $ cd /path/to/redmine
    $ bundle install
    $ bundle exec rake redmine:plugins:test NAME=redmine_page_break_macro

### Pull Request

1. Fork it
2. Create your feature branch: `git checkout -b new-feature`
3. Commit your changes: `git commit -am 'add some new feature'`
4. Push to the branch: `git push origin new-feature`
5. Create new Pull Request

### Report bugs

Please report from [here](https://github.com/hidakatsuya/redmine_page_break_macro/issues/new). 

## Copyright

&copy; Katsuya HIDAKA. See MIT-LICENSE for further details.
