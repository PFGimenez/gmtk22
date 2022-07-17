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
	palt(14,true)
	palt(0,false)
	left_click=false
	prev_click=false
 camx=7
 camy=7
 camera(camx,camy)

	frame=0
	screen_shake=0
	-- game feel variables
	roll_cooldown=30
	roll_spd=3
	roll_duration=10
	max_hp=10

	max_spd=1.5
	acceleration=5 -- immediate max speed
	drag=0.5
	
	enemy_wait_shoot=5
 --
	-- modes:
	-- 0: title
	-- 10: game
	-- 11: game over
	-- 12: choose upgrade
	-- 13: choose where upgrade
	-- 14: win
 go_title_screen()
end

function go_title_screen()
	mode=0
 depth=0
	t1=t()
	t2=t()
	mapgen(true)
end

function init_game()
 _ents={}
 _cmps={}
 _msgs={}
 depth=0
 player=ent()
 player+="collide"
 player+=cmp("destructible",{hp=max_hp,hitboxx=-6,hitboxy=-7,hitboxw=12,hitboxh=14,force_nb=1})
 player+=cmp("can_roll",{curr_roll_cooldown=0})
 player+=cmp("pos",{x=-1,y=-1})
 player+=cmp("spd",{spdx=0,spdy=0})
 player+=cmp("render",{anim=anim_idle,face_left=true,render_order=1})
 player+=cmp("dice",{dval=1,dice_mods={},dice_proba={}})
 init_proba()
 local wpn={}
 for i=1,3 do
--  if(rnd()>.4) player.dice_mods[i]=spawn_mod(1)
  start_weapon=i==1 and spawn_rifle() or spawn_pistol()
  start_weapon.wielder=player
  add(wpn,start_weapon)
 end
 player+=cmp("has_wpn",{curr_wpn=1,wpn=wpn})
 mapgen(false)
 mode=10
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
   assert(v!=nil)
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
--"dice": dval dice_mods dice_proba
--"wpn_stats": wpn_type wpn_dmg cooldown curr_cooldown nb_bullets bull_cooldown curr_bull_cooldown wielder spread bull_speed max_range
--"has_wpn": wpn curr_wpn
--"shooting": bullets_left targetx targety wait_shoot
--"rolling": roll_time
--"bullet": bull_dmg force_src bull_ttl
--"destructible": hp hitboxx hitboxy hitboxw hitboxh force_nb
--"dying": dying_curr
--"sprite": enemy_sprite
--"has_name": name
--"is_mod": mod_id mod_title mod_text
-->8
-- update and systems

function _update()
 frame+=1
 
 local click=stat(34)&1>0
 if(not prev_click and click) left_click=true
 if(prev_click==click) left_click=false
 prev_click=click
 
 if(frame>=30) frame=0
 if mode==14 then
  sys_roll()
  sys_wpn_cooldown()
  sys_update_pos()
  sys_die()
  sys_collision()
  if t()-t1>1 and left_click then
   quit_level() left_click=false
  end
 end
 
 if mode==0 then
  if(t()-t2>1.8) t2=t() mapgen(true)
  if t()-t1>1 and left_click then
   left_click=false init_game() return
  end
 end
 
 if mode==11 then
  sys_roll()
  sys_wpn_cooldown()
  sys_update_pos()
  sys_die()
  sys_collision()
  if t()-t1>1 and left_click then
   left_click=false
   go_title_screen()
   return
  end
 end
 
 if mode==10 then
  sort_ents()
  sys_wpn_cooldown()
  player_input()
  sys_shoot()
  if(frame%5==0) sys_ai_act()
  sys_roll()
  sys_update_pos()
  sys_die()
  sys_collision()
  -- no more enemies
  if _cmps["ai"]==nil or #_cmps["ai"]==0 then
   won_level()
  end
 end
end

function quit_level()
 mode=12
 player.hp=max_hp
 player.anim=anim_idle
 sys_del_bullets()
 sys_del_dying()
 screen_shake=0
 local w=player.wpn[player.curr_wpn]
 w-="shooting"
 w.curr_cooldown=0
 _msgs={}
end

function won_level()
 mode=14
 t1=t()
 generate_loot()
end

function init_proba()
 local p={3,3,3}
 for i=1,6 do
  local id=nil
  if player.dice_mods[i] then
   id=player.dice_mods[i].mod_id
  end
  if id==0 then
   p[(i-1)\2+1]+=1
  elseif id==1 then
   p[(i-1)\2+1]-=1
  end
 end
 player.dice_proba=p
end

function roll_dice()
 local s=0
 for i=1,3 do
  s+=player.dice_proba[i]
 end
 local n=1+flr(rnd(s))
 s=0
 for i=1,3 do
  s+=player.dice_proba[i]
  if(n<=s) return 2*i-flr(rnd(2))
 end
 assert(false)
end

function count_curr_mod(e,i)
 local s=0
 if e==player then
	 local d=player.dval
	 local i1,i2
	 if(d%2==1) i1=d i2=d+1
	 if(d%2==0) i1=d i2=d-1
	 local m1=player.dice_mods[i1]
	 local m2=player.dice_mods[i2]
	 if(m1 and m1.mod_id==i) s+=1
	 if(m2 and m2.mod_id==i) s+=1
 end
 return s
end

function player_chosed_face(i)
 if loot_chosen==1 then
  if(player.wpn[i]!=nil) del_ent(player.wpn[i])
  player.wpn[i]=loot_w
 else
  player.dice_mods[i]=loot_m
 end
 loot_chosen=nil
 loot_w=nil
 loot_m=nil
 mode=10
 mapgen()
end

function player_chosed_reward(i)
 mode=13
 loot_chosen=i
 if(i==1) del_ent(loot_m)
 if(i==2) del_ent(loot_w)
end

function player_input()
 if not is(player,"rolling") then
	 if(btn(⬆️)) update_spd(0,-1)
	 if(btn(⬇️)) update_spd(0,1)
	 if(btn(⬅️)) update_spd(-1,0)
	 if(btn(➡️)) update_spd(1,0)
  local w=player.wpn[player.curr_wpn]
	 if left_click
	  and not is(w,"shooting")
	  and w.curr_cooldown<=0
--	  and not is(player,"rolling")
	  then
	  shoot(player,w,stat(32),stat(33),0)
	  player.anim=anim_player_shoot
	 end
	 -- right click
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
	  -- shooting may be canceled
   player.wpn[player.curr_wpn]-="shooting"
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
      local proba_miss=0.15*count_curr_mod(e,4)
      if rnd()>=proba_miss then
 	     e.hp-=b.bull_dmg
 	     add_msg(e,"-"..b.bull_dmg)
 	    else
	      add_msg(e,"missed")
 	    end
	     if e.hp<=0 then
	      if is(e,"ai") then
		      e+=cmp("dying",{dying_curr=10})
		      e-="destructible"
		      e-="ai"
		      e-="spd"
		      e.wpn[e.curr_wpn]-="shooting"
		      e.anim=anim_enemy_die
	      elseif e==player then
	       mode=11
        t1=t()
	       e.anim=anim_player_die
	      end
	     end
     end
     break
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
   player.dval=roll_dice()
   player.curr_wpn=(player.dval-1)\2+1
   add_msg(player,"\014"..player.dval.."!")
  end
 end
