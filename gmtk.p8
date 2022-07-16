pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- untitled dice game

function _init()
	-- font
	poke(0x5600,unpack(split"8,8,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,24,24,24,0,24,0,0,54,54,18,0,0,0,0,0,54,127,54,127,54,0,0,24,124,30,60,120,62,24,0,6,102,48,24,12,102,96,0,28,54,54,28,110,54,108,0,24,24,8,0,0,0,0,0,24,12,6,6,6,12,24,0,24,48,96,96,96,48,24,0,24,126,60,24,60,126,24,0,0,24,24,126,24,24,0,0,0,0,0,0,0,12,12,6,0,0,0,126,0,0,0,0,0,0,0,0,0,0,12,0,0,96,48,24,12,6,0,0,0,0,60,118,110,102,60,0,0,0,24,28,24,24,60,0,0,0,62,96,60,6,126,0,0,0,62,96,56,96,62,0,0,0,56,60,54,126,48,0,0,0,126,6,62,96,62,0,0,0,60,6,62,102,60,0,0,0,126,96,48,24,12,0,0,0,60,102,60,102,60,0,0,0,60,102,124,96,60,0,0,0,0,12,0,12,0,0,0,0,0,12,0,12,12,6,48,24,12,6,12,24,48,0,0,0,0,126,0,0,0,0,12,24,48,96,48,24,12,0,0,60,102,48,24,0,24,0,0,60,102,118,110,118,60,0,0,0,60,102,126,102,102,0,0,0,62,102,62,102,62,0,0,0,60,102,6,102,60,0,0,0,62,102,102,102,62,0,0,0,126,6,30,6,126,0,0,0,126,6,30,6,6,0,0,0,124,6,118,102,124,0,0,0,102,102,126,102,102,0,0,0,60,24,24,24,60,0,0,0,96,96,96,102,60,0,0,0,102,54,30,54,102,0,0,0,6,6,6,6,126,0,0,0,66,102,126,126,102,0,0,0,102,110,126,118,102,0,0,0,60,102,102,102,60,0,0,0,62,102,62,6,6,0,0,0,60,102,102,54,108,0,0,0,62,102,126,54,102,0,0,0,124,6,60,96,62,0,0,0,126,24,24,24,24,0,0,0,102,102,102,102,60,0,0,0,102,102,102,60,24,0,0,0,102,126,126,102,66,0,0,0,102,60,24,60,102,0,0,0,102,102,60,24,24,0,0,0,126,48,24,12,126,0,62,6,6,6,6,6,62,0,0,6,12,24,48,96,0,0,62,48,48,48,48,48,62,0,24,60,102,0,0,0,0,0,0,0,0,0,0,0,0,126,12,24,48,0,0,0,0,0,0,60,102,102,126,102,102,0,0,62,102,62,102,102,62,0,0,60,102,6,6,102,60,0,0,62,102,102,102,102,62,0,0,126,6,30,6,6,126,0,0,126,6,30,6,6,6,0,0,124,6,118,102,102,124,0,0,102,102,126,102,102,102,0,0,60,24,24,24,24,60,0,0,96,96,96,96,102,60,0,0,102,54,30,54,102,102,0,0,6,6,6,6,6,126,0,0,66,102,126,126,102,102,0,0,102,110,126,118,102,102,0,0,60,102,102,102,102,60,0,0,62,102,102,62,6,6,0,0,60,102,102,102,54,108,0,0,62,102,102,62,54,102,0,0,124,6,60,96,96,62,0,0,126,24,24,24,24,24,0,0,102,102,102,102,102,60,0,0,102,102,102,102,60,24,0,0,102,102,126,126,102,66,0,0,102,60,24,60,102,102,0,0,102,102,60,24,24,24,0,0,126,48,24,12,6,126,0,56,12,12,6,12,12,56,0,24,24,24,24,24,24,24,24,14,24,24,48,24,24,14,0,44,26,0,0,0,0,0,0,0,28,54,28,0,0,0,0,255,255,255,255,255,255,255,255,85,170,85,170,85,170,85,170,0,195,255,189,189,255,126,0,60,126,255,129,195,231,126,60,17,68,17,68,17,68,17,0,4,12,252,124,62,63,48,32,60,110,223,255,255,255,126,60,102,255,255,255,126,60,24,0,24,60,102,231,102,60,24,0,24,24,0,60,90,24,60,102,60,126,255,126,82,82,94,0,60,110,231,227,227,231,110,60,0,255,153,153,255,129,255,0,56,120,216,24,30,31,14,0,0,126,195,219,219,195,126,0,8,28,62,127,62,28,8,0,0,0,0,0,85,0,0,0,60,118,231,199,199,231,118,60,0,8,28,127,62,28,54,0,127,34,20,8,8,20,42,127,60,126,231,195,129,255,126,60,0,5,82,32,0,0,0,0,0,17,42,68,0,0,0,0,0,126,219,231,231,219,126,0,255,0,255,0,255,0,255,0,85,85,85,85,85,85,85,85,255,129,129,129,129,129,129,255,255,195,165,153,153,165,195,255,0,126,62,30,62,118,34,0,8,28,62,127,127,62,8,62,8,28,28,107,127,107,8,28,28,34,73,93,73,34,28,0"))
