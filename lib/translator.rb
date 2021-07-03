# require modules here
require = 'yaml'

def load_library(path)
  # code goes here
  data = YAML.load_file(path)
  hash = {"get_meaning" => {}, "get_emoticon" => {}}
  data.each do |meaning, emoticon|
    hash["get_meaning"][emoticon[1]] = meaning
    hash["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  data = load_library(path)
  if data["get_emoticon"].include?(emoticon)
    data["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  data = load_library(path)
  if data["get_meaning"].include?(emoticon)
    data["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end