end

sys_shoot=sys({"shooting"},
 function(e)
  if(e.wait_shoot>0) e.wait_shoot-=1
  if e.wait_shoot==0 then
	  while is(e,"shooting") and e.curr_bull_cooldown==0 do
	   if(e.wielder==player) screen_shake=1
			 bullet=ent()
			 local dmg=e.wpn_dmg+count_curr_mod(e.wielder,2)
			 local bull_speed=e.bull_speed
			 if(is(e.wielder,"ai")) bull_speed*=1/2
			 bullet+=cmp("bullet",{force_src=e.wielder.force_nb,bull_dmg=dmg,bull_ttl=ceil(e.max_range/bull_speed)})
			 local x=e.wielder.x
			 if e.wielder.face_left then
			  x-=5
			 else
			  x+=5
			 end
			 bullet+=cmp("pos",{x=x,y=e.wielder.y+3})
			 bullet+=cmp("render",{anim=anim_bullet,face_left=true,render_order=2})
			 local dx=e.targetx-e.wielder.x
	   local dy=e.targety-e.wielder.y
	   local d=1+sqrt(dx*dx+dy*dy)
	   local spdx=bull_speed*dx/d
	   local spdy=bull_speed*dy/d
	   local spread=max(0,e.spread+count_curr_mod(e,6))
	   if spread>0 then
	    local a=rnd(spread*0.01)-spread*0.01/2
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
		 end
		 if(is(e,"shooting")) e.curr_bull_cooldown-=1
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
 
sys_del_bullets=sys({"bullet"},
 function(e)
  del_ent(e)
 end)

sys_del_dying=sys({"dying"},
 function(e)
  del_ent(e)
 end)
 
sys_update_pos=sys({"pos","spd","render"},
 function(e)
  if is(e,"has_wpn") and is(e.wpn[e.curr_wpn],"shooting") then
   -- shooting chars do not turn
  else
   if(e.spdx>0) e.face_left=false
   if(e.spdx<0) e.face_left=true
  end
  local nextx=e.x+e.spdx
  local nexty=e.y+e.spdy
  -- collision with map
  
  if is(e,"bullet") then
   if(e.bull_ttl==0) del_ent(e)
   e.bull_ttl-=1
  end
  
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
 
function shoot(e,w,x,y,wait)
 e.face_left=x<e.x
 local nb_bullets=w.nb_bullets+count_curr_mod(e,3)
 w+=cmp("shooting",{bullets_left=nb_bullets,targetx=x,targety=y,wait_shoot=wait})
 local cooldown=max(5,w.cooldown-5*count_curr_mod(e,5))
 w.curr_cooldown=cooldown
end
-->8
-- draw

function _draw()
 if mode==0 then
  cls(0)
  camera(0,0)
  map()
  spr(176,2,10,16,4)
  spr(112,25,40,11,4)
  local s="cpiod for the gmtk2022"
  ?s,64-2*#s,122,6
  if(t()-t1>1 and t()%1<.7) then
   local s="\014cLICK TO sTART"
   nprint(s,64-4*14,110,10)
  end
  nprint("controls:",nil,80,10)
  nprint("arrows to move",nil,87,9)
  nprint("left click to shoot",nil,94,9)
  nprint("right click to roll",nil,101,9)

 end

 if mode==10 or mode==11 or mode==14 then
  camera(camx,camy)
		cls(0)
		if screen_shake>0 then
	  screen_shake-=1
	  camera(camx+rnd(2)-1,camy+rnd(2)-1)
	 end
		map()
	 sys_draw(1) -- char
	 sys_draw(2) -- bullets
	 -- redraw some walls
	 map(nil,nil,nil,nil,nil,nil,2)
--	 sys_draw_hitbox()
		camera(camx,camy)
	 render_msgs()
  if mode==10 then
  	-- aim
   spr(48,stat(32)-3,stat(33)-3)
  end
	 draw_ui()
  if(mode==11) then
   if(t()-t1>1) then
    local s="click to restart"
    nprint(s,64-2*#s,80,10)
   end
   nprint("\014gAME oVER!",64-4*10,50,8)
  end
  if mode==14 then
   if(t()-t1>1) then
    local s="click to continue"
    nprint(s,64-2*#s,80,10)
   end
   nprint("\014nO ONE LEFT",64-4*11,50,10)
  end
 elseif mode==12 or mode==13 then
  camera(0,0)
  draw_reward()
 end
end

function draw_ui()
 -- bottom
 local d=player.dval
 local i1,i2
 if(d%2==1) i1=d i2=d+1
 if(d%2==0) i1=d i2=d-1
 local m1=player.dice_mods[i1]
 local m2=player.dice_mods[i2]
 local s="face "..d
 if(m1) s=s..": "..m1.mod_title
 if(m2 and not m1) s=s..": "..m2.mod_title
 local s2=""
 if(m2 and m1) s2=m2.mod_title
 nprint(s,10,122,7)
 nprint(s2,10+4*8,128,7)
 local x=128
 -- hp
 local y=10
 ?"♥",x-2,y,8
 draw_bar(x,y+7,max_hp-max(0,player.hp),max_hp)
 
 -- weapon
 local y=50
 local w=player.wpn[player.curr_wpn]
 local s=158-w.wpn_type*32
 if(w.super) s+=1
 spr(s,x-3,y,1,2)
 draw_bar(x,y+17,w.curr_cooldown,w.cooldown)
 
 -- roll
 local y=90
 local t={"ro","ll"}
 for i=1,#t do
  print(t[i],x-2,y+6*i,9)
 end
 draw_bar(x,19+y,player.curr_roll_cooldown,roll_cooldown)
end
 
function draw_bar(x,y,val,maxval)
 local h=20
 local p=val/maxval
 if(val<maxval) rectfill(x,y+h+1,x+3,y+1+flr(h*p),7)
 rect(x,y,x+3,y+h+2,6)
 pset(x,y,0)
 pset(x+3,y,0)
 pset(x,y+h+2,0)
 pset(x+3,y+h+2,0)
end

function draw_reward()
 cls(1)
 nprint("\014iNVENTORY",5,2,7)
 for i=1,3 do
  local y=38*i-20
  local c=6
  local dy=0
  if mode==13 then
   if stat(32)>1 and stat(32)<60 and stat(33)>y-2 and stat(33)<y+33 then
    c=10
    dy=2-abs(flr(2*cos(t())+.5))
    if loot_chosen==1 and left_click then
     left_click=false
     player_chosed_face(i)
     return
    end
   else
    c=9
   end
  end
  nprint("faces "..tostr(2*i-1).." & "..tostr(2*i),7,y-dy,c)
  -- weapon sprite
  local sprite=0
  local super=false
  if mode==13 and c==10 and loot_chosen==1 then
   sprite=loot_w.wpn_type*2+80+16
   super=loot_w.super
  else
   sprite=player.wpn[i].wpn_type*2+80
   super=player.wpn[i].super
  end
  if(super) then
   spr(sprite,30,y+7,2,1)
   nprint("super",4,y+8,10)
  else
   spr(sprite,20,y+7,2,1)
  end
  -- mods
  for j=0,1 do
   local m=player.dice_mods[2*i-1+j]
   local cm=6
   local my=y+16+8*j
   if loot_chosen==2 and stat(32)>1 and stat(32)<60 and stat(33)>=my and stat(33)<my+8 then
   	if(left_click) player_chosed_face(2*i-1+j) return
    m=loot_m
    cm=10
   end
   if m==nil then
    nprint("nO MOD",2,my,5)
   else
    nprint(m.mod_title,2,my,cm)
   end
  end
 end
 if mode==12 and t()%1<.8 then
  nprint("cHOOSE A",75,20,7)
  nprint("REWARD!",77,27,7)
 elseif mode==13 and t()%1<.8 then
  if loot_chosen==1 then
   nprint("wHICH FACE",75,20,7)
   nprint("FOR THIS GUN?",70,27,7)
  else
   nprint("wHICH FACE",75,20,7)
   nprint("FOR THIS MOD?",70,27,7)
  end    
 end
 local w=64
 local h={30,14+8*#loot_m.mod_text}
 local x=60
 local y={40,100-h[2]/2}
 local c={}
 for i=1,2 do
  -- highlight
  if mode==12 or (mode==13 and loot_chosen==i) then
   if mode==13 or (stat(32)>x and stat(32)<x+w and stat(33)>y[i] and stat(33)<y[i]+h[i]) then
    if(mode==12 and left_click) player_chosed_reward(i)
    c[i]=10
   else
    c[i]=9
   end
   for dx=-1,1 do
 	  rect(x-dx,y[i]-dx,x+w+dx,y[i]+h[i]+dx,dx==0 and c[i] or 0)
   end
	  nprint("reward "..i,x+18,y[i]-2,c[i])
  end
 end
 -- weapon
 if mode==12 or loot_chosen==1 then
  sspr(loot_w.wpn_type*16,40,16,8,x+10,y[1]+3,32,16)
  local col=c[1]
  if(loot_w.super and t()%1<.3) col=8
  nprint(loot_w.name,x+1+w/2-#loot_w.name*2,y[1]+21,col)
 end
 -- modifier
 if mode==12 or loot_chosen==2 then
  nprint(loot_m.mod_title,x+1+w/2-#loot_m.mod_title*2,y[2]+6,c[2])
  local my=y[2]+14
  for i=1,#loot_m.mod_text do
   nprint(loot_m.mod_text[i],x+4,my,7)
   my+=8
  end
 end
 -- mouse
 spr(9,stat(32)-1,stat(33)-1)
end

function nprint(s,x,y,c)
 x=x or 64-2*#s
 for dx=-1,1 do
  for dy=-1,1 do
   ?s,x+dx,y+dy,0
  end
 end
 ?s,x,y,c
end

sys_draw=sys({"render","pos"},
 function(e,layer)
  if e.render_order==layer then
   e.anim(e)
   if is(e,"has_wpn") and not is(e,"rolling") then
    local w=e.wpn[e.curr_wpn]
    if e.face_left then
     spr(w.wpn_type*2+80,e.x-14,e.y,2,1,true)
    else
     spr(w.wpn_type*2+80,e.x-2,e.y,2,1)
    end
   end
  end
 end)

sys_draw_hitbox=sys({"destructible","pos"},
 function(e)
  local x=flr(e.x)+e.hitboxx
  local y=flr(e.y)+e.hitboxy
  rect(x,y,x+e.hitboxw-1,y+e.hitboxh-1,9)
  pset(e.x,e.y,12)
 end)
 
function draw_base(e,face,dead)
 local l1,l2
 local x,y=flr(e.x),flr(e.y)
 if e.spdx==0 and e.spdy==0 then
  l1,l2=35,35
 else
  local n=flr((t()%.3)*4/.3)
  if(n==0) l1,l2=33,34
  if(n==1 or n==3) l1,l2=35,35
  if(n==2) l1,l2=34,33
 end
 local dy=t()%1<.35 and 1 or 0
 -- legs
 if not dead then
	 if e.face_left then
	  spr(l1,x-7,y)
	  spr(l2,x-3,y)
	 else
	  spr(l1,x-1,y,1,1,true)
	  spr(l2,x-5,y,1,1,true)
	 end
 else
  dy=2
 end
 -- base
 spr(1,x-8,y-8+dy,2,2,e.face_left)
 if e.face_left then
  -- number and face
  spr(9+e.dval,x+3,y-3+dy)
  spr(face,x-5,y-2+dy)
 else
  spr(9+e.dval,x-6,y-3+dy)
  spr(face,x-3,y-2+dy,1,1,true)
 end
end

function anim_idle(e)
 draw_base(e,3)
end

function anim_player_die(e)
 draw_base(e,4,true)
end

function anim_player_shoot(e)
 draw_base(e,5)
end

function anim_roll(e)
 local s=20+2*flr((t()%.1)*3/.1)
 spr(s,e.x-8,e.y-8,2,2,not e.face_left)
end

---------------------

function anim_bullet(e)
 -- bullet have no sprite symmetry
 local a=abs(e.spdx/e.spdy)
 local s=0
 if(e.force_src==1) s=16
 if a<2 and a>0.5 then
  if e.spdx*e.spdy<0 then
   spr(s+29,e.x,e.y)
  else
   spr(s+28,e.x,e.y)
  end
 elseif abs(e.spdx)>abs(e.spdy) then
  spr(s+26,e.x,e.y)
 else
  spr(s+27,e.x,e.y) 
 end
end

---------------------

function anim_enemy_idle(e)
 spr(e.enemy_sprite+50,e.x-3,e.y-5,1,2,not e.face_left)
end

function anim_enemy_move(e)
 anim_enemy_idle(e)
end

function anim_enemy_die(e)
 spr(e.enemy_sprite+51,e.x-3,e.y-5,1,2,not e.face_left)
end

function anim_enemy_shoot(e)
 spr(e.enemy_sprite+49,e.x-3,e.y-5,1,2,not e.face_left)
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

function spawn_enemy(x,y,enemy_type)
 local hp,w,ai_type
 e=ent()
 if enemy_type==0 then
  e+=cmp("sprite",{enemy_sprite=0})
  hp=3
  w=spawn_rifle()
  ai_type=0
 elseif enemy_type==1 then
  e+=cmp("sprite",{enemy_sprite=3})
  hp=2
  w=spawn_sniper()
  ai_type=0
 else
  e+=cmp("sprite",{enemy_sprite=6})
  hp=5
  w=spawn_shotgun()
  ai_type=0
 end
 e+="collide"
 e+=cmp("destructible",{hp=hp,hitboxx=-3,hitboxy=-5,hitboxw=8,hitboxh=12,force_nb=2})
 e+=cmp("pos",{x=x,y=y})
 e+=cmp("spd",{spdx=0,spdy=0})
 e+=cmp("render",{anim=anim_enemy_idle,face_left=true,render_order=1})
 e+=cmp("ai",{ai_type=ai_type,ai_state=1,ai_var=0})
 w.wielder=e
 e+=cmp("has_wpn",{curr_wpn=1,wpn={w}})
end

function spawn_rifle()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=3,wpn_dmg=1,cooldown=15,curr_cooldown=0,nb_bullets=3,bull_cooldown=3,curr_bull_cooldown=0,wielder=false,spread=5,bull_speed=1.8,max_range=70,super=false})
 w+=cmp("has_name",{name="rifle"})
 return w
end

function spawn_srifle()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=3,wpn_dmg=1,cooldown=10,curr_cooldown=0,nb_bullets=4,bull_cooldown=1,curr_bull_cooldown=0,wielder=false,spread=5,bull_speed=2.5,max_range=70,super=true})
 w+=cmp("has_name",{name="military rifle"})
 return w
end

function spawn_sniper()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=4,wpn_dmg=5,cooldown=50,curr_cooldown=0,nb_bullets=1,bull_cooldown=0,curr_bull_cooldown=0,wielder=false,spread=0,bull_speed=6,max_range=300,super=false})
 w+=cmp("has_name",{name="sniper rifle"})
 return w
end

function spawn_ssniper()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=4,wpn_dmg=6,cooldown=40,curr_cooldown=0,nb_bullets=1,bull_cooldown=0,curr_bull_cooldown=0,wielder=false,spread=0,bull_speed=6,max_range=300,super=true})
 w+=cmp("has_name",{name="master sniper"})
 return w
