
def word_substituter(tweet)
  dictionary={
"hello" => 'hi',
"to" => '2', 
"to" => '2', 
"to, two, too" => '2', 
"for, four"=> '4',
'be' => 'b',
'you'=> 'u',
"at" => "@" ,
"and" => "&"
}
 tweet= tweet.split(' ')
 key=dictionary.keys
  tweet.collect!.with_index do |x,i|
    if key.include?(x)==true
      tweet[i]=dictionary[x]
    end
  end
  tweet.join(' ')
 end