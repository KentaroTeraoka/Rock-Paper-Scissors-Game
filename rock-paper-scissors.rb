#じゃんけんゲーム

class User


  def initialize
    @user_name
    @selected_menu
    @cpu_selected_menu
  end

  def signup
    puts "▽名前を入力してください▽"
    @user_name = gets.chomp.to_s
    if @user_name==''
      @user_name = "ゲスト"
    end
    puts "ユーザー名: #{@user_name}さん"
  end

  def menu
    menus = [
        "グー",
        "チョキ",
        "パー",
        "降参"
    ]
    i = 0
    puts "出す手を選んでください"
    menus.each do |menu|
      puts "#{i}: #{menu}"
      i+=1
    end
    selected_menu=gets.chomp.to_i
    if selected_menu<0 || selected_menu>menus.length-1
      puts "※正しい番号をえらんでください！"
      exit
    elsif selected_menu==3
      puts "バイバイさようなら"
      exit
    end
    @selected_menu = menus[selected_menu]
  end

  def cpu_menu
    cpu_menus = [
        "グー",
        "チョキ",
        "パー"
    ]
    @cpu_selected_menu = cpu_menus[rand(cpu_menus.length)]

  end

  def battle
    puts "**************"
    puts "バトルスタート!"
    puts "**************"
    puts "#{@user_name}さん: #{@selected_menu} vs CPU: #{@cpu_selected_menu}"
    puts "結果は、"
    sleep(1)
    if @selected_menu=="グー" && @cpu_selected_menu=="チョキ"
      puts "勝ち！！"
    elsif @selected_menu=="チョキ" && @cpu_selected_menu=="パー"
      puts "勝ち！！"
    elsif @selected_menu=="パー" && @cpu_selected_menu=="グー"
      puts "勝ち！！"
    elsif @selected_menu==@cpu_selected_menu
      puts "あいこ"
    else
      puts "負け..."
    end
  end


end



puts "----- Rock Paper Scissors GAME -----"
user = User.new
user.signup
user.menu
user.cpu_menu
user.battle

