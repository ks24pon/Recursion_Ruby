require "date"

# 企業が払う法人税
def calculateCorporationTax(state,year,profit)
    # 連邦税と州税を合算して税率を計算
    total_tax = federation_tax(year) + stateTax(state)
    # 税額の計算（浮動小数点で計算し、最終的に切り上げ）
    tax_amount = (profit * total_tax / 100.0).ceil
    tax_amount
end

# 州名を受け取り、州税を計算する関数
def stateTax(state)
    # 指定した州がある場合は、その税率を返す
    taxrate = {
        "AZ" => 4.9,
        "CA" => 8.84,
        "TX" => 0,
        "NC" => 2.5,
    }
    # ない場合は「その他」として5を返す
    taxrate.fetch(state, 5)
end

# 年を受け取って閏年かどうかチェックする関数
def isLeapYear(year)
    Date.leap?(year)
end

# 閏年なら連邦税を免除0%、それ以外なら21%になる関数
def federation_tax(year)
    isLeapYear(year) ? 0 : 21
end