end

function spawn_pistol()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=1,wpn_dmg=3,cooldown=10,curr_cooldown=0,nb_bullets=1,bull_cooldown=0,curr_bull_cooldown=0,wielder=false,spread=1,bull_speed=1.5,max_range=40,super=false})
 w+=cmp("has_name",{name="pistol"})
 return w
end

function spawn_spistol()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=1,wpn_dmg=5,cooldown=10,curr_cooldown=0,nb_bullets=1,bull_cooldown=0,curr_bull_cooldown=0,wielder=false,spread=1,bull_speed=2,max_range=80,super=true})
 w+=cmp("has_name",{name="revolver"})
 return w
end

function spawn_shotgun()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=2,wpn_dmg=1,cooldown=20,curr_cooldown=0,nb_bullets=10,bull_cooldown=0,curr_bull_cooldown=0,wielder=false,spread=20,bull_speed=2,max_range=30,super=false})
 w+=cmp("has_name",{name="shotgun"})
 return w
end

function spawn_sshotgun()
 local w=ent()
 w+=cmp("wpn_stats",{wpn_type=2,wpn_dmg=1,cooldown=20,curr_cooldown=0,nb_bullets=15,bull_cooldown=0,curr_bull_cooldown=0,wielder=false,spread=20,bull_speed=2,max_range=40,super=true})
 w+=cmp("has_name",{name="super shotgun"})
 return w
