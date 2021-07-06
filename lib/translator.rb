# require modules here

require 'pry'

def load_library(file_path)
  # code goes here
  require 'yaml'
  emoticons = YAML.load_file(file_path)
  library = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticons.each do |key, value|
       library[:get_meaning][value[1]] = key
       library[:get_emoticon][value[0]] = value[1]
    end
      library
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library_hash = load_library(file_path)
    if library_hash[:get_emoticon][emoticon]
      library_hash[:get_emoticon][emoticon]
    else !library_hash[:get_emoticon][emoticon]
      return "Sorry, that emoticon was not found"
    end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library_hash = load_library(file_path)
  if library_hash[:get_meaning][emoticon]
      library_hash[:get_meaning][emoticon]
    else !library_hash[:get_meaning][emoticon]
      return "Sorry, that emoticon was not found"
    end
end

