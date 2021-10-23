function perimetr(r)
    y= moves!(r, Nord)
    x= moves!(r, West)
    for side in [Sud, Ost, Nord, West]
        putmarkers!(r, side)
    end
    moves!(r, Sud, y)
    moves!(r, Ost, x)
end

function putmarkers!(r, side)
    while !isborder(r, side)
        putmarker!(r)
        move!(r, side)
    end
end

function moves!(r, side)
    counter = 0
    while !isborder(r, side)
        move!(r, side)
        counter +=1
    end
    return counter
end

function moves!(r::Robot, side::HorizonSide, num_steps::Int)
    for steps in 1:num_steps
        move!(r, side)
    end
end