end

function spawn_weapon(t)
 if(t==1) return spawn_rifle()
 if(t==2) return spawn_shotgun()
 if(t==3) return spawn_sniper()
 if(t==4) return spawn_srifle()
 if(t==5) return spawn_sshotgun()
 if(t==6) return spawn_ssniper() 
 if(t==7) return spawn_spistol() 
end

function spawn_mod(t)
 e=ent()
 local m
 if(t==0) m={mod_id=0,mod_title="lOADED fACE",mod_text=   {"fACE IS MORE","LIKELY"}}
 if(t==1) m={mod_id=1,mod_title="lIGHTENED fACE",mod_text={"fACE IS LESS","LIKELY"}}
 if(t==2) m={mod_id=2,mod_title="eXPL. bULLET",mod_text=  {"eXTRA DAMAGE","PER BULLET"}}
 if(t==3) m={mod_id=3,mod_title="tRIGGER hAPPY",mod_text= {"oNE EXTRA","BULLET PER","VOLLEY"}}
 if(t==4) m={mod_id=4,mod_title="aRMORED fACE",mod_text=  {"cAN REDUCE THE","DAMAGE"}}
 if(t==5) m={mod_id=5,mod_title="aCTIVE cOOLING",mod_text={"dECREASE","WEAPON COOLDOWN"}}
 if(t==6) m={mod_id=6,mod_title="sCOPE",mod_text={"rEDUCE ATTACK","SPREAD"}}
 m.mod_type=t
 e+=cmp("is_mod",m)
 return e
end

function generate_loot()
 -- don't forget to destroy what is not accepted!
 local tw={1,1,1,1,2,2,2,3,3,4}
 local w=rnd(tw)
 if(w==4) w=rnd({4,5,6,7})
 local tm={0,1,2,3,4,5,6}
 loot_w=spawn_weapon(rnd(tw))
 loot_w.wielder=player
 loot_m=spawn_mod(rnd(tm))
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
  
  local w=e.wpn[e.curr_wpn]
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
   if e.ai_var==0 and rnd()<.1 then
    local dx=player.x-e.x
    local dy=player.y-e.y
    if abs(dx)+abs(dy)>0.8*w.max_range then -- come closer
     local d=sqrt(dx*dx+dy*dy)
     local walk_speed=.8
     e.ai_var=2
     e.anim=anim_enemy_move
     e.spdx=walk_speed*dx/d
     e.spdy=walk_speed*dy/d
    else -- attack
		   if t()-tmercy>2
		   and not is(e.wpn[e.curr_wpn],"shooting")
		   and w.curr_cooldown==0 then
		    shoot(e,w,player.x,player.y,enemy_wait_shoot)
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

function mapgen(dummy)
 tmercy=t()
 depth+=1
 first_step()
 second_step()
 set_bitset_wall()
 if(not dummy) populate()
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
   mset(x,y,2)
