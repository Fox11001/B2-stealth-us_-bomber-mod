self_ID = "B2_Spirit"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("B2_Spirit"),
developerName = _("Edited by fercho1-1"),

fileMenuName = _("B2_Spirit"),
update_id        = "B2_Spirit",
version		 = "2.7",
state		 = "installed",
info		 = _("Edited by fercho1-1. Version 2.7 Air to Ground. Northrop Grumman B-2 Spirit."),

Skins	=
	{
		{
		    name	= _("B2_Spirit"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("B2_Spirit"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("B2_Spirit"),
			type		= "B2_Spirit",
		},
	},	
		
InputProfiles =
	{
		["B2_Spirit"] = current_mod_path .. '/Input/B2_Spirit',
	},
	
})
----------------------------------------------------------------------------------------
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_model_path    (current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_texture_path  (current_mod_path.."/Textures/f-15")
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua") --View Settings.
make_view_settings('B2_Spirit', ViewSettings, SnapViews)
make_flyable('B2_Spirit',current_mod_path..'/Cockpit/Scripts/',{nil, old =17}, current_mod_path..'/comm.lua') --SFM
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/B2_Spirit.lua')
-------------------------------------------------------------------------------------
plugin_done()