--	srand(0)
	-- enable mouse
	poke(0x5f2d, 1)
	init_game()
	frame=0
	-- game feel variables
	roll_cooldown=40
	roll_spd=2
	roll_duration=10
	
	max_spd=1.5
	acceleration=5 -- immediate max speed
	drag=0.5
	
	enemy_wait_shoot=5
 bull_speed=1.8
 --
	mode=10
	-- modes:
	-- 0: title
	-- 10: game
end

function init_game()
 _ents={}
 _cmps={}
 _msgs={}
 depth=0
 player=ent()
 player+="collide"
 player+=cmp("destructible",{hp=100,hitboxx=-2,hitboxy=-2,hitboxw=6,hitboxh=6,force_nb=1})
 player+=cmp("can_roll",{curr_roll_cooldown=0})
 player+=cmp("pos",{x=-1,y=-1})
 player+=cmp("spd",{spdx=0,spdy=0})
 player+=cmp("render",{anim=anim_idle,face_left=true,render_order=1})
 player+=cmp("dice",{dval=1})
 start_weapon=spawn_rifle()
 start_weapon.wielder=player
 player+=cmp("has_wpn",{curr_wpn=1,wpn={start_weapon}})
 mapgen()
end

-->8
-- ecs and sort

function ent()
 -- you can remove this function
 -- if you delete the asserts
 function check_no_duplicates(self)
  for k1,t1 in pairs(self) do
   for k2,t2 in pairs(self) do
    if k1<k2 then
	    for f1,_ in pairs(t1) do
	     for f2,_ in pairs(t2) do
	      assert(k1==k2 or f1!=f2,"duplicated field "..f1.." in "..k1.." and "..k2)
	     end
	    end
    end
   end
  end
 end
 
 return add(_ents,
  setmetatable({},{
  -- check value in components
  -- components cannot be accessed directly
  __index=function(self,a)
	  for _,t in pairs(self) do
	   if(t[a]!=nil) return t[a]
	  end
	  assert(false,"field not found:"..a)
  end,
  __newindex=function(self,a,v)
	  for _,t in pairs(self) do
	   if(t[a]!=nil) t[a]=v return
	  end
	  assert(false,"field not found:"..a)
  end,
  __add=function(self,cmp)
   -- two cases: string or table
   if type(cmp)=="string" then
    assert(rawget(self,cmp)==nil,"already existing: "..cmp)
    rawset(self,cmp,{})
    add(_cmps[cmp],self)
   else
    -- check if already existing
    assert(rawget(self,cmp._cn)==nil,"already existing: "..cmp._cn)
    rawset(self,cmp._cn,cmp)
    add(_cmps[cmp._cn],self)
    -- remove this function if you remove asserts
    -- it's useful but costly
    cmp._cn=nil -- technically not required
    check_no_duplicates(self)
   end
   return self
  end,
  __sub=function(self,cn)
   -- double removal is not a problem
   rawset(self,cn,nil)
   del(_cmps[cn],self)
   return self
  end}))
end

function cmp(cn,t)
 if(_cmps[cn]==nil) _cmps[cn]={}
 t._cn=cn
 return t
end

function del_ent(e)
 for k,_ in pairs(e) do
  del(_cmps[k],e)
 end
 del(_ents,e)