--   if y==15 then
--    mset(x,y,241)
--   elseif x==0 then
--    mset(x,y,253)
--   elseif x==15 then
--    mset(x,y,247)
--   elseif y==0 then
--    mset(x,y,241)
--   else
   if x!=0 and x!=15 and y!=0 and y!=15 then
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
  
--  if t==0 then
  -- big open space
--   if(w and k>1 and k<6) mset(x,y,1)
  if t==1 and rnd()<.4 then
  -- pillars
   if(x&1==0 and y&1==0 and not w and k==0) mset(x,y,2)
   if(w and k>0 and k<3) mset(x,y,1)
  end
 end
 
 for x=0,15 do
  for y=0,15 do
   if(mget(x,y)==1) mset(x,y,32)
  end
 end
end

function set_bitset_wall()
	local delta={[0]={0,-1},{1,0},{0,1},{-1,0}}
	for x=0,15 do
	 for y=0,15 do
	  local val=mget(x,y)
	  if val==2 then
		  local b=0
		  for i=0,3 do
		  	local x2=x+delta[i][1]
		   local y2=y+delta[i][2]
		   local side=x2<0 or x2>=16 or y2<0 or y2>=16 or mget(x2,y2)==2 or mget(x2,y2)>=80
		   if(side) b+=1<<i
		  end
		  b+=240
--		  if b==81 or b==85 or b==144 then
--		   if mget(x+1,y-1)==2 or mget(x+1,y-1)>=81 then
--		    b+=16
--		   end
--		  end
	   mset(x,y,b)
	  end
	 end
	end
end

function populate()
 local x,y=get_empty_space()
 player.x,player.y=x*8+rnd(7),y*8+rnd(7)
 local todo_enemies=3*(depth+1)
 while todo_enemies>0 do
  local x,y=get_empty_space()
  x,y=x*8+rnd(7),y*8+rnd(7)
  if abs(x-player.x)>30 and abs(y-player.y)>30 then
   local typ=flr(rnd(3))
   spawn_enemy(x,y,typ)
   if(typ==1) todo_enemies-=2
   todo_enemies-=1
  end
 end
end

function get_empty_space()
 local x,y=flr(rnd(16)),flr(rnd(16))
 while not fget(mget(x,y),0) do
  x=flr(rnd(16))
  y=flr(rnd(16))
 end
 return x,y
end

