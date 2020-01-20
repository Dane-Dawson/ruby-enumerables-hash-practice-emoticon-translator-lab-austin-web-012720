require "yaml"

# require modules here

def load_library(file) 
  emoticons = YAML.load_file(file)
  emoticons
end #outputs hash collection {:meaning => "english", "japanese"}

def get_japanese_emoticon(string)
  pp load_library
    #code to take input string, scan hash Load_library to locate if input matches any "english" values, if so it returns the "japanese" value of the same key
  load_library.each do |meaning, | #throughout the load_library hash, for each entry
    if load_library[:meaning][0] == string #if the first value ("english") is a match
      load_library[:meaning][1] #return "japanese"
    end
  end

end

def get_english_meaning(string)
    #code to take input string, scan hash load_library to locate if input matches any "japanese" values, if so returns "english" value of same key
  load_library.each do |meaning| #throughout the load_library hash, for each entry
    if load_library[:meaning][1] == string #if the second value ("japanese") is a match
      load_library[:meaning][0] #return "english"
    end
  end
end