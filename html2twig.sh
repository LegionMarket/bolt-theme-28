#!/usr/bin/env bash
domain=$1
brand=$2
#Remove unwanted files and directories
find . -name '*DS_Store' -print0 | xargs -0 rm -rf
find . -name '*_MACOSX' -print0 | xargs -0 rm -rf
find . -name 'Sketch' -print0 | xargs -0 rm -rf
#find . -name '' -print0 | xargs -0

#html
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/"assets\//"{{ paths.theme }}assets\//g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/"css\//"{{ paths.theme }}css\//g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/"img\//"{{ paths.theme }}img\//g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/"images\//"{{ paths.theme }}images\//g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/"js\//"{{ paths.theme }}js\//g'

find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/"assets\//"{{ paths.theme }}assets\//g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/custom.css/trh.css/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/custom.js/trh.js/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/Pixeden/TextBlurb/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/www.templatemo.com/theme.legionmarket.com/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/plus.google.com\/+templatemo/theme.legionmarket.com/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/templatemo /LegionMarket /g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/fh5co/legionmarket/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/gettemplatesco/legionmarket/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/\&mdash\; Free Fully Responsive HTML5 Template by FREEHTML5.co/- \n{%- if record.title is defined %}{{ record.title|striptags }} | {% endif -%}\n{{ app.config.get('\''general\/sitename'\'') -}}\n{% if record.title is not defined and app.config.get('\''general\/payoff'\'') %} | {{ app.config.get('\''general\/payoff'\'') }}{% endif -%}\n/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/\&mdash\; Free Website Template, Free HTML5 Template by FREEHTML5.co/- \n{%- if record.title is defined %}{{ record.title|striptags }} | {% endif -%}\n{{ app.config.get('\''general\/sitename'\'') -}}\n{% if record.title is not defined and app.config.get('\''general\/payoff'\'') %} | {{ app.config.get('\''general\/payoff'\'') }}{% endif -%}\n/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/\&mdash\; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co/- \n{%- if record.title is defined %}{{ record.title|striptags }} | {% endif -%}\n{{ app.config.get('\''general\/sitename'\'') -}}\n{% if record.title is not defined and app.config.get('\''general\/payoff'\'') %} | {{ app.config.get('\''general\/payoff'\'') }}{% endif -%}\n/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/\&mdash\; Free Website Template, Free HTML5 Template by gettemplates.co/- \n{%- if record.title is defined %}{{ record.title|striptags }} | {% endif -%}\n{{ app.config.get('\''general\/sitename'\'') -}}\n{% if record.title is not defined and app.config.get('\''general\/payoff'\'') %} | {{ app.config.get('\''general\/payoff'\'') }}{% endif -%}\n/g'

find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/freehtml5.co/theme.legionmarket.com/g'

find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/2016/2017/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/2015/2017/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/2014/2017/g'
find . -name '*.html' -print0 | xargs -0 perl -pi -e 's/2013/2017/g'
## Branding CSS & JS
find . -name '*.css' -print0 | xargs -0 perl -pi -e 's/fh5co/legionmarket/g'
find . -name '*.scss' -print0 | xargs -0 perl -pi -e 's/fh5co/legionmarket/g'
find . -name '*.js' -print0 | xargs -0 perl -pi -e 's/fh5co/legionmarket/g'

# #Converting HTML to TWIG ext
find . -name '*.html' -print0 | xargs -0 rename .html .twig
# #Rename demo TRH
# find . -name 'custom.css' -print0 | xargs -0 rename demo.css trh.css
# find . -name 'custom.js' -print0 | xargs -0 rename demo.js trh.js
#cleanup
find . -name '*.bak' -print0 | xargs -0 rm
find . -name '*.pdf' -print0 | xargs -0 rm
find . -name '*change*.txt' -print0 | xargs -0 rm
