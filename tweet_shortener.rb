def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2', 
    "too" => '2',
    "two" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@' ,
    "and" => '&'
  }
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  tweet_array.collect do |word|
    if dictionary.keys.include? word.downcase
       dictionary.values_at(word.downcase)
    else
       word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_string)
  if tweet_string.length > 140
     word_substituter(tweet_string)
  else
    tweet_string
  end
end

def shortened_tweet_truncator(tweet_string)
  shortened_tweet = word_substituter(tweet_string)
  if shortened_tweet.length <= 140
    shortened_tweet
  else
    shortened_tweet[0..139]
  end
end