__gfx__
00000000ee000000000eeeeee9ee9eee8e8e8e8e9eeee9eeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeee7eeeeee77eeeeee777eeeee7eeeeeee777eeeee7eeeeeee
00000000e00555555550eeeee9ee9eeee8eee8eee9ee9eeeeeeeeeeeeeeeeeeeeeeeeeee070eeeee77eeeeeeee7eeeeeee7eeeee7e7eeeee77eeeeee777eeeee
00000000e050555555550eeeeeeeeeee8e8e8e8eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0770eeeee7eeeeeee7eeeeeee77eeeee777eeeeee77eeeee7e7eeeee
00000000e0550555555550eeeeeee9eeeeeeeeeee9999eeeeeeeeeeeeeeeeeeeeeeeeeee07770eee777eeeee777eeeee777eeeeeee7eeeee777eeeee777eeeee
00000000e05550000000000ee9999eeee88888ee9eeee9eeeeeeeeeeeeeeeeeeeeeeeeee077770eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00000000e05550666666660eeeeeeeeeeeee8eee9e99e9eeeeeeeeeeeeeeeeeeeeeeeeee07700eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00000000e05550666666660eeeeeeeeeeeeeeeeee9999eeeeeeeeeeeeeeeeeeeeeeeeeeee0070eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
00000000e05550666666660eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeee05550666666660eeeeeeeeeeeee6eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee66eeee99eeeeee9eeeeeee9eeeeeeee9eeeeeeeeeeeeeeeeeaeeee
eeeeeeeee05550666666660eeeeeeeeeeee6ee6666eeeeeeeeeeee6666eeeeeeeeeeee6666ee6eeeeeeeeeee9eeeeeeee9eeeeee9eeeeeeeeee6eeeeeea6aeee
eeeeeeeeee0550666666660eeeeeeeeeeee6e655556eeeeeeeeee655556eeeeeeeeee655556eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6eeeeeea6aeee
eeeeeeeeeee050666666660eeeeeeeeeeeee65500556eeeeeeee65566556e6eeeeee65555556eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6eeeeeea6aeee
eeeeeeeeeeee00666666660eeeeeeeeeeee6555550556eee6ee6555556556e6eeee6555500556eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6eeeeeea6aeee
eeeeeeeeeeeee000000000eeeeeeeeeeeee6550555056eeee6e6550555656ee6eee6555655056eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6eeeeeea6aeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee65055555556eeee665055556556eeeee65565555056eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6eeeeeea6aeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee65055555556eeeee65055555556eee6e65565555056eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee56eeeeea56aeee
01111111eeeeeeeeeeeeeeeeeeeeeeeeeee65055555656eeeee65505555056eee6e65565555556ee66eeeeee6eeeeeee6eeeeeeee6eeeeeeee566eeeea566aee
10111111eeeeeeeeeeeeeeeeeeeeeeeeeeee6505555656eeeeee6555550556eeee6e6556555056eeeeeeeeee6eeeeeeee6eeeeee6eeeeeeeee566eeeea566aee
11011111eeeeeeeeeeeeeeeeeeeeeeeeeeee6555556556eeeeee6555005556eeeeee6555500556eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee566eeeea566aee
11101111eeeeeeeeeeeeeeeeeeeeeeeeee6ee65566556e6eeeeee65555556eeeeeeee65555556eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee665eeeea665ae
11010111eeeeeeeeeeeeeeeeeeeeeeeeeee66e655556ee6eeeeeee655556eeeeeeeeee655556eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee644eeeea644ae
10111011eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6666ee6eeeeeeeee6666eeeeeeeeeeee6666eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44ae
01111101eee0eeeeeee0eeeeeee0eeeeeeeeeeeeeeeeeeeeeeeee66eeeeeeeeeeeeeeeeeeee6eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44ae
11111110ee0eeeeeeeee0eeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee66eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaaee
eee6eeeeeeeeeeeeeeeeeeeeee6226eeeeeeeeeeeeeeeeeeeee666eeeeeeeeeeeeeeeeeeeee666eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeee
eee6eeeeee6226eeee6226eee662266eeeee666eeee666eee667776eeee666eeeee666eee667776eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee5eeeeeea5aeee
eeeeeeeee662266ee662266ee222222eee667776e667776e6777776ee667776ee667776e6777776eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee55eeeeea55aeee
66eee66ee222222ee222222eee272722e67777766777776e67878eee6777776e6777776e6770776eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee5eeeeeea5aeee
eeeeeeee2272227222272722eee22226e67878766787876e6888eeee6770776e6770776e6700076eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee5eeeeeea5aeee
eee6eeee622727266227272622ee7222e68888866888886e67eee76e6700076e6700076eeeee006eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4eeeeeea4aeee
eee6eeee2222222222222222622eeeeee67888766788876eeeee886e6000006e6000006eeeeeee6eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44aae
eeeeeeeee222722ee222222e2222eeeee67787766778776eee88876e6070706e6070706e6000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee45466eea45466a
eeeeeeeee662266ee662266ee222222ee67777766777776e6778776e6770776e6770776e607070eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee554eeeea554aae
eeeeeeeeee6226eeee6226eee662266ee67777766777776e6777776e6777776e6777776e6770776eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee556eeeea556aae
eeeeeeeeee0e0eeeee0e0eeeee6226eee677766e677766ee6777776e677766ee677766ee6777776eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee56655eea56655a
eeeeeeeeee0e0eeeee0e0eeeee0e0eeeee666eeee666eeee677766eee666eeeee666eeee677766eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee565e5eea565a5a
eeeeeeeeee0e0eeeee0e0eeeee0e0eeeee0e0eeee0e0eeeee666eeeee0e0eeeee0e0eeeee666eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4eeeeeea4aeae
eeeeeeeeee0e0eeeee0e0eeeee0e0eeeee0e0eeee0e0eeeee0e0eeeee0e0eeeee0e0eeeee0e0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44aee
eeeeeeeeee0e0eeeee0e0eeeee0e0eeeee0e0eeee0e0eeeee0e0eeeee0e0eeeee0e0eeeee0e0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44aee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaaeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee55554eeee5eeeeeee5555eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeee
eeeeeeeeeeeeeeeeeeeeeeee656666eeeeeee555555555eee44466555445555eeee666666666666eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee5eeeeeea5aeee
eeeeeeeeeeeeeeeeeeeeeee666666eeee444e46664446eeee44e566444eeeeeee4446666eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee56eeeeea56aee
eeeeeeeeeeeeeeeeeeeeeee555eeeeeee44444eeeeeeeeeeeeeee5ee6eeeeeeee4445eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee54eeeeea54aee
eeeeeeeeeeeeeeeeeeeeeee55eeeeeeeeeeeeeeeeeeeeeeeeeee55ee6eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee54eeeeea54aee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee54eeeeea54aee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee56eeeeea56aee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaaaaaeeeeaeeeeeeeaaaaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee56eeeeea56aee
eeeeeeeeeeeeeeeeeeeeeeeeaaaaaaeeeeeeeaaaaaaaaaeeeaaa55554aaaa5aeeeeaa5555aaaaaaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee56eeeeea56aee
eeeeeeeeeeeeeeeeeeeeeeea656666aeeaaaa555555555aea44466555445555aeaa666666666666aeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee544eeeea544ae
eeeeeeeeeeeeeeeeeeeeeea666666aeea444a46664446aeea44a566444aaaaaea4446666aaaaaaaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee4eeeeeaa4ae
eeeeeeeeeeeeeeeeeeeeeea555aaaeeea44444aaaaaaaeeeeaaea5aa6aeeeeeea4445aaaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44ae
eeeeeeeeeeeeeeeeeeeeeea55aeeeeeeeaaaaaeeeeeeeeeeeeea55aa6aeeeeeeeaaaaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44ae
eeeeeeeeeeeeeeeeeeeeeeeaaeeeeeeeeeeeeeeeeeeeeeeeeeeeaaeeaeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee44eeeeea44ae
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaaee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000eeeeeeeeeeeee090eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaeeee
eeeeeeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0099990eeeeeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6eeeeeea6aeee
eeeeeeeeee0090eeeeeeeeeeeeeeeeeeeeeeeeeeee0099999990eeeeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee66eeeeea66aee
eeeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeee099999999990eeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee66eeeeea66aee
eeeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeee0999990009990eeeeeeee0900eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee66eeeeea66aee
eeeeeeeee0990eeeeeeeeeeeeeeeeeeeeeeeeee0999900eee09990eeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee565eeeea565ae
eeeeeeee09990ee0eeeeeeeeeeeeeeeeeeeeeee0990090eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6655eeea6655a
eeeeeeee099900090eeeeeeeeeeeeeeeeeeeee09900990eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee655eeeea655a
eeeee000099999990eeeeeee000eeeeeeeeeee090e0990eeee0990eeeeeeeeeeeeeeeeeeeee0000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeaaae
eeee0999999999990eeeeee09990eeeeeeeeeee0ee0990eeee0990eeeeeee00eeeeeeeeeee099990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee099999900000eeeeee09999900eeeeeeeeeee09990eeee0990eeeeee0990eeeeeeeee09999990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeee000990eeeeeeeeeee099990990eeeeeeeeee09990eeee0990eeeee09990eeeeeeee0999009990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeee0990eeeeeeeeee0990009990eeeeeeeeee0990eeeee0990eeeee09990eeeeeeee0990e09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeee0990eeeeeeeee09990e09990eeeeeeeeee0990eeeee0990eeeee09990eeeeeee0990ee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeee0990eeeeeeeee0990ee09990eeeeeeeeee0990eeee0990eeeeee0990eeeeeeee0990ee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeee0990eeeeeeee09990ee09990eeeeeeeeee0990eeee0990eeeee09990eeeeeeee090eee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeee0990eeeeeeeee09990ee09990eeeeeeeeee0990eeee0990eeeee0990eeeeeeee0990ee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeee0990eeeeeeeee0990eeee0990eeeeeeeeee0990eeee0990eeeee0990eeeeeeee0990ee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeee09990eeeeeeee09990eeee0990eeeeeeeeee0990eee0990eeeeee0990eeeeeeee0990e09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee099990eeeeeeee09990eeee0990eeeeeeeeee090eeee0990eeeee09990eeeeeeee099009990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eee0990990eeeeeeee09990eee0990eeeeeeeeee0990eeee090eeeee099990eeeeeeee09909990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
ee09900990eeeeeeee09990eee0990eeeeeeeeee0990eee0990eeee0990990eeeeeeee0999990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
e0990e0990eeeeeeee09990eee0990eeeeeeeeee0990ee0990eee009900990eeeeeeee099900eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
0990ee0990eeeee0ee09990eee090eeeeeeeeeee0990ee0990ee09990e0990eeeee0ee09990eeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
090eee0990eee0090e09990ee0990eeeeeeeeeee099000990eee0990ee0990eeee090e09990eeeeee0090eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
e0eeee099900099990e0999009990eeeeeeeeeee09909990eeee090eeee0990000990ee09990000009990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeee0999999900ee099999990eeeeeeeeeeee0999990eeeeee0eeeee099999990eee0999999999990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeee0999900eeeee0999990eeeeeeeeeeeeee09990eeeeeeeeeeeeee0999900eeeee09999999990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeee0000eeeeeeee09990eeeeeeeeeeeeeeee000eeeeeeeeeeeeeeee0000eeeeeeee009999000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeee000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000eeeeeeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeee000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000eeeeeeeeeeeee090eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeeeeeeeeeeee0099990eeeeeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0090eeeeeeeeeeeee0099999990eeeeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee09990eeeeeeeeeeee099999999990eeeeeeee09990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee09990eeeeeeeeeee0999990009990eeeeeeee0900eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0990eeeeeeeeeee0999900eee09990eeeeeeee0eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee09990ee0eeeeeeee0990090eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeee0eeeeeeeeeeee099900090eeeeee09900990eeee0990eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeee0990eeeeeeeeeeeeeeee000eeeeeeeee090eeeeeeee000099999990eeeeee090e0990eeee0990eeeeeeeeeeeeeeeeeeee000000eeeeeeeeee0000eeeeeee
eeee0990eeeeeeeeeeeee0009990eeeeeee09990eeeeee0999999999990eeeeeee0ee0990eeee0990eeeeeee00eeeeeeeeee09999990eeeeeeee099990eeeeee
eeee0990eeeeeeeeeee009909990eeeeeee09990eeeeee099999900000eeeeeeeeee09990eeee0990eeeeee0990eeeeeeee099999990eeeeeee09999990eeeee
eee09990eeeeeeeeee0999909990eeeeee099990eeeeeee000990eeeeeeeeeeeeeee09990eeee0990eeeee09990eeeeeee0990009990eeeeee0999009990eeee
eee0990eeeeeeeeeee0999909990eeeeee09990eeeeeeeeee0990eeeeeeeeeeeeeee0990eeeee0990eeeee09990eeeeee0990eee0990eeeeee0990e09990eeee
eee0990eeeeeeeeee0990909990eeeeeee09990eeeeeeeeee0990eeeeeeeeeeeeeee0990eeeee0990eeeee09990eeeeee0990eee0990eeeee0990ee09990eeee
eee0990eeeeeeeee0990e009990eeeeeee09990eeeeeeeeee0990eeeeeeeeeeeeeee0990eeee0990eeeeee0990eeeeee0990eeee0990eeeee0990ee09990eeee
eee0990eeeeeeeee0990ee09990eeeeeee099990eeeeeeeee0990eeeeeeeeeeeeeee0990eeee0990eeeee09990eeeeee0990eeee090eeeeee090eee0990eeeee
eee0990eeeeeeee0990eee09990eeeeeee099990eeeeeeee0990eeeeeeeeeeeeeeee0990eeee0990eeeee0990eeeeeee090eeeee090eeeee0990ee09990eeeee
eee0990eeeeeeee0990eee0990eeeeeee09909990eeeeeee0990eeeeeeeeeeeeeeee0990eeee0990eeeee0990eeeeee0990eeeee090eeeee0990ee0990eeeeee
eee0990eeeeeeee090eeee0990eeeeee0990e0990eeeeee09990eeeeeeeeeeeeeeee0990eee0990eeeeee0990eeeeee0990eeeee090eeeee0990e09990eeeeee
eee0990eeeeeee0990eeee0990eeeeee0990e09990eeee099990eeeeeeeeeeeeeeee090eeee0990eeeee09990eeeeee0990eeeeee0eeeeee099009990eeeeeee
eee0990eeeeeee0990eeee0990eeeee0990eee0990eee0990990eeeeeeeeeeeeeee0990eeee090eeeee099990eeeeee0990eeeeeeeeeeeee09909990eeeeeeee
eee0990eeeeeee0990eee09990eeee0990eeee0990ee09900990eeeeeeeeeeeeeee0990eee0990eeee0990990eeeeee0990eeeeeeeeeeeee0999990eeeeeeeee
ee09990eeeee0e0990eee09990eee0990eeeee0990e0990e0990eeeeeeeeeeeeeee0990ee0990eee009900990eeeeee0990eeeeeeeeeeeee099900eeeeeeeeee
ee0999000000900990ee099990ee0990ee0eee09900990ee0990eeeee0eeeeeeeee0990ee0990ee09990e0990eeeee009990eeeeeeee0eee09990eeeeeeee0ee
ee0999999999900990ee090990e09990e090ee0990090eee0990eee0090eeeeeeee099000990eee0990ee0990eeee09099990eeeee0090ee09990eeeeee0090e
e099999999990e09990099099000900e0999000990e0eeee099900099990eeeeeee09909990eeee090eeee099000099009999000009990eee09990000009990e
ee0000000000ee0999999009999990ee0999999990eeeeeee0999999900eeeeeeee0999990eeeeee0eeeee099999990ee0999999999990eee0999999999990ee
eeeeeeeeeeeeeee099990ee099990eeee09999990eeeeeeeee0999900eeeeeeeeeee09990eeeeeeeeeeeeee0999900eeee00999999000eeeee09999999990eee
eeeeeeeeeeeeeee09990eee09990eeeeee009990eeeeeeeeeee0000eeeeeeeeeeeeee000eeeeeeeeeeeeeeee0000eeeeeeee000000eeeeeeeee009999000eeee
eeeeeeeeeeeeeeee000eeeee000eeeeeeeee000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000eeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
01111111777777777777777777777777777777777000000777777777700000007777777777777777777777777777777777777777000000077777777700000000
14444411dddddddddddddddddddddddd70000007700000077000000070000000dddddddddddddddddddddddddddddddd00000007000000070000000000000000
44444441dddddddddddddddddddddddd70000007700000077000000070000000dddddddddddddddddddddddddddddddd00000007000000070000000000000000
14999411dddddddddddddddddddddddd70000007700000077000000070000000dddddddddddddddddddddddddddddddd00000007000000070000000000000000
11020111dddddddddddddddddddddddd70000007700000077000000070000000dddddddddddddddddddddddddddddddd00000007000000070000000000000000
10121011dddddddddddddddddddddddd70000007700000077000000070000000dddddddddddddddddddddddddddddddd00000007000000070000000000000000
012221015dd55dd55dd55dd55dd55dd5700000077000000770000000700000005dd55dd55dd55dd55dd55dd55dd55dd500000007000000070000000000000000
12111210555555555555555555555555700000077000000770000000700000005555555555555555555555555555555500000007000000070000000000000000
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888eeeeee888eeeeee888eeeeee888777777888eeeeee888eeeeee888eeeeee888888888888888888ff8ff8888228822888222822888888822888888228888
8888ee888ee88ee88eee88ee888ee88778887788ee8e8ee88ee888ee88ee8eeee88888888888888888ff888ff888222222888222822888882282888888222888
888eee8e8ee8eeee8eee8eeeee8ee8777778778eee8e8ee8eee8eeee8eee8eeee88888e88888888888ff888ff888282282888222888888228882888888288888
888eee8e8ee8eeee8eee8eee888ee8777788778eee888ee8eee888ee8eee888ee8888eee8888888888ff888ff888222222888888222888228882888822288888
888eee8e8ee8eeee8eee8eee8eeee8777778778eeeee8ee8eeeee8ee8eee8e8ee88888e88888888888ff888ff888822228888228222888882282888222288888
888eee888ee8eee888ee8eee888ee8777888778eeeee8ee8eee888ee8eee888ee888888888888888888ff8ff8888828828888228222888888822888222888888
888eeeeeeee8eeeeeeee8eeeeeeee8777777778eeeeeeee8eeeeeeee8eeeeeeee888888888888888888888888888888888888888888888888888888888888888
1111111111bb1bbb1bbb11711ccc11111666111116611616166616111111161611111ccc1111161611111ccc1111166116161171111111111111111111111111
111111111b111b1b1b1b17111c1c1171161111111616161616161611111116161171111c111116161111111c1171161616161117111111111111111111111111
111111111bbb1bbb1bb117111ccc177716611111161616161666161111111161177711cc11111666177711cc1777161616661117111111111111111111111111
11111111111b1b111b1b1711111c1171161111111616166616161611117116161171111c117111161111111c1171161611161117111111111111111111111111
111111111bb11b111b1b1171111c11111666117116661161161616661711161611111ccc1711166611111ccc1111166616661171111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111bb1bbb1bbb117116661666116616661111161611111ccc1111161611111ccc11111661161611711111111111111111111111111111111111111111
111111111b111b1b1b1b171116111616161116111111161611111c11111116161111111c11711616161611171111111111111111111111111111111111111111
111111111bbb1bbb1bb1171116611666161116611111116117771ccc1111166617771ccc17771616166611171111111111111111111111111111111111111111
11111111111b1b111b1b17111611161616111611117116161111111c1171111611111c1111711616111611171111111111111111111111111111111111111111
111111111bb11b111b1b117116111616116616661711161611111ccc1711166611111ccc11111666166611711111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1e1111ee1eee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e111e111e111e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111ee11e111eee1ee1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e111e11111e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1eee1ee11eee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111bb1bbb1bbb11711ccc11111666111116611616166616111111161611111c111111161611111ccc1111166116161171111111111111111111111111
111111111b111b1b1b1b17111c1c11711611111116161616161616111111161611111c11111116161111111c1171161616161117111111111111111111111111
111111111bbb1bbb1bb117111ccc17771661111116161616166616111111116117771ccc11111666177711cc1777161616661117111111111111111111111111
11111111111b1b111b1b1711111c11711611111116161666161616111171161611111c1c117111161111111c1171161611161117111111111111111111111111
111111111bb11b111b1b1171111c11111666117116661161161616661711161611111ccc1711166611111ccc1111166616661171111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111bb1bbb1bbb117116661666116616661111161611111ccc1111161611111ccc11111661161611111cc111111cc111111ccc1ccc1c1c1ccc11711111
111111111b111b1b1b1b17111611161616111611111116161111111c111116161111111c117116161616111111c1111111c1111111c11c1c1c1c1c1111171111
111111111bbb1bbb1bb11711166116661611166111111161177711cc1111166617771ccc177716161666111111c1111111c1111111c11cc11c1c1cc111171111
11111111111b1b111b1b17111611161616111611117116161111111c1171111611111c11117116161116117111c1117111c1117111c11c1c1c1c1c1111171111
111111111bb11b111b1b117116111616116616661711161611111ccc1711166611111ccc11111666166617111ccc17111ccc171111c11c1c11cc1ccc11711111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1ee11ee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e111e1e1e1e1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111ee11e1e1e1e1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e111e1e1e1e1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1e1e1eee1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111116661661166616661111166616611611166611711666117111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616116116661111116116161611161117111611111711111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111116661616116116161111116116161611166117111661111711111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616116116161111116116161611161117111611111711111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116161616166616161666166616661666166611711666117111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111661166616661616111116661666116616661171166611111ccc117111111111111111111111111111111111111111111111111111111111111111111111
1111161616161616161611111616161616111611171116111111111c111711111111111111111111111111111111111111111111111111111111111111111111
111116161661166616161111166116661666166117111661111111cc111711111111111111111111111111111111111111111111111111111111111111111111
1111161616161616166611111616161611161611171116111171111c111711111111111111111111111111111111111111111111111111111111111111111111
11111666161616161666166616661616166116661171166617111ccc117111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111171111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111177111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111177711111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111177771111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111177111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111711111111111111111111111111111111111111111111111111111111111111111111111111111111111
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
1eee1e1e1ee111ee1eee1eee11ee1ee1111116661661166616661111166611661611161111711666117111111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616116116661111161616161611161117111611111711111111111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111116661616116116161111166116161611161117111661111711111111111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616116116161111161616161611161117111611111711111111111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116161616166616161666161616611666166611711666117111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111eee1eee1eee1e1e1eee1ee111111ccc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e1e1e1111e11e1e1e1e1e1e1111111c11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111ee11ee111e11e1e1ee11e1e111111cc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e1e1e1111e11e1e1e1e1e1e1111111c11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111e1e1eee11e111ee1e1e1e1e11111ccc11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1ee11ee111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1ee11e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1e111e1e1e1e11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1eee11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1eee1e1e1ee111ee1eee1eee11ee1ee1111116661661166616661111166616161611161116661666117116661171111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616116116661111161616161611161116111161171116111117111111111111111111111111111111111111
1ee11e1e1e1e1e1111e111e11e1e1e1e111116661616116116161111166116161611161116611161171116611117111111111111111111111111111111111111
1e111e1e1e1e1e1111e111e11e1e1e1e111116161616116116161111161616161611161116111161171116111117111111111111111111111111111111111111
1e1111ee1e1e11ee11e11eee1ee11e1e111116161616166616161666166611661666166616661161117116661171111111111111111111111111111111111111
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
82888222822882228888822282228882822882228222888888888888888888888888888888888888888882228222822282888882822282288222822288866688
82888828828282888888888282828828882888828882888888888888888888888888888888888888888888828882828282888828828288288282888288888888
82888828828282288888888282228828882882228822888888888888888888888888888888888888888888228822828282228828822288288222822288822288
82888828828282888888888288828828882882888882888888888888888888888888888888888888888888828882828282828828828288288882828888888888
82228222828282228888888288828288822282228222888888888888888888888888888888888888888882228222822282228288822282228882822288822288
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

__gff__
0001000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020202020000000002020202
