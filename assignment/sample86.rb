class Person
    def initialize(firstName, lastName)
        @firstName = firstName
        @lastName = lastName
    end

    # フルネームを返す
    def getFullName
        "#{@firstName} #{@lastName}"
    end

    # イニシャル返す
    def getInitial
        "#{@firstName[0]}.#{@lastName[0]}"
    end
end

# インスタンス変数

# テスト1
mike = Person.new("Michael", "Johnson")
puts mike.getFullName
puts mike.getInitial

# テスト2
carly = Person.new("Carly", "Angelo")
puts carly.getFullName
puts carly.getInitial

# テスト3
jessie = Person.new("Jessie", "Raelynn")
puts jessie.getFullName
puts jessie.getInitial

