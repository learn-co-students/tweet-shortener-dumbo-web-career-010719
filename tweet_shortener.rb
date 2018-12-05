# Write your code here.

def word_substituter tweet
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "be" => "b"
  }
  keys = words.keys
  twt = tweet.split(" ")
   for word in twt
     for key in keys
      twt.map do |e|
        if e.downcase == key
          e.replace(words[key])
        end
      end
    end
  end
  twt.join(" ")
end

def bulk_tweet_shortener arr
  arr.each { |e| puts word_substituter e }
end

def selective_tweet_shortener tweet
  if tweet.length > 140
    word_substituter tweet
  else
    tweet
  end
end

def shortened_tweet_truncator tweet
  final_tweet = word_substituter tweet
  if final_tweet.length > 140
    "#{final_tweet.slice(0, 137)}..."
  else
    tweet
  end
end
