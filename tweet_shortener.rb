# Write your code here.
dictionary={
"hello" => 'hi',
"to, two, too" => '2', 
"for, four"=> '4',
'be' => 'b',
'you'=> 'u',
"at" => "@" ,
"and" => "&"
}

def word_substituter(tweet)
 tweet= tweet.split(' ')
 key=dictionary.keys
  tweet.collect do |x|
    if key.include?(x)
      x