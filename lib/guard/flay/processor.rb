require 'flay'

module Guard
  class Flay
    class Processor
      def self.process(paths)
        UI.info "Running flay for files: '#{paths.join('\', \'')}'", reset: true

        flay = ::Flay.new(::Flay.parse_options)
        files = ::Flay.expand_dirs_to_files(paths)
        flay.process(*files)
        flay.report
        puts
      end
    end
  end
end
