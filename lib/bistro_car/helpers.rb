module BistroCar
  module Helpers
    def coffee_script_bundle(*bundles)
      bundles = [:default, *bundles].map do |name|
        content_tag(:script, '', :src => url_for("/javascripts/bundle/#{name}.js"), :type => 'text/javascript', :charset => 'utf-8')
      end.join
      bundles.html_safe
    end
  end
end

ActionView::Base.send(:include, BistroCar::Helpers)
