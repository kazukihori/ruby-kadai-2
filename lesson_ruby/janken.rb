



class Attimuite_game

    def janken()
        puts "じゃんけん、、"
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        puts "-------------------"


        @user_janken_command = gets.chomp.to_i

        janken_tool = ["グー","チョキ","パー"]

        my_hand = @user_janken_command
        computer_hand = rand(0..2)

        if @user_janken_command > 3
            puts "不正な値です。もう一度入力してください"
            return true
        elsif
            @user_janken_command == 3
            puts "じゃんけんで戦いません"
            exit
            
        else 
            if my_hand == computer_hand
            puts "あなた：#{janken_tool[my_hand]}を出しました"
            puts "相手：#{janken_tool[computer_hand]}を出しました"
            puts "あいこです"

            return  true
            
            elsif (my_hand == 0 && computer_hand == 1) || (my_hand == 1 && computer_hand == 2) || (my_hand == 2 && computer_hand == 0)
                puts "あなた：#{janken_tool[my_hand]}を出しました"
                puts "相手：#{janken_tool[computer_hand]}を出しました"
                puts "じゃんけんはあなたの勝ちです"

                @winner = "あなた"

                return attimuite_hoi

            elsif (my_hand == 0 && computer_hand == 2) || (my_hand == 1 && computer_hand == 0) || (my_hand == 2 && computer_hand == 1)
                puts "あなた：#{janken_tool[my_hand]}を出しました"
                puts "相手：#{janken_tool[computer_hand]}を出しました"
                puts "じゃんけんはコンピュータの勝ちです"

                @winner = "コンピュータ"

                return attimuite_hoi
            end
        end


        

        
    end

    def attimuite_hoi
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"

        @user_attimuite_command = gets.chomp.to_i

        puts "ホイ！"
        puts "----------------------"


        attimuite_hoi_tool = ["上","下","左","右"]

        attimuite_my_hand = @user_attimuite_command
        attimuite_computer_hand = rand(0..3)

        if @user_attimuite_command > 3 
            puts  "不正な値です。もう一度入力してください"
            return false
        else
            if attimuite_my_hand == attimuite_computer_hand && @winner == "あなた"
                puts "あなた：#{attimuite_hoi_tool[attimuite_my_hand]}"
                puts "相手 : #{attimuite_hoi_tool[attimuite_computer_hand]}"
                puts "あなたの完全勝利です"
                
                exit
            elsif attimuite_my_hand == attimuite_computer_hand && @winner == "コンピュータ"
                puts "相手:#{attimuite_hoi_tool[attimuite_computer_hand]}"
                puts "あなた: #{attimuite_hoi_tool[attimuite_my_hand]}"
                puts "コンピュータの完全勝利です"

                exit
            else
                puts "相手：#{attimuite_hoi_tool[attimuite_computer_hand]}"
                puts "あなた : #{attimuite_hoi_tool[attimuite_my_hand]}"
                puts "勝負つかず、、もう一度じゃんけんからやり直し"

                return janken
            end
        end

                
        
    end

    


    

end 


battle1 = Attimuite_game.new()
next_game = battle1.janken()

if next_game == true
    while next_game do
    battle1.janken
    end
else next_game == false
    until next_game do
    battle1.attimuite_hoi
    end
end



    





   