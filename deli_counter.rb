def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else 
        katz_deli.each_with_index do |customer, number|
            queue = []
            queue <<  "#{number + 1}. #{customer} "
        end
            queue.unshift("The line is currently: ")
            puts queue.join
    end
end