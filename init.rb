#
# vendor/plugins/redmine_wiki_html_util/init.rb
#
require 'redmine'
require 'open-uri'

Redmine::Plugin.register :redmine_gist do
  name 'Redmine Wiki HTML Util'
  author 'Arlo Carreon'
  author_url 'http://www.arlocarreon.com/'
  description 'Allows you to embedd RAW HTML into your wiki, load stylesheets and javascript.  Made for html/css/js demo wikis'
  version '0.0.1'

  Redmine::WikiFormatting::Macros.register do
    desc "Embed raw html"
    macro :html do |obj, args|
        result = "<div>"+args[0]+"</div>"
        result
    end	
  end
	
	Redmine::WikiFormatting::Macros.register do
    desc "Embed raw css"
    macro :css do |obj, args|
        result = "<style>"+args[0]+"</style>"
        result
    end	
  end
	
	Redmine::WikiFormatting::Macros.register do
    desc "Insert a CSS file into the DOM"
    macro :css_url do |obj, args|
        result = "<script> var head = document.getElementsByTagName('head')[0], t = document.createElement('link'); t.href = "+args[0]+"; t.media='all'; t.rel='stylesheet'; head.appendChild(t); </script>"
        result
    end	
  end
	
	Redmine::WikiFormatting::Macros.register do
    desc "Embed raw js"
    macro :js do |obj, args|
        result = "<script>"+args[0]+"</script>"
        result
    end	
  end
	
	Redmine::WikiFormatting::Macros.register do
    desc "Insert a JS file into the DOM"
    macro :js_url do |obj, args|
        result = "<script> var head = document.getElementsByTagName('head')[0], t = document.createElement('script'); t.src = "+args[0]+"; t.type='text/javascript'; head.appendChild(t); </script>"
        result
    end	
  end
	
end