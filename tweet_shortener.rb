# Write your code here.
def dictionary(word)
  dict = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  if dict.key?(word.downcase)
    return dict[word.downcase]
  end
  word
end

def word_substituter(string)
  output = []
  string.split.each do |s|
    output.push(dictionary(s))
  end
  output.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    
    if new_tweet.length > 140
      return new_tweet[0..136] + "..."
    end
    new_tweet
  else
    return tweet
  end
end
  
def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0..136] + "..."
  else
    word_substituter(tweet)
  end
end
