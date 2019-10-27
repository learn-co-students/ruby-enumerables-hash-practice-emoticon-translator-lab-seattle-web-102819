require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  emoticon_hash = {"get_meaning" => {}, "get_emoticon => {}"}
  library.each do |meaning, emoticons|
    emoticons_hash["get_meaning"][emoticons[1]] = meaning
    emoticons_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  library
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = load_library(path,)
  if library["get_emoticon"][emoticon]
    return library["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
  
def get_english_meaning(path, emoticon)
  # code goes here
  library = load_library(path)
  if library["get_meaning"][emoticon]
    return library["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end