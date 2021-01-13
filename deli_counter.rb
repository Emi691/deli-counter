def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else 
        queue = []
        katz_deli.each_with_index do |customer, number|
            queue <<  " #{number + 1}. #{customer}"
        end
        queue.unshift("The line is currently:")
            puts queue.join
    end
end

def take_a_number(katz_deli, name)
    if katz_deli.length == 0
        katz_deli << name
        puts "Welcome, #{name}. You are number 1 in line."
    else
        katz_deli << name
        number = katz_deli.index(name)
        puts "Welcome, #{name}. You are number #{number+ 1} in line."
    end
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        name = katz_deli[0] 
        puts "Currently serving #{name}."
        katz_deli.shift
    end
end