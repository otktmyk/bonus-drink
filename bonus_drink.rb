class BonusDrink
  def self.total_count_for(amount)
    begin
      # 負の値は、購入していないのと一緒として0を返す
      if(amount<0)
        return 0;
      end
           
      remine = amount%3 + amount/3;
      if(remine<3)
        return amount + (amount/3);
      else
        return (amount-(amount%3)) + total_count_for(remine);
      end
    rescue => ex
      # 計算失敗する事態は、呼び出し元に通知したほうがよいが
      # 購入していないのと一緒として0を返しても問題ないだろう。
      puts(ex.message);
      return 0;
    end
  end
end