end

function is(e,cn)
 return rawget(e,cn)!=nil
end

function sys(cmps,f)
 return function(...)
  for e in all(_cmps[cmps[1]]) do
   for cn in all(cmps) do
    if(not rawget(e,cn)) goto _
   end
   f(e,...)
   ::_::
  end
 end
end

-- bubble sort

function sort_ents()
 local n=#_ents
 for i=1,n do
  local swapped=false
  for j=2,n-i+1 do
   local e1,e2=_ents[j],_ents[j-1]
   local y1=rawget(e1,"destructible") and e1.y+e1.hitboxy+e1.hitboxh or 999
   local y2=rawget(e2,"destructible") and e2.y+e2.hitboxy+e2.hitboxh or 999
   if y1<y2 then
    local tmp=_ents[j]
    _ents[j]=_ents[j-1]
    _ents[j-1]=tmp
    swapped=true
   end
  end
  if(not swapped) return
 end
end 

-- components
--"collide"
--"pos": x y
--"spd": spdx spdy
--"render": anim face_left render_order
--"dice": dval
--"wpn_stats": wpn_dmg cooldown curr_cooldown nb_bullets bull_cooldown curr_bull_cooldown wielder spread
--"has_wpn": wpn curr_wpn
--"shooting": bullets_left targetx targety wait_shoot
--"rolling" roll_time
--"bullet" bull_dmg force_src
--"destructible" hp hitboxx hitboxy hitboxw hitboxh force_nb
--"dying" dying_curr
-->8
-- update and systems

function _update()
 frame+=1
 if(frame>=30) frame=0
 if mode==10 then
  sort_ents()
  player_input()
  sys_shoot()
  if(frame%5==0) sys_ai_act()
  sys_roll()
  sys_wpn_cooldown()
  sys_update_pos()
  sys_die()
  sys_collision()
 end
end

function player_input()
 if not is(player,"rolling") then
	 if(btn(⬆️)) update_spd(0,-1)
	 if(btn(⬇️)) update_spd(0,1)
	 if(btn(⬅️)) update_spd(-1,0)
	 if(btn(➡️)) update_spd(1,0)
  local w=player.wpn[player.curr_wpn]
	 if stat(34)&1>0
	  and not is(w,"shooting")
--	  and not is(player,"rolling")
	  then
	  shoot(w,stat(32),stat(33),0)
	  player.anim=anim_player_shoot
	 end
	 if stat(34)&2>0 and player.curr_roll_cooldown==0 then
	  -- no speed, go to mouse
			if abs(player.spdx)<.3 and abs(player.spdy)<.3 then
			-- todo: ou perpendiculairement?
		  local dx=stat(32)-player.x
		  local dy=stat(33)-player.y
		  local d=1+sqrt(dx*dx+dy*dy)
		  player.spdx=roll_spd*dx/d
		  player.spdy=roll_spd*dy/d
	  else
	   local spdx=player.spdx
	   local spdy=player.spdy
		  local d=sqrt(spdx*spdx+spdy*spdy)
	   player.spdx=roll_spd*spdx/d
	   player.spdy=roll_spd*spdy/d
	  end
	  player+=cmp("rolling",{roll_time=roll_duration})
	  player.curr_roll_cooldown=roll_cooldown
	  player.anim=anim_roll
	 end
 end
end

function update_spd(dx,dy)
 player.spdx+=dx*acceleration
 player.spdy+=dy*acceleration
 if(player.spdx>max_spd) player.spdx=max_spd
 if(player.spdx<-max_spd) player.spdx=-max_spd
 if(player.spdy>max_spd) player.spdy=max_spd
 if(player.spdy<-max_spd) player.spdy=-max_spd
end

function sys_collision()
 for b in all(_cmps["bullet"]) do
  for e in all(_cmps["destructible"]) do
   -- no friendly fire
   if b.force_src!=e.force_nb then
    local x=e.x+e.hitboxx
    local y=e.y+e.hitboxy
    if b.x>=x and b.y>=y
     and b.x<x+e.hitboxw
     and b.y<y+e.hitboxh then
     -- collision!
     del_ent(b) -- destroy bullet
     if is(e,"rolling") then
      add_msg(b,"dodged")
     else
	     e.hp-=b.bull_dmg
	     add_msg(e,"-"..b.bull_dmg)
	     if e.hp==0 then
	      if is(e,"ai") then
		      e+=cmp("dying",{dying_curr=20})
		      e-="destructible"
		      e-="ai"
		      e-="spd"
		      e.wpn[e.curr_wpn]-="shooting"
		      e.anim=anim_enemy_die
	      elseif e==player then
	       mode=11
	       e.anim=anim_player_die
	      end
	     end
     end
    end
   end
  end
 end
