use[Game]
--select * from T_AUTN
--select * from T_GAME_INFO
--select * from T_GAME_SCORE
--select * from T_USER
--select * from T_USER_INFO
select 
ui.U_NAME,
gi.T_NAME,
v.maxrank
 from
(
select u.U_ID,
--gs.G_ID,
(select top 1 G_ID from T_GAME_SCORE ti where ti.G_RANK = max(gs.G_RANK)) as gid,
max(gs.G_RANK) as maxrank
from T_USER u
left join T_GAME_SCORE gs on gs.U_ID = u.U_ID
group by u.U_ID
) as v 
left join T_USER_INFO ui on ui.U_ID = v.U_ID
left join T_GAME_INFO gi on gi.G_ID = v.gid
--order by ui.REG_TIME desc
--left join T_GAME_SCORE gs on gs.U_ID = u.U_ID
--left join T_GAME_INFO gi on gi.G_ID = gs.G_ID
--left join T_USER_INFO ui on ui.U_ID = u.U_ID