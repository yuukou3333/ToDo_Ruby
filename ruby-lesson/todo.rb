todo_list = []
100.times do
   puts "【モードを選択】"
   puts "  [show] ToDoを確認する"
   puts "  [add] ToDoを追加する"
   print "  showまたはaddと入力してください→"
   mode = gets.chomp!
   if mode == "show"
     puts "【ToDo確認モードを選択しました】"
     todo_list.each do |todo|
         print todo[:締め切り]
         print "までに"
         puts todo[:タスク]
     end
   elsif mode == "add"
     puts "【ToDo追加モードを選択しました】"
     print "締め切りを入力してください→"
     deadline = gets.chomp!
     print "タスクを入力してください→"
     task = gets.chomp!
     todo_list.push({締め切り: deadline,タスク: task})
   else
     puts "エラーです．プログラムを終わります"
     exit
   end
end
