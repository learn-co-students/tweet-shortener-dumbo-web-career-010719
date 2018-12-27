def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.collect do |word|
    dictionary.collect do |bad_word, good_word|
      if word == bad_word
        word.replace(good_word)
      end
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    word_substituter(tweet).chars[0..136].push("...").join("")
  else
    word_substituter(tweet)
  end
end
