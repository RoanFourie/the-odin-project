#write your code here
def add(first, second)
    first + second
end


def subtract(first, second)
    first - second
end


def sum(values)
    total = 0
    if values.empty?
        return 0
    elsif values.length == 1
        return values[0]
    else
        values.each do |i|
            total = total + i
        end
        return total
    end
end


def multiply(values)
    total = 1
    values.each do |i|
        total = total * i
    end
    return total
end


def power(value,power)
    value ** power
end


def factorial(value)
    if value <= 1
        return 1
    end
    variable = value * factorial(value - 1)
    return variable
end
