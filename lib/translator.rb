# require modules here
require "yaml"
require "pry"
def load_library(file_path)
 emoticons= YAML.load_file(file_path)
 newHash= { :get_meaning => {},
            :get_emoticon => {}
   
 }
 emoticons.each do |key, value|
   newHash[:get_meaning][value[1]] = key
   newHash[:get_emoticon][value[0]] = key
 end
 binding.pry
newHash
end

def get_japanese_emoticon(yaml, str)
  emoticons = load_library(yaml)
  emotions.each do |key, value|
    binding.pry
    if value[0] == str
      return value[1]
    end
    end
end

def get_english_meaning(yaml,str )
 emoticons = load_library(yaml)
 
  emotions.each do |key, value|
    if value[0] == str
      return key
    end
    end
end