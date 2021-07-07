require "pry"
require "yaml"

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  emoticons.each do |key, value|
    new_hash['get_meaning'][value[1]] = key
    new_hash['get_emoticon'][value[0]] = value[1]
 end
 new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
    # return emoticon_hash['get_emoticon'][emoticon]
   if emoticon_hash['get_emoticon'][emoticon]
     return emoticon_hash['get_emoticon'][emoticon]
    else 
       return sorry_message
 end
end

def get_english_meaning(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
    # return emoticon_hash['get_emoticon'][emoticon]
   if emoticon_hash['get_meaning'][emoticon]
     return emoticon_hash['get_meaning'][emoticon]
    else 
       return sorry_message
 end

end