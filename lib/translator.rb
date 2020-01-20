require "yaml"

# require modules here

def load_library(file) 
  emoticons = YAML.load_file(file)
  
  newmoticons = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emoticons.each do |meaning, emoticons|
    english_emoticon = emoticons[0]
    japanese_emoticon = emoticons[1]
    newmoticons["get_meaning"][japanese_emoticon] = meaning
    newmoticons["get_emoticon"][english_emoticon] = japanese_emoticon
  end
  
  newmoticons
end #outputs hash collection {:meaning => "english", "japanese"}

def get_japanese_emoticon(data, emoticon_given)
  master_list = load_library(data)
  
  master_list.each do |meaning, emoticon| 
    if emoticon_given == master_list[meaning][emoticon[0]]
      
  end

end

def get_english_meaning(data, string)
  master_list = load_library(data)
  
  master_list.each do |meaning, value| 
    
  end
end