def word_substituter(tweet)
  dictionary={
"hello" => 'hi',
"to" => '2', 
"two" => '2', 
"too" => '2', 
"for"=> '4',
"four"=> '4',
'be' => 'b',
'you'=> 'u',
"at" => "@" ,
"and" => "&"
}
 tweet= tweet.split(' ')
 key=dictionary.keys
  tweet.collect!.with_index do |x,i|
    if key.include?(x||x.capitalize)==true
      tweet[i]=dictionary[x||x.capitalize]
    else 
      tweet[i]=x
    end
  end
  tweet.join(' ')
 end
 
 def bulk_tweet_shortener(array)
   array.each do |x|
     puts word_substituter(x)
   end
 end