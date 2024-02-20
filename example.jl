solve_quadratic(a, b, c) = ((-b + sqrt(b^2 - 4*a*c))/(2*a), (-b - sqrt(b^2 - 4*a*c))/(2*a))

hypotenuse(a, b) = sqrt(a^2 + b^2)

fahrenheit_to_celsius(f) = (f - 32) * 5/9

celsius_to_fahrenheit(c) = (c * 9/5) + 32

function calc_area(args::Int...)

    if length(args) > 3
        print("Cannot accept more than 3 arguments")
        return
    end

    area = 0
    if length(args) == 3
        len, width, height = args
        area = 2 * (len * width + len*height + width*height)
    elseif length(args) == 2
        len, width = args
        area = *(len, width)
    elseif length(args) == 1
        r = args[1]
        area = pi * r^2
    end

    return area

end



print("Surface area of a rectangular prism: ", calc_area(2, 4, 6), "\n \n")

print("Area of a rectangle: ", calc_area(2, 5), "\n \n")

print("Area of a circle: ", calc_area(9), "\n \n")

calc_area(2, 2, 2, 2)

