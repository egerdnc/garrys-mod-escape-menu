bfUI.registerCategory( 
	{
		id = "general configuration",
		name = "GENERAL",
		image = Material( "bfui/cogwheel.png", "mips smooth" )
	}
)

bfUI.registerCategory( 
	{ 
		id = "appearance", 
		name = "APPEARANCE",
		image = Material( "bfui/avatar.png", "mips smooth" )
	}
)

-- Defines the key to use to open Battlefront UI
bfUI.registerUneditableConfig(
	{
		id = "menu_key",
		value = KEY_ESCAPE  --  Use a key from the KEY enumeration (https://wiki.garrysmod.com/page/Enums/KEY)
	}
)

 -- Disables material background image and uses main_color client configuration
bfUI.registerUneditableConfig( 
	{
		id = "background_material_disabled",
		value = false
	}
)

-- Material background path, make sure you FastDL/Workshop it. The default one doesn't require it as I provided content already. :)
bfUI.registerUneditableConfig( 
	{
		id = "background_material", 
		value = Material( "bfui/bfui_background.jpg" )
	} 
)

-- Forces element button titles to be in UPPERCASE or not
bfUI.registerUneditableConfig( 
	{
		id = "element_title_force_uppercase",
		value = true
	}
)

-- Enforces the ability to set clientside customization
bfUI.registerUneditableConfig( 
	{
		id = "can_edit_clientside_settings",
		value = true
	}
)

-- Clientside configurations. These are the things that the Client can modify in the OPTIONS menu.

-- Whether the avatar image is displayed at the top left.
bfUI.registerClientConfig(
	{
		id = "show_avatar", 
		value = true, 
		description = "Whether avatar should be displayed",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Display avatars" 
		} 
	}
)

-- The theme's primary colour, that will dictate the button colours also.
bfUI.registerClientConfig(
	{
		id = "main_color", 
		value = Color( 230, 230, 230 ), 
		description = "The theme's primary colour",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Theme primary color" 
		} 
	}
)

-- The theme's secondary color, for example when you hover over a button.
bfUI.registerClientConfig(
	{
		id = "secondary_color", 
		value = Color( 255, 200, 0 ), 
		description = "The theme's secondary colour",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Theme secondary color" 
		} 
	}
)

-- The theme's background gradient colour. It's displayed when the image is out of your view, or you have the background disabled.
bfUI.registerClientConfig(
	{
		id = "gradient_color", 
		value = Color( 25, 25, 25 ), 
		description = "The theme's gradient colour",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Theme gradient color" 
		} 
	}
)

-- The fade time with animations.
bfUI.registerClientConfig(
	{
		id = "fade_time", 
		value = 0.5, 
		description = "Fade time for animations within the menu",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Fade time (general)" 
		} 
	}
)

-- The fade time with animations, but only when you press a section/element.
bfUI.registerClientConfig(
	{
		id = "element_pressed_fade_time", 
		value = 0.5, 
		description = "Fade time for when you press an element button",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Fade time (section click)" 
		} 
	}
)

-- The primary font used within the module.
bfUI.registerClientConfig(
	{
		id = "font", 
		value = "Futura ICG", 
		description = "The primary font",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Primary font" 
		},

		-- Do not edit this
		callback = function()
			hook.Call( "loadFonts" )
		end
	}
)

-- The secondary font used within the module.
bfUI.registerClientConfig(
	{
		id = "font_secondary", 
		value = "Roboto Condensed", 
		description = "The secondary font",

		-- Extra information
		data = { 
			category = "appearance", 
			niceName = "Secondary font" 
		},

		-- Do not edit this
		callback = function()
			hook.Call( "loadFonts" )
		end
	}
)

