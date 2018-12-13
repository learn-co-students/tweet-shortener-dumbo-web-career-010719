# Write your code here.
def dictionary
  {
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
    "and" => '&'
  }
end

def word_substituter(text)
   dictionary.each do |key, value|
     text.gsub!(/\b#{key}\b/, value)
   end
   return text
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweet)
   if tweet.length > 140
      word_substituter(tweet)
   else  
      tweet
  end
end

def shortened_tweet_truncator(tweet)
   if tweet.length > 140
      substituted_string = selective_tweet_shortener(tweet)
      if substituted_string.length > 140
        substituted_string[0..139]
      else
        substituted_string
      end
   else
     tweet
   end
end