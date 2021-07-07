# Write your code here.

dictionary = {
  "hello" => 'hi',
  "to" => '2', 
  "two" => '2', 
  "too"  => '2', 
  "for" => '4', 
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"
  }


# replaces long words with their expected short form
def word_substituter (tweet_string)
 dictionary = {
  "hello" => 'hi',
  "to" => '2', 
  "two" => '2', 
  "too"  => '2', 
  "for" => '4', 
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"
  } 
  tweet_string.split.map do | a_word |
    if dictionary.keys.include?(a_word.downcase) 
      a_word = dictionary[a_word.downcase] 
    else 
      a_word 
    end
  end.join(" ") 
end

def bulk_tweet_shortener (tweet_array)
  tweet_array.each do | word |
    puts word_substituter(word)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet) 
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] << "..."
  else
    tweet
  end
end

