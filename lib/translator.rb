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
    newmotions["get_meaning"][japanese_emoticon] = meaning
    newmoticons["get_emoticon"][english_emoticon] = japanese_emoticon
  end
  
  newmoticons
end #outputs hash collection {:meaning => "english", "japanese"}

def get_japanese_emoticon(string)
  pp load_library
  load_library.each do |meaning, | #throughout the load_library hash, for each entry
    if load_library[:meaning][0] == string #if the first value ("english") is a match
      load_library[:meaning][1] #return "japanese"
    end
  end

end

def get_english_meaning(string)
  load_library.each do |meaning| #throughout the load_library hash, for each entry
    if load_library[:meaning][1] == string #if the second value ("japanese") is a match
      load_library[:meaning][0] #return "english"
    end
  end
end