# Write your code here.
def word_substituter(tweet)
  dic = {
    "hello" => 'hi',
    "to" => '2',
    "too" => '2',
    "two" => '2',
    "for" => '4',
    "For" => "4",
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  arrOfTweet = tweet.split(" ")
  subs = dic.keys
  i = 0
  while i < arrOfTweet.length
    if (subs.include?(arrOfTweet[i]))
      arrOfTweet[i] = dic[arrOfTweet[i]]
    end
    i += 1
  end

  arrOfTweet.join(' ')
end
def bulk_tweet_shortener(tweets)
  tweets.each { |twt| puts "#{word_substituter(twt)}"}
end

def selective_tweet_shortener(tweet)
  tweetLength = tweet.length
  puts tweetLength
  if (tweetLength > 140)
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweetLength = tweet.length
  puts tweetLength
  if (tweetLength > 140)
    return tweet.slice(0, 140)
  else
    return tweet
  end
end