--[[ 
	As the description states, Whether to ask to close the frame when you press the close button. Using true will mean yes, and false will make it so it disappears
	without a prompt. Please note that when you use the hotkey, there will never be a prompt.
]]
bfUI.registerClientConfig(
	{
		id = "ask_on_close", 
		value = true, 
		description = "Whether to ask to close the frame when you press the close button",

		-- Extra information
		data = { 
			category = "general configuration", 
			niceName = "Show prompt on quit" 
		} 
	}
)

-- This decides whether Battlefront UI will open when a player joins the server, for example like a Message of the Day.
-- bfUI.registerClientConfig(
-- 	{
-- 		id = "auto_open_on_join", 
-- 		value = false, 
-- 		description = "Whether Battlefront UI should auto-open on join",

-- 		-- Extra information
-- 		data = { 
-- 			category = "general configuration", 
-- 			niceName = "Open on initial join" 
-- 		} 
-- 	}
-- )

bfUI.registerElement( "Anasayfa", {
	greeting = "Immortal RP",
	blocks = {
		[ 1 ] = {
			text = "Immortal v3.0",
			sub = "Yeni güncelleme",
			image = Material( "bfui/block_2.png" )
		},
		[ 2 ] = {
			text = "",
			sub = "",
			image = Material( "bfui/block_3.png" )
		},
		[ 3 ] = {
			text = "Güncelleme Notları",
			sub = "Yeni güncelleme",
			image = Material( "bfui/block_4.png" )
		}
	},

	-- Currency is global, you only have to define it once.
	currency = {
		{
			image = Material( "bfui/money.png" ),
			-- image = Material( "bfui/creditcard.png" ),
			darkrp = true,
			--pointshop = true,
		},
		--[[
		{
			image = Material( "bfui/creditcard.png" ),
			pointshop = true,
		},
		]]
	}
})

bfUI.registerElement( "Forum", {
	showURL = "https://platinumservers.mistforums.com/"
})

bfUI.registerElement( "Yetkililer", {
	--customCheck = function( client, panel ) return client:IsAdmin() or client:IsSuperAdmin() end,

	headerMessage = "Bu liste aktif yetkilileri göstermektedir, herhangi bir sorun halinde /calladmin komutunu kullanabilirsiniz.",
	staff = {
		[ "Owner" ] = {
			name = "Owner",
			color = Color( 255, 255, 255 ),
		},
		[ "SUPER-ADMIN" ] = {
			name = "Super Admin",
			color = Color( 51, 125, 255 ),
		},
		[ "ADMIN" ] = {
			name = "Admin",
			color = Color( 235, 51, 51 ),
		},
		[ "VIP SUPER-ADMIN" ] = {
			name = "VIP Super Admin",
			color = Color( 255, 255, 255 ),
		},
		[ "VIP ADMIN" ] = {
			name = "VIP Admin",
			color = Color( 51, 125, 255 ),
		},
		[ "Community Manager" ] = {
			name = "Community Manager",
			color = Color( 235, 51, 51 ),
		},
		--[[
		[ "vip" ] = {
			name = "VIP",
			color = Color( 255, 200, 0 ),
		},
		]]
	}
})

--[[
	Servers element:
	You can register new servers by adding a new entry to the servers table, the design is like so:

	[ "Server Name" ] = {
		icon = Material( "my/path/to/icon.png" ),
		ip = "x.x.x.x", -- Server IP is important, it's used to connect to the server.
		desc = "Description of the server.",
		joinText = "JOIN THE SERVER", -- Replacement text for the join button.
	}
]]
bfUI.registerElement( "Discord", {
	showURL = "https://discord.gg/"
})

bfUI.registerElement( "Kurallar", {
	-- This dictates whether a website should load here.
	showURL = ""
})

	-- This shows a donation page URL which you can uncomment and set your own URL for.

bfUI.registerElement( "Donate", {
		-- This dictates whether a website should load here.
		showURL = "https://platinumservers.mistforums.com/donate"
})


bfUI.registerElement( "Ayarlar", {
	-- This dictates whether the options menu should show here.
	options = true
} )