end

function sys_roll()
 if(player.curr_roll_cooldown>0) player.curr_roll_cooldown-=1
 if is(player,"rolling") then
  player.roll_time-=1
  if player.roll_time==0 then
   player-="rolling"
   player.anim=anim_idle
  end
 end
end

sys_shoot=sys({"shooting"},
 function(e)
  printh(e.wait_shoot)
  if(e.wait_shoot>0) e.wait_shoot-=1
  if e.wait_shoot==0 then
	  if e.curr_bull_cooldown==0 then
	   printh("new bullet")
			 bullet=ent()
			 bullet+=cmp("bullet",{force_src=e.wielder.force_nb,bull_dmg=e.wpn_dmg})
			 bullet+=cmp("pos",{x=e.wielder.x,y=e.wielder.y})
			 bullet+=cmp("render",{anim=anim_bullet,face_left=true,render_order=2})
			 
			 local dx=e.targetx-e.wielder.x
	   local dy=e.targety-e.wielder.y
	   local d=1+sqrt(dx*dx+dy*dy)
	   local spdx=bull_speed*dx/d
	   local spdy=bull_speed*dy/d
	   if e.spread>0 then
	    local a=rnd(e.spread*0.01)-e.spread*0.01/2
	    -- rotation matrix
	    local c,s=cos(a),sin(a)
	    local tmp=spdx*c-spdy*s
	    spdy=s*spdx+c*spdy
	    spdx=tmp
	   end
			 bullet+=cmp("spd",{spdx=spdx,spdy=spdy})
			 e.bullets_left-=1
			 if e.bullets_left==0 then
			  -- stop shooting
			  e-="shooting"
	    if(e.wielder==player) player.anim=anim_idle
	    if(is(e.wielder,"ai")) e.wielder.anim=anim_enemy_idle
			 else
	 		 e.curr_bull_cooldown=e.bull_cooldown
			 end
		 else
		  e.curr_bull_cooldown-=1
		 end
	 end
 end)

sys_wpn_cooldown=sys({"wpn_stats"},
 function(e)
  if(e.curr_cooldown>0) e.curr_cooldown-=1
 end)

sys_die=sys({"dying"},
 function(e)
  e.dying_curr-=1
  if(e.dying_curr==0) del_ent(e)
 end)

sys_update_pos=sys({"pos","spd","render"},
 function(e)
  -- hack: bullet have no sprite symmetry
  if not is(e,"bullet") then
   if(e.spdx>0) e.face_left=false
   if(e.spdx<0) e.face_left=true
  end
  local nextx=e.x+e.spdx
  local nexty=e.y+e.spdy
  -- collision with map
  if not fget(mget(nextx\8,nexty\8),0) then
   e.spdx=0
   e.spdy=0
   if(is(e,"bullet")) del_ent(e)
  else
	  e.x+=e.spdx
	  e.y+=e.spdy
	  if is(e,"collide") then
		  if(e.x<0) e.x=0 e.spdx=0
		  if(e.x>120) e.x=120 e.spdx=0
		  if(e.y<0) e.y=0 e.spdy=0
		  if(e.y>120) e.y=120 e.spdy=0
		  -- no drag when rolling
		  -- only player has drag?
		  if e==player and not is(e,"rolling") then
		   if e.spdx>0 then
		    e.spdx-=drag
		    if(e.spdx<0) e.spdx=0
		   elseif e.spdx<0 then
		    e.spdx+=drag
		    if(e.spdx>0) e.spdx=0   
		   end
		   if e.spdy>0 then
		    e.spdy-=drag
		    if(e.spdy<0) e.spdy=0
		   elseif e.spdy<0 then
		    e.spdy+=drag
		    if(e.spdy>0) e.spdy=0
		   end
		  end
		 elseif is(e,"bullet") then -- destroy outside map
		 	if(e.x<0 or e.x>130 or e.y<0 or e.y>130) del_ent(e)
	  end
  end
 end)
 
 
