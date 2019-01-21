require 'pry'

# def reformat_languages(languages)
# new_hash = (languages)
#   new_hash.each_value do |prog_lang|
#     prog_lang.map do |key, value|
#       if key == :javascript
#         value[:style] = [:oo, :functional]
#       elsif key == :java
#         value[:style] = [:oo]
#       elsif (value[:type] == "interpreted" && key != :javascript)
#         value[:style] = [:oo]
#       elsif (value[:type] == "compiled" && key != :java)
#         value[:style] = [:functional]
#       end
#     end
#   end
#   new_hash
#   binding.pry
# end


def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_key, lang_val|
    lang_val.each do |lang_key, lang_attr|
      new_hash[lang_key] = lang_attr
      if style_key == :oo && lang_key == hash_key
        new_hash[:style] = [style_key]
        binding.pry
      elsif style_key == :functional && lang_key == hash_key
        new_hash[:style] = [style_key]
      end
    end
  end

  new_hash
  binding.pry
end
