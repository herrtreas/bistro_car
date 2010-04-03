module BistroCar
  module Helpers
    def coffee_script_bundle(*bundles)
      bundles = [:default, *bundles].map do |name|
        content_tag(:script, '', :src => url_for("/javascripts/bundle/#{name}.js"), :type => 'text/javascript', :charset => 'utf-8')
      end.join
      bundles.html_safe!
    end

    def coffee_script(&block)
      output = BistroCar.compile(capture(&block))
      content_tag(:script, output, :type => 'text/javascript', :charset => 'utf-8')
    end
  end
end

ActionView::Base.send(:include, BistroCar::Helpers) if defined?(ActionView::Base)
