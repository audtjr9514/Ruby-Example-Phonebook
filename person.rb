persons = [
    {name: "z", phone_number: "z", gener: "z"}
    ]
    
i=0
loop do
    puts "이름에 \"그만\"이라고 적으면 프로그램이 종료됩니다."
    
    print "이름을 입력하세요 : "
    persons[i][:name] = gets.chomp
    break if persons[i][:name] == "그만"
    
    print "번호를 입력하세요 : "
    persons[i][:phone_number] = gets.chomp
    print "성별을 입력하세요 : "
    persons[i][:gender] = gets.chomp
    
    if persons[i][:gender] != "male" && persons[i][:gender] != "female"
        persons[i][:gender] = "both"
    end
    
    p=0
    while p<persons.length do
        puts "#{p+1}번째 사람의 이름은 #{persons[p][:name]}, 핸드폰 번호는 #{persons[p][:phone_number]}, 성별은#{persons[p][:gender]}입니다."
        p += 1
    end
    puts
    persons << { name: "new", phone_number: "new", gender: "new" }
    i += 1
end