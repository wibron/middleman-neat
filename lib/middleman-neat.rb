require "middleman-neat/version"

module MiddlemanNeat

  class << self
    def registered(app)
      require "neat"
      gem_dir = Gem::Specification.find_by_name("neat").gem_dir
      Sass.load_paths << File.expand_path("./app/assets/stylesheets", gem_dir)
    end
    alias :included :registered
  end
end

::Middleman::Extensions.register(:neat, MiddlemanNeat)
