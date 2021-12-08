var dir = argument0
var obj = argument1

var objTemp

if dir == 0
{
    if (place_meeting(x,y-global.tileH,obj))
    {
        objTemp = collision_point(x,y-global.tileH,obj,0,0)
        instance_destroy(objTemp)
    }
}

else if dir == 1
{
    if (place_meeting(x+global.tileW,y,obj))
    {
        objTemp = collision_point(x+global.tileW,y,obj,0,0)
        instance_destroy(objTemp)
    }
}

else if dir == 2
{
    if (place_meeting(x,y+global.tileH,obj))
    {
        objTemp = collision_point(x,y+global.tileH,obj,0,0)
        instance_destroy(objTemp)
    }
}

else if dir == 3
{
    if (place_meeting(x-global.tileW,y,obj))
    {
        objTemp = collision_point(x-global.tileW,y,obj,0,0)
        instance_destroy(objTemp)
    }
}
