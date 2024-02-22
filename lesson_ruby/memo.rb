require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    memo_newname = gets.chomp


    p "メモしたい内容を記述してください"
    p "完了したらCtrl+Dを押します"

    file_newcontent = $stdin.read

    CSV.open("#{memo_newname}.csv", "w") do |csv|
     csv << [file_newcontent]
    end

elsif memo_type == 2
    puts  "拡張子を除いたファイルを入力してください"
    memo_editname = gets.chomp

    p "メモしたい内容を記述してください"
    p "完了したらCtrl+Dを押します"
    
    file_editcontent =$stdin.read

    CSV.open("#{memo_editname}.csv", "a") do |csv|
     csv << [file_editcontent]
    end

else memo_type != 1 || memo_type != 2
    
    p "1か2を入力してください"



end








    #CSVファイルでの新規メモ作成のコード
#lsif memo_type == 2
    #CSVファイルでの既存メモ編集のコード



# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
