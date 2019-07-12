# typed: strong

require 'guard/plugin'
require 'sorbet-runtime'

module Guard
  class Sorbet < Plugin
    extend T::Sig

    sig {void}
    def run_all
      # TODO logger
      # TODO run the right srb
      p "guard-sorbet running!"
      srb_path = Gem.bin_path 'sorbet', 'srb'
      `#{srb_path}`  # TODO get output
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
