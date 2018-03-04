def puts_fizzbuzz(num)
  ret_str = ''

  ret_str << 'Fizz' if num % 3 == 0

  ret_str << 'Buzz' if num % 5 == 0

  if ret_str.empty?
    puts num
  else
    puts ret_str
  end
end

trap(:INT) { exit }

loop do
  puts '3の倍数をでFizz、5の倍数でBuzz、15の倍数でFizzBuzzと出力します。'
  puts '終了:Ctrl+C'

  input_num = gets.to_i

  if input_num == 0
    puts '1以上の数値を入力してください。'
  else
    puts_fizzbuzz(input_num)
  end
end