function shoot(w,x,y,wait)
 if w.curr_cooldown==0 then
  w+=cmp("shooting",{bullets_left=w.nb_bullets,targetx=x,targety=y,wait_shoot=wait})
  w.curr_cooldown=w.cooldown
 end
end
-->8
-- draw

function _draw()
	cls(1)
	map()
 sys_draw(1) -- char
 sys_draw(2) -- bullets
-- sys_draw_hitbox()
 render_msgs()
 if mode==10 then
 	-- aim
  spr(16,stat(32)-3,stat(33)-3)
 end
 if(mode==11) print("\014gAME oVER!",40,60)
end

-- todo: render order

sys_draw=sys({"render","pos"},
 function(e,layer)
  if e.render_order==layer then
   spr(e.anim(e),flr(e.x)-3,flr(e.y)-3,1,1,not e.face_left)
  end
 end)

sys_draw_hitbox=sys({"destructible","pos"},
 function(e)
  local x=flr(e.x)+e.hitboxx
  local y=flr(e.y)+e.hitboxy
  rect(x,y,x+e.hitboxw-1,y+e.hitboxh-1,9)
 end)
 
function anim_idle(e)
 return 7
end

function anim_roll(e)
 return 3
end

function anim_bullet(e)
 return 8
end

function anim_enemy_idle(e)
 return 4
end

function anim_enemy_move(e)
 return 5
end

function anim_enemy_die(e)
 return 6
end

function anim_player_die(e)
 return 9
end

function anim_enemy_shoot(e)
 return 10
end

function anim_player_shoot(e)
 return 11
end

-- msg
function add_msg(e,str,col)
 add(_msgs,{x=e.x+1,y=e.y-6,d=10,s=str,c=col or 7})
end

function render_msgs()
 for m in all(_msgs) do
  if m.d>0 then
   m.d-=1
   for dx=-1,1 do
    for dy=-1,1 do
     ?m.s,m.x+dx,m.y+dy,0
    end
   end
   ?m.s,m.x,m.y,m.c
   m.y-=.2
  end
 end
end

-->8
-- spawn

function spawn_enemy(x,y)
 e=ent()
 e+="collide"
 e+=cmp("destructible",{hp=1,hitboxx=-2,hitboxy=-2,hitboxw=7,hitboxh=7,force_nb=2})
 e+=cmp("pos",{x=x,y=y})
 e+=cmp("spd",{spdx=0,spdy=0})
 e+=cmp("render",{anim=anim_enemy_idle,face_left=true,render_order=1})
 e+=cmp("ai",{ai_type=0,ai_state=1,ai_var=0})
 local w=spawn_rifle()
 w.wielder=e
 e+=cmp("has_wpn",{curr_wpn=1,wpn={w}})
end

function spawn_rifle()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_dmg=1,cooldown=10,curr_cooldown=0,nb_bullets=3,bull_cooldown=2,curr_bull_cooldown=0,wielder=false,spread=5})
 return w
end

function spawn_sniper()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_dmg=3,cooldown=10,curr_cooldown=0,nb_bullets=1,bull_cooldown=2,curr_bull_cooldown=0,wielder=false,spread=0})
 return w
end
-->8
-- ai

sys_ai_state=sys({"ai"},
 function (e)
 
 end)

sys_ai_act=sys({"ai"},
 function (e)
  -- ai state:
  -- 0: idle, some move
  -- 1: attacking
  -- 2: retreating
 
  if(e.ai_var>1) then
   e.ai_var-=1   
  elseif e.ai_var==1 then
   -- stop walking
   e.ai_var=0
   e.spdx=0
   e.spdy=0
   e.anim=anim_enemy_idle
  end
  
  if e.ai_state==0 then
   if e.ai_var==0 and rnd()<.1 then
    -- start walking
    e.ai_var=4
    local walk_speed=.3
    local a=rnd()
    e.anim=anim_enemy_move
    e.spdx=walk_speed*cos(a)
    e.spdy=walk_speed*sin(a)
   end
  elseif e.ai_state==1 then
   if e.ai_var==0 and rnd()<.05 then
    local dx=player.x-e.x
    local dy=player.y-e.y
    if abs(dx)+abs(dy)>50 then -- come closer
     local d=sqrt(dx*dx+dy*dy)
     local walk_speed=.8
     e.ai_var=2
     e.anim=anim_enemy_move
     e.spdx=walk_speed*dx/d
     e.spdy=walk_speed*dy/d
    else -- attack
			  local w=e.wpn[e.curr_wpn]
		   if not is(e.wpn[e.curr_wpn],"shooting") then
		    shoot(w,player.x,player.y,enemy_wait_shoot)
		    w.wielder.anim=anim_enemy_shoot
		   end
		  end
	  end
  end
 end)

