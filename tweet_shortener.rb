# Write your code here.
def dictionary
    {
        "hello" => 'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for" => '4',
        "four" => '4',
        'be' => 'b',
        'you' => 'u',
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    # first attempt
    # dict = dictionary
    # words = tweet.split(" ")
    #
    # words.collect do |word|
    #     dict.collect do |key, value|
    #         if word.downcase == key
    #             word.replace(value)
    #         elsif word.upcase == key
    #             word.replace(value)
    #         end
    #     end
    # end
    # words.join(" ")

    # working solution
    tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word }.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.collect do |tweet|
        puts word_substituter(tweet)
    end
end

# def selective_tweet_shortener(tweet)
#     if tweet.length > 140
#         word_substituter(tweet)
#     elsif tweet.length < 130
#         tweet
#     end
# end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
elsif tweet.length <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
    tweet = selective_tweet_shortener(tweet)
    if tweet.length > 140
        tweet[0..136] + "..."
    else
        tweet
    end
end

#               - OR -

# def shortened_tweet_truncator(tweet)
#     truncated_tweet = ""
#     if word_substituter(tweet).length > 140
#         truncated_tweet << word_substituter(tweet)[0..136] + "..."
#     else
#         truncated_tweet << word_substituter(tweet)
#     end
#     truncated_tweet
# end
