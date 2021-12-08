var dir = argument[0]

if dir == 0
{
    if (y > 0 && place_meeting(x,y-global.tileH,obj_player))
    {
        return true
    }
}

else if dir == 1
{
    if (x < global.screenW-global.tileW && place_meeting(x+global.tileW,y,obj_player))
    {
        return true
    }
}

else if dir == 2
{
    if (y < global.screenH-global.tileH && place_meeting(x,y+global.tileH,obj_player))
    {
        return true
    }
}

else if dir == 3
{
    if (x > 0 && place_meeting(x-global.tileW,y,obj_player))
    {
        return true
    }
}
