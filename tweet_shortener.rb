require "pry"

def dictionary
small = {
  "hello" => "hi",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "For" => "4"
}
end
# word_substituter
# replaces long words with their expected short form
# turn the tweet into an array
# Make sure to use the join method to turn it back into a tweet
# use the .keys method to grab all the keys in the hash

def word_substituter(tweet)
  new_arr = []
  tweet_arr =  tweet.split
  keys_arr = dictionary.keys
    tweet_arr.each do |word|
      if keys_arr.include?(word)
        new_arr << dictionary[word]
      else
        new_arr << word
      end
  end
  return new_arr.join(" ")
end
# bulk_tweet_shortener
# shortens each tweet and prints the results
# iterates over tweets
# puts them out

def bulk_tweet_shortener(array)
  array.collect do |tweet|
    puts word_substituter(tweet)
  end
end
# selective_tweet_shortener
# shortens tweets that are more than 140 characters
# does not shorten tweets that are less than 140 characters
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

# shortened_tweet_truncator
# truncates tweets over 140 characters after shortening
# does not shorten tweets shorter than 140 characters.
def shortened_tweet_truncator(tweet)
  short = word_substituter(tweet)
  if short.length > 140
    short[0..139]
  else
    short
  end
end
