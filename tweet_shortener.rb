# Write your code here.
def dictionary
  dict = {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "at": "@",
    "and": "&", 
    "you": "u"
  }
  dict 
end
def word_substituter(tweet)
  tweetArray = tweet.split
  rarr = []
  tweetArray.each_with_index do |val, index|
    if dictionary[val.downcase.to_sym] #its in the dictionary
      rarr << dictionary[val.downcase.to_sym]
    else
      rarr << val   
    end
  end
  rarr.join(" ")
end

def  bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end
  
def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  wrdSub = word_substituter(tweet)
  truncatedLen = wrdSub.length
  if truncatedLen <= 140
    wrdSub
  else 
    truncatedLen = word_substituter(tweet).length
    wrdSub[0..136] + "..."
  end
    
end
