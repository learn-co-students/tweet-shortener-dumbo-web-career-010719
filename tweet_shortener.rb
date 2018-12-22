# Write your code here.

def dictionary 
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include? word.downcase
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.size > 140 ? word_substituter(tweet) : tweet 
end
  
def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  shortened_tweet.size > 140 ? shortened_tweet[0...137] << "..." : shortened_tweet
end
  
  
  
  
  
  
  
  
  
  
  
  
  