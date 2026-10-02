var _left = keyboard_check(ord("A")) || keyboard_check(vk_left); 
var _right = keyboard_check(ord("D")) || keyboard_check(vk_right); 
var _jump = keyboard_check(vk_space) || keyboard_check(vk_up); 
 
xspd = (_right - _left) * moveSpd; 
 
yspd += grav; 
 
if (place_meeting(x, y + 1, obj_wall)) 
{ 
    yspd = 0; 
    
    if (_jump) 
    { 
        yspd = jump; 
    } 
     
    if (xspd != 0) { sprite_index = spr_player_run; }  
    else { sprite_index = spr_player_idle; } 
} 
else 
{ 
    sprite_index = spr_player_jump; 
}  
 
if (xspd != 0) { image_xscale = (_right - _left); } 
 
move_and_collide(xspd, yspd, obj_wall);