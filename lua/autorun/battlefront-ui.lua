/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
store.steampowered.com/curator/32364216

Subscribe to the channel:↓
https://www.youtube.com/c/Famouse

More leaks in the discord:↓ 
discord.gg/rFdQwzm
------------------------------------------------------------------------*/
--[[
  Battlefront UI
  Created by http://steamcommunity.com/id/Devul/
  Do not redistribute this software without permission from authors

  Developer information: 76561198146682727 : 4601 : 16520
]]--

bfUI = bfUI or {}

local function findInFolder( currentFolder )
	currentFolder = currentFolder or rootFolder

	local files, folders = file.Find( currentFolder .. "*", "LUA" )

	for _, File in pairs( files ) do
		if SERVER and File:find( "sv_" ) then
			include( currentFolder .. File )
		elseif File:find( "cl_" ) then
			if SERVER then AddCSLuaFile( currentFolder .. File )
			else include( currentFolder .. File ) end
		elseif File:find( "sh_" ) then
			if SERVER then AddCSLuaFile( currentFolder .. File ) end
			include( currentFolder .. File )
		end
	end

	for _, folder in pairs( folders ) do
		findInFolder( currentFolder .. folder .. "/" )
	end
end

findInFolder( "battlefront-ui/" )

if SERVER then
	resource.AddWorkshop( "1165844047" )
end

