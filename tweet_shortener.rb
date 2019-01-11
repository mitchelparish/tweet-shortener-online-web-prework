def dictionary
  convert = {
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

def word_substituter(tweet)
  dict = dictionary
  words = tweet.split(" ")

  words.collect do |word|
    dictionary.collect do |key, value|
      if word == key
        word.replace(value)
      end
    end
  end
  words.join(" ")
end


def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end



def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else
    word_substituter(tweet)
  end
end
