#https://www.codewars.com/kata/base64-numeric-translator/train/ruby

def base64_to_base10(str)
  arry = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  result = String.new
  str.each_char {|x| result += '%06b' % arry.index(x)}
  puts result.to_i(2)
end

base64_to_base10("WIN")

=begin
Test.assert_equals(base64_to_base10("A"  ), 0    )
Test.assert_equals(base64_to_base10("/"  ), 63   )
Test.assert_equals(base64_to_base10("BA" ), 64   )
Test.assert_equals(base64_to_base10("//" ), 4095 )
Test.assert_equals(base64_to_base10("WIN"), 90637)
=end
