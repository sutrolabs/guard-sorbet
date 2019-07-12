# typed: strict

require 'guard/compat/plugin'
require 'sorbet-runtime'

module Guard
  class Sorbet < Plugin
    extend T::Sig

    sig {params(options: T.untyped).void}
    def initialize(options = nil)
      super(options)

      @version = T.let('0.0.1', String)
      @sorbet_version = T.let(Gem.loaded_specs['sorbet'].version.to_s, String)
    end

    sig {void}
    def run_all
      Compat::UI.info "Guard::Sorbet #{@version} is running, with Sorbet #{@sorbet_version}"
      srb_path = Gem.bin_path 'sorbet', 'srb'
      if !system(srb_path)
        Compat::UI.error "srb failed"
        throw :task_has_failed
      end
    end

    sig {void}
    def start
      run_all
    end

    sig {params(_: T::Array[String]).void}
    def run_on_modifications(_)
      run_all
    end
  end
end
