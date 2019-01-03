require 'pry'
def dictionary
  post = { 
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
    "a" => 'a'
  }
end

def word_substituter(string)
  array = string.split
  dict = dictionary.keys
  dict = dict.to_s
  array.each_with_index do | words, i |
    if dict.include?(words)
      array[i] = dictionary[words]
    else array[i] = words
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.map do |tweet|
    
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string[141] == nil
    string
  elsif string[141] != nil
    word_substituter(string)
  end
end

def shortened_tweet_truncator(string)
  if string[141] != nil
    string = string[0..136]
    string << "..."
  elsif string[141] == nil
    string
  end
end



