#常數第一個字必須大寫
class Robot
  def move_forward
    # @實例變數在任何地方都可取得
    @power = 0.1
    if @power > 0
      puts '目前仍有電，可往前走'
    else
      puts '沒電了，請立即充電！'
    end
  end

  def move_backward
    if @power > 0
      puts '目前仍有電，可往後走'
    else
      puts '沒電了，請立即充電！'
    end  
  end

  def power
    #可回傳資訊
    return @power.to_s
  end
end

#利用object為模板，可一直複製
robot1 = Robot.new
robot2 = Robot.new
robot1.move_forward
puts 'power = ' + robot1.power