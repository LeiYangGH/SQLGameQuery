use[Game]
--select * from T_AUTN
--select * from T_GAME_INFO
--select * from T_GAME_SCORE
--select * from T_USER
--select * from T_USER_INFO
select * from
(
	select 
	u.U_ID,
	ui.U_NAME,
	gi.T_NAME,
	gs.G_SCORE
	from T_USER u
	left join T_USER_INFO ui on ui.U_ID = u.U_ID
	left join T_GAME_SCORE gs on gs.U_ID = u.U_ID
	left join T_GAME_INFO gi on gi.G_ID = gs.G_ID
) as v
where v.T_NAME is not null
order by v.U_ID asc, v.G_SCORE desc

select 
ui.U_NAME,
gi.T_NAME,
v.maxrank as G_RANK
 from
(
	select u.U_ID,
	(select top 1 G_ID from T_GAME_SCORE ti where ti.G_RANK = max(gs.G_RANK)) as gid,
	(select top 1 REG_TIME from T_USER_INFO ui where ui.U_ID = u.U_ID) as regt,
	max(gs.G_RANK) as maxrank
	from T_USER u
	left join T_GAME_SCORE gs on gs.U_ID = u.U_ID
	group by u.U_ID 
) as v 
left join T_USER_INFO ui on ui.U_ID = v.U_ID
left join T_GAME_INFO gi on gi.G_ID = v.gid
order by v.regt desc
