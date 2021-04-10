

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