-->8
-- mapgen

-- flags:
-- 0: traversable

dir={[0]={-1,0},{1,0},{0,-1},{0,1}}

function mapgen()
 ?"map gen...",50,60
 flip()
 depth+=1
 first_step()
 second_step()
-- set_bitset_wall()
 populate()
 rerender=true
end

function first_step()
-- crude mapgen
 local dx=100
 for x=dx,dx+7 do
  for y=0,7 do
   mset(x,y,2)
  end
 end
 local seedx=dx+flr(rnd(7))
 local seedy=flr(rnd(7))
 local free=1
 mset(seedx,seedy,1)
 while free<35 do
  local x=dx+flr(rnd(7))
  local y=flr(rnd(7))
  local prevx,prevy=nil,nil
  while mget(x,y)==2 do
   prevx=x
   prevy=y
   local d=dir[flr(rnd(4))]
   x+=d[1]
   y+=d[2]
   if(x<dx) x=dx
   if(y<0) y=0
   if(x>dx+6) x=dx+6
   if(y>6) y=6
  end
  if(prevx) mset(prevx,prevy,1) free+=1
 end
 for x=0,15 do
  for y=0,15 do
   -- border
   if x==0 or y==0 or x==15 or y==15 then
    mset(x,y,2)
   else
	   local x2=(x-1)\2
	   local y2=(y-1)\2
	   mset(x,y,mget(x2+dx,y2))
   end
  end
 end
end

function second_step()
 -- generate layout with automata
 local dx=80
 for x=0,4 do
  for y=0,4 do
	  mset(x+dx,y,flr(rnd(2)))
	 end
 end

 -- modify map
 for i=0,100 do
  local x=1+flr(rnd(14))
  local y=1+flr(rnd(14))
  local t=mget(dx+x\10,y\10)
  local w=mget(x,y)==2
  local k=0
  for x2=-1,1 do
   for y2=-1,1 do
    if((x2!=0 or y2!=0) and mget(x+x2,y+y2)==2) k+=1
   end
  end
  
  if t==0 then
  -- big open space
   if(w and k>1 and k<6) mset(x,y,1)
  elseif t==1 then
  -- pillars
   if(x&1==0 and y&1==0 and not w and k==0) mset(x,y,2)
   if(w and k>0 and k<3) mset(x,y,1)
  end
 end
end

function set_bitset_wall()
	local delta={[0]={0,-1},{1,0},{0,1},{-1,0}}
	for x=0,31 do
	 for y=0,31 do
	  local val=mget(x,y)
	  if val==2 then
		  local b=0
		  for i=0,3 do
		   local x2=x+delta[i][1]
		   local y2=y+delta[i][2]
		   if x2>=0 and x2<42 and y2>=0 and y2<42 and (mget(x2,y2)==2 or mget(x2,y2)>=48) then
		    b+=1<<i
		   end
		  end
	   mset(x,y,48+b)
	  end
	 end
	end
end

function populate()
 local x,y=get_empty_space()
 player.x,player.y=x*8+rnd(7),y*8+rnd(7)
 local todo_enemies=10
 while todo_enemies>0 do
  local x,y=get_empty_space()
  x,y=x*8+rnd(7),y*8+rnd(7)
  if abs(x-player.x)>20 and abs(y-player.y)>20 then
   spawn_enemy(x,y)
   todo_enemies-=1
  end
 end
end

function get_empty_space()
 local x,y=nil,nil
 while mget(x,y)!=1 do
  x=flr(rnd(16))
  y=flr(rnd(16))
 end
 return x,y
end

