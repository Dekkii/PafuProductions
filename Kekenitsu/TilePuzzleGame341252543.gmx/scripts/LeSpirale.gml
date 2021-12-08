var spira_dir = dir;
var spira_x = obj_player.x/global.tileW;
var spira_y = obj_player.y/global.tileH;
var spira_n = 1;
var spira_step = 0;

var spira_min = 11;
var spira_max = 80;

while (spira_n < spira_max && (spira_step + spira_n * 2 < spira_min || mp_grid_get_cell(global.uniGrid,spira_x, spira_y) == -1))
{
    spira_x += global.dirToX[spira_dir];
    spira_y += global.dirToY[spira_dir];
    
    spira_step += 1;
    
    if (spira_step == spira_n)
    {
        spira_dir = (spira_dir + 1) % 4;
  }
    
  if (spira_step == spira_n * 2)
    {
        spira_dir = (spira_dir + 1) % 4;
     
        spira_step = 0;
        spira_n += 1;
   }
}

dir = (dir + 1) % 4;
    
if (spira_n == spira_max)
{
    return false;
}

else
{
    x = spira_x*global.tileW;
    y = spira_y*global.tileH;
    return true;
}
