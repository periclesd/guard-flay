require 'guard'
require 'guard/guard'

module Guard
  class Flay < Guard
    autoload :Processor, 'guard/flay/processor'

    def initialize(watchers = [], options = {})
      super
      @processor = Processor.new
    end

    def start; end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      @processor.process paths
    end
  end
end
