var i, arg;
for (i = 0; i < 2; i += 1;)
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

var ignore = noone
if argument_count > 1
{
    ignore = arg[1]
}


if dir == 0
{
    if (y > 0 && (place_free(x,y-global.tileH) || objChk(dir,ignore)))
    {
        y -= global.tileH
    }
}

else if dir == 1
{
    if (x < global.screenW-global.tileW && (place_free(x+global.tileW,y) || objChk(dir,ignore)))
    {
        x += global.tileW
    }
}

else if dir == 2
{
    if (y < global.screenH-global.tileH && (place_free(x,y+global.tileH) || objChk(dir,ignore)))
    {
        y += global.tileH
    }
}

else if dir == 3
{
    if (x > 0 && (place_free(x-global.tileW,y) || objChk(dir,ignore)))
    {
        x -= global.tileW
    }
}
