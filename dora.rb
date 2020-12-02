#ターン制バトル

#自分のHP
you = 10

#敵のHP
ene = 10

#攻撃方法判定
def get_user_attack(attack)
    if attack < 1 or attack > 3 then
        return false
    else
        return true
    end
end

#自分の行動
def player_action(name, attack)
    #攻撃方法
    attacks = ["ミス", "上段", "中段", "下段"]
    #攻撃方法出力
    puts "#{name}は#{attacks[attack]}攻撃をした！"
end

#戦闘を始める
puts "野生の「I」が現れた！！"
puts "　"

#戦闘処理
while true do
    #数字を入力
    puts "1:上段　2:中段　3:下段"
    puts "攻撃方法を入力してください"
    player_attack = gets.to_i
    
    #正しい入力
    if get_user_attack(player_attack) then
        #与ダメージ
        if player_attack == 1 then
            damage = rand(2..4)
        elsif player_attack == 2 then
            damage = rand(1..5)
        else 
            damage = rand(1..5)
        end
        #出力
        player_action("you", player_attack)
        puts "youは「I」に#{damage}ダメージあたえた！"
        puts " "
        ene = ene - damage
    #正しくない入力
    else
        puts "攻撃をミスした!"
        puts " "
    end

    #敵の行動
    #相手のHPが残ってる
    if ene > 0 then
        puts "「I」からの攻撃！ "
        damage = rand(2..4)
        puts "youは#{damage}ダメージくらった！"
        puts " "
        you = you - damage
        #自分のHPが無くなる
        if  you <= 0 then
            puts "あなたは負けました"
            break
        end
    #相手のHPがなくなる
    else
        puts "「I」を倒した！！"
        break
    end
end