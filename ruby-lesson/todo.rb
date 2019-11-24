
todo_list = [{"締め切り" => "未設定","タスク" => "未設定"},{"締め切り" => "未設定","タスク" => "未設定"},{"締め切り" => "未設定","タスク" => "未設定"}]

# todo_list.each do |todo|
#   print todo["締め切り"]
#   puts todo["タスク"]
# end

puts "モードを選択"
puts "[show]で確認"
puts "[add]で追加"
print " showかaddを選択ーーー"
mode = gets.chomp!

if mode == "show"
  todo_list.each do |todo|
  print todo["締め切り"]
  print "までに"
  puts todo["タスク"]
end

elsif mode == "add"
  puts "追加します"
  print "締め切りを入力してください"
   todo_list [0] ["締め切り"] = gets.chomp!
  print "タスクを入力してください"
  todo_list [0] ["タスク"] = gets.chomp!
else 
  puts "エラー"
  exit
end

