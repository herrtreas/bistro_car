module BistroCar
  class Bundle
    attr_reader :name

    def initialize(name)
      @name = name.to_sym
    end

    def path
      if name == :default
        Rails.root.join('app/coffeescripts')
      else
        Rails.root.join('app/coffeescripts', name.to_s)
      end
    end

    def sources
      Dir.glob(path.join('*.coffee')).to_a
    end

    def to_javascript
      file = Tempfile.new('script.coffee')
      sources.each do |source|
        file << File.read(source)
        file << "\n"
      end
      file.close
      %x(coffee -p #{file.path})
    end
  end
end
