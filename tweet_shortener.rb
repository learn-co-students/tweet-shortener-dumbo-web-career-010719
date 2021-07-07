# Write your code here.
def dictionary(word)
  dictionary = {
    "hi" => "hello",
    "2" => ["to", "two", "too"],
    "4" => ["for", "four"],
    "b" => "be",
    "u" => "you",
    "@" => "at",
    "&" => "and"
  }
dictionary.each do |key, value|
  if dictionary[key] == word.downcase
    return key
  elsif dictionary[key].is_a?(Array)
    if dictionary[key].include?(word.downcase)
      return key
    end
  end
end
  word
end

def word_substituter(string)
  tweet = string.split.collect! do |word|
    dictionary(word)
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  shortened = word_substituter(string)
  if shortened.length > 140
    shortened[0..136].concat("...")
  else
    shortened
  end
end
