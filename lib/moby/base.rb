module Moby
  class Base
    private
      def load_list(list_name)
        File.open(
          File.join(
            Moby::base_path,
            *%w{share moby},
            wordlist_paths[list_name]
          )
        ).readlines.map {|ln| ln.chomp }
      end

      def wordlist_paths
        { :pos                  => "parts-of-speech/mobypos.UTF-8.txt",
          :hyphenation          => "hyphenation/mhyph.UTF-8.txt",
          :thesaurus            => "thesaurus/mthesaur.UTF-8.txt",
          :acronyms             => "words/UTF-8/acronyms",
          :common               => "words/UTF-8/common",
          :compound             => "words/UTF-8/compound",
          :crossword            => "words/UTF-8/crosswd",
          :crossword_additions  => "words/UTF-8/crswd-d",
          :fiction              => "words/UTF-8/fiction",
          :freq                 => "words/UTF-8/freq"
        }
      end
  end
end
