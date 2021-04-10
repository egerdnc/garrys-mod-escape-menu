/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
http://store.steampowered.com/curator/32364216

Subscribe to the channel:↓
www.youtube.com/c/Famouse

More leaks in the discord:↓ 
discord.gg/rFdQwzm
------------------------------------------------------------------------*/
--[[
    Battlefront UI
    Created by http://steamcommunity.com/id/Devul/
    Do not redistribute this software without permission from authors

    Developer information: 76561198146682727 : 4601 : 16520
]]--

hook.Add('PreRender', 'esc.PreRender', function()
	if input.IsKeyDown(KEY_ESCAPE) and gui.IsGameUIVisible() then
		if ValidPanel(sydres) then
			gui.HideGameUI()
			bfUI.toggleMenu()
		else
			gui.HideGameUI()
			bfUI.toggleMenu()
		end
	end
end)

hook.Add( "PlayerButtonUp", "bfUI_keybinds", function( player, buttonId )
    gui.HideGameUI()
	--if not IsFirstTimePredicted() then return end
	if player ~= LocalPlayer() then return end
	if gui.IsGameUIVisible() then gui.HideGameUI() return end
	if player:IsTyping() then return end

    local chosenKey = bfUI.getUnEditableData( "menu_key", KEY_F6 )
    if buttonId ~= chosenKey then return end
    print("kek")
    bfUI.toggleMenu()
end )

concommand.Add( "ui_toggle", bfUI.toggleMenu )

-- if bfUI.getClientData( "auto_open_on_join", true ) then
--     hook.Add( "InitPostEntity", "bfUI", bfUI.toggleMenu )
-- end

