# Write your code here.
def dictionary
  $substitute_list = {
    "hello" => "hi",
    "to"=> "2",
    "two"=> "2",
    "too"=> "2",
    "for"=> "4",
    "four"=> "4",
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
end

def word_substituter(string)
  dictionary
  result = string.split(" ").map do |word|
    if $substitute_list.keys.include?(word.downcase)
      $substitute_list[word.downcase]
    else
      word
    end
  end
  return result.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  return tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return word_substituter(tweet)[0..136] + "..."
  end
  return tweet
end