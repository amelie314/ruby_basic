# 產生一個數字讓使用者猜
# 如果使用者猜對了->輸出 '猜對了'
# 不然 -> 輸出 '猜錯了'

number = Random.rand(9)+1
while true
    print '請猜一個1~10之間的數字：'
    guess = gets.chomp.to_i

    if guess == number
        puts '你猜對了，答案是' + number.to_s
        break
    elsif guess > number
        puts '猜太大了!'
    else
        puts '猜太小了!'
    end
end