#利用hash,symbol作為鑰匙。
#利用def使程式易讀性更高，更簡潔。
def display(records)
  records.each do |record|
    puts record[:name] + ':' +record[:score].to_s + '分'
  end
end

def create(records)
  record = {}
  print '請輸入要新增的學生名字：'
  record[:name] = gets.chomp
  print '請輸入該學生的成績：'
  record[:score] = gets.chomp.to_i
  records.push record
end

def delete(records)
  print '請輸入要刪除第幾個紀錄：'
  records.delete_at gets.chomp.to_i - 1
end

records=[
  { :name => 'Amelie',:score => 98},
  { :name => 'Monkey',:score => 89 }
]
puts '1/檢視成績，2/新增成績，3/刪除成績，4/結束程式'

while  true
  print '>'
    command = gets.chomp.to_i

  if command == 1
    display records
  elsif command == 2
    create records
  elsif command == 3
    delete records
  elsif command == 4
    puts '程式結束'
    break
  end
end