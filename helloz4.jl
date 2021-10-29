function main(::Robot)
    x=0
    y=0
    max=0
    while (isborder(r,Sud)==false)
        move!(r,Sud)
        y=y+1
    end
    while (isborder(r,West)==false)
        move!(r,West)
        x=x+1
    end
    while (isborder(r,Ost)==false)
        move!(r,Ost)
        max=max+1
    end
    back(r)
    while((max>0) || (isborder(r,Nord)==false))
        for i in 1:max
            putmarker!(r)
            move!(r,Ost)
        end
        putmarker!(r)
        if (isborder(r,Nord)==false)
            move!(r,Nord)
        end;
        max=max-1
        back(r)
    end
    while (isborder(r,Sud)==false)
        move!(r,Sud)
    end
    return_back(r,x,y)
end

function return_back(::Robot,x::Int,y::Int)
    for i in 1:x
        move!(r,Ost)
    end
    for i in 1:y
        move!(r,Nord)
    end
end
function back(::Robot)
    while (isborder(r,West)==false)
        move!(r,West)
    end
end