var dir = argument0
var obj = argument1

if dir == 0
{
    if (y > 0 && place_meeting(x,y-global.tileH,obj))
    {
        return true
    }
}

else if dir == 1
{
    if (x < global.screenW-global.tileW && place_meeting(x+global.tileW,y,obj))
    {
        return true
    }
}

else if dir == 2
{
    if (y < global.screenH-global.tileH && place_meeting(x,y+global.tileH,obj))
    {
        return true
    }
}

else if dir == 3
{
    if (x > 0 && place_meeting(x-global.tileW,y,obj))
    {
        return true
    }
}
