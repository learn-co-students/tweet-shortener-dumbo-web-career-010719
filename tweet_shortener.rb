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

def word_substituter(str)
   tweet = str.split(" ")
   tweet.each_with_index do |word, index|
      dictionary.each do |key, value|
         if word.downcase == key
            tweet[index] = value
         end
      end
   end
   tweet.join(" ")
end

def bulk_tweet_shortener(tweet)
   tweet.each { |str| puts word_substituter(str) }
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
      word_substituter(tweet)
      tweet[0..136] + "..."
   else
      tweet
   end
end