__gfx__
00000000000000000000000033333333333333333333333333333333333333330000000000000000333333333333333300000000000000000000000000000000
00000000000000006666666033666333333666333336663333388833366666630000000088888880333666333666666300000000000000000000000000000000
00700700000000006000006036333633333636333636363633383833363333630000000080000080333636333633336300000000000000000000000000000000
00077000000000006000006036333633333666333636663633388833367333630006000080000080333666333673336300000000000000000000000000000000
00077000000000006000006036333633336363633363636333338333363333630000000080000080366363631113336300000000000000000000000000000000
00700700000600006000006033666333333363333333633333338333363333630000000080000080333363333633336300000000000000000000000000000000
00000000000000006000006033333333333636333336363333383833366666630000000080000080333636333666666300000000000000000000000000000000
00000000000000006666666033333333333636333336363333383833333333330000000088888880333636333333333300000000000000000000000000000000
00060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66000660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888eeeeee888eeeeee888eeeeee888eeeeee888eeeeee888eeeeee888777777888888888888888888ff8ff8888228822888222822888888822888888228888
8888ee888ee88ee88eee88ee888ee88ee888ee88ee8e8ee88ee888ee88778777788888888888888888ff888ff888222222888222822888882282888888222888
888eee8e8ee8eeee8eee8eeeee8ee8eeeee8ee8eee8e8ee8eee8eeee87778777788888e88888888888ff888ff888282282888222888888228882888888288888
888eee8e8ee8eeee8eee8eee888ee8eeee88ee8eee888ee8eee888ee8777888778888eee8888888888ff888ff888222222888888222888228882888822288888
888eee8e8ee8eeee8eee8eee8eeee8eeeee8ee8eeeee8ee8eeeee8ee87778787788888e88888888888ff888ff888822228888228222888882282888222288888
888eee888ee8eee888ee8eee888ee8eee888ee8eeeee8ee8eee888ee877788877888888888888888888ff8ff8888828828888228222888888822888222888888
888eeeeeeee8eeeeeeee8eeeeeeee8eeeeeeee8eeeeeeee8eeeeeeee877777777888888888888888888888888888888888888888888888888888888888888888
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
17711666117711111c1c1ccc11cc11cc1c1c117111111eee1ee11ee111111111166616611666116617711666117711111616111111ee1eee11111ccc1ccc1ccc
17111161111711111c1c1c1c1c1c1c111c1c111711111e1e1e1e1e1e1111111116111616116116111711116111171111161611111e1e1e1e11111c1c1c1c1c1c
171111611117111111111ccc1c1c1ccc1111111711111eee1e1e1e1e1111111116611616116116661711116111171111166171111e1e1ee111111ccc1ccc1ccc
171111611117117111111c111c1c111c1111111711111e1e1e1e1e1e1111111116111616116111161711116111171111111177111e1e1e1e1111111c111c111c
177116611177171111111c111cc11cc11111117111111e1e1e1e1eee1111166616661616116116611771166111771171166177711ee11e1e1111111c111c111c
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117777111111111111111111111111
1771166611111cc11177111116161171111111ee1eee11111ccc1ccc1ccc11111111111111111111111111111111111111117711111111111111111111111111
17111161111111c1111711111616111711111e1e1e1e11111c1c1c1c1c1c11111111111111111111111111111111111111111171111111111111111111111111
17111161177711c1111711111161111711111e1e1ee111111ccc1ccc1ccc11111111111111111111111111111111111111111111111111111111111111111111
17111161111111c1111711711616111711111e1e1e1e1111111c111c111c11111111111111111111111111111111111111111111111111111111111111111111
1771166111111ccc117717111616117111111ee11e1e1111111c111c111c11111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
82888222822882228888822288828228822288888888888888888888888888888888888888888888888882288288828882228882822282288222822288866688
82888828828282888888828288288828828288888888888888888888888888888888888888888888888888288288828888828828828288288282888288888888
82888828828282288888822288288828822288888888888888888888888888888888888888888888888888288222822282228828822288288222822288822288
82888828828282888888828288288828888288888888888888888888888888888888888888888888888888288282828282888828828288288882828888888888
82228222828282228888822282888222888288888888888888888888888888888888888888888888888882228222822282228288822282228882822288822288
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

__gff__
0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
