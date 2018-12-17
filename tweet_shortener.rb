=begin
"hello" becomes 'hi'
"to, two, too" become '2' 
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@" 
"and" becomes "&"
=end

def dictionary
	subst_hash={
		     "hello" => "hi",
		     "to"=> "2",
		     "two"=>"2",
		     "too"=>"2",
		     "for" =>"4",
		     "four"=> "4",
		     "be"=>"b",
		     "you"=>"u",
		     "at" => "@",
		     "and"=> "&"
	}
	
 
end
dictionary

def word_substituter (string_of_a_tweet)# Write your code here.
    
    array_of_a_tweet= string_of_a_tweet.split (' ')
   
   array_of_a_tweet.each_with_index{ |word,ind| 
   	dictionary.each { |key, value|
   		                    if (word.downcase==key)
   		                    array_of_a_tweet[ind]=value
   		                    end
   					}
    }

array_of_a_tweet.join(" ")
end

def bulk_tweet_shortener (array_of_tweets)

	array_of_tweets.each { |tweet| 
		puts word_substituter (tweet) 
	}

end

def selective_tweet_shortener (string_of_a_tweet)

	if (string_of_a_tweet.length>140)
		word_substituter (string_of_a_tweet)
	else
		string_of_a_tweet
	end
end

def shortened_tweet_truncator (string_of_a_tweet)
	
	shorter_tweet=selective_tweet_shortener (string_of_a_tweet)
	if (shorter_tweet.length>140)
	shorter_tweet=shorter_tweet[0..136]+ "..."
	end
	shorter_tweet
end