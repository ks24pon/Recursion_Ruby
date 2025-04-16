class BankAccount
    attr_accessor :bankName, :ownerName, :savings

    # コンストラクタ
    def initialize(bankName, ownerName, savings)
        @bankName = bankName
        @ownerName = ownerName
        @savings = savings
    end

    # 預金処理(お金を預ける)
    def depositMoney(depositAmount)
        # 手数料判定($20,000以下の場合は$100の手数料がかかる)
        fee = @savings <= 20000 ? 100 : 0

        # 預金から-100を引きactual_depositに格納
        actual_deposit = depositAmount - fee

        # 手数料を引いた分だけ預金
        @savings += actual_deposit

        # 最終的な貯金額を返す
        return @savings
    end

    # 指定金額を引き出す(最大で貯蓄の20まで)
    def withdrawMoney(withdrawAmount)
        # 最大引き出し額（20%）
        max_withdrawable = (@savings * 0.2).to_i
      
        # 実際に引き出す額は、上限とリクエストの小さい方
        actual_withdraw = [withdrawAmount, max_withdrawable].min
      
        # 残高から引き出し
        @savings -= actual_withdraw
      
        # 残高を返す
        return @savings
    end

    #毎日$0.25口座に加算し、最終的な貯蓄額を返す
    def pastime(days)
        interest = days * 0.25
        return @savings + interest
    end

end

# テストケース１
user1 = BankAccount.new("Chase", "Claire Simmmons", 30000)
puts user1.withdrawMoney(2000)
puts user1.depositMoney(10000)
puts user1.pastime(93)

# テストケース2
user2 = BankAccount.new("Bank Of America", "Remy Clay", 10000)
puts user2.withdrawMoney(5000)
puts user2.depositMoney(12000)
puts user2.pastime(505)

