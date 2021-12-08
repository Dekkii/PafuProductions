var i, arg;
for (i = 0; i < 4; i += 1;)
   {
   if argument_count > i
      {
      arg[i] = argument[i]
      }
   else
      {
      arg[i] = -1;
      }
   }


var dir = arg[0]
var obj = arg[1]
var objDir = arg[2]

var ignore = noone
if argument_count > 1
{
    ignore = arg[3]
}


if dir == 0
{
    if (y > 0 && (place_free(x,y-global.tileH) || objChk(dir,ignore)))
    {
        objTemp = instance_create(x,y-global.tileH,obj)
        objTemp.dir = objDir

    }
}

else if dir == 1
{
    if (x < global.screenW-global.tileW && (place_free(x+global.tileW,y) || objChk(dir,ignore)))
    {
        objTemp = instance_create(x+global.tileW,y,obj)
        objTemp.dir = objDir
    }
}

else if dir == 2
{
    if (y < global.screenH-global.tileH && (place_free(x,y+global.tileH) || objChk(dir,ignore)))
    {
        objTemp = instance_create(x,y+global.tileH,obj)
        objTemp.dir = objDir
    }
}

else if dir == 3
{
    if (x > 0 && (place_free(x-global.tileW,y) || objChk(dir,ignore)))
    {
        objTemp = instance_create(x-global.tileW,y,obj)
        objTemp.dir = objDir
    }
}
