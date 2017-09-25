def display(records)
  records.each do |record|
    puts record.name + '：' + record.score.to_s + '分'
  end
end

def create(records)
  record = Record.new

  print '請輸入學生的名字：'
  record.name = gets.chomp

  print '請出入要新增的成績：'
  record.score = gets.chomp.to_i

  records.push record
end

def delete(records)
  print '請問要刪除第幾個紀錄：'
  records.delete_at gets.chomp.to_i - 1
end