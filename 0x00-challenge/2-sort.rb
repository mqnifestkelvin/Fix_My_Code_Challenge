###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Skip if not an integer
    next unless arg =~ /^-?[0-9]+$/

    # Convert to integer
    i_arg = arg.to_i

    # Find the right position to insert
    insert_index = result.find_index { |x| x > i_arg }
    if insert_index
        result.insert(insert_index, i_arg)
    else
        # Append if no larger element is found
        result << i_arg
    end
end

puts result.join(' ')
