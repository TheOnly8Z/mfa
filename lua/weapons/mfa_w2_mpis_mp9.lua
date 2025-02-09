
-- Fesiug, 2022

SWEP.Base					= "mfa_base_wep"
SWEP.Spawnable				= true

SWEP.Slot					= 3
SWEP.Category				= "MFA"	
SWEP.PrintName				= "Schmidt Security"
SWEP.Trivia = {
	Category = "Submachine Gun",
	["Real Name"] = "MP9",
}

SWEP.UseHands				= true
SWEP.ViewModel				= "models/mfa/weapons/mp9n.mdl"
SWEP.WorldModel				= "models/mfa/weapons/mp9n.mdl"
SWEP.ViewModelFOV			= 70

SWEP.Primary.ClipSize		= 24
SWEP.Primary.Ammo			= "pistol"
SWEP.Sound_Fire				= {
	{
		s = {
			")mfa/dk2/wep/pm63_fire_01.ogg",
			")mfa/dk2/wep/pm63_fire_02.ogg",
			")mfa/dk2/wep/pm63_fire_03.ogg",
		},
		sl = 90,
		v = 1,
		p = 95,
		pm = 105,
		c = CHAN_STATIC,
	},
	{
		s = {
			")mfa/fesiug/sweet/mp5.ogg",
		},
		sl = 50,
		v = 0.7,
		p = 95,
		pm = 105,
		c = CHAN_STATIC,
	},
}
SWEP.Sound_Dry = { s = "mfa/wep/dry/smg.ogg", sl = 50, v = 0.5, p = 100 }


SWEP.DamageNear				= 20
SWEP.DamageFar				= 10
SWEP.RangeNear				= 20
SWEP.RangeFar				= 40

--
-- Recoil
--
SWEP.RecoilUp							= 1.3 -- degrees punched
SWEP.RecoilSide							= 0.8 -- degrees punched, in either direction (-100% to 100%)
SWEP.RecoilDrift						= 0.5 -- how much will be smooth recoil
SWEP.RecoilDecay						= 25 -- how much recoil to remove per second
SWEP.RecoilADSMult						= ( 3 / 4 ) -- multiply shot recoil by this amount when ads'd

-- after the fact
SWEP.Recoil2Drift						= 0.5 -- how much to return to the original pos
SWEP.Recoil2Decay						= 20 -- how much recoil to remove per second


SWEP.Dispersion				= 1.1
SWEP.Dispersion_Move		= 2 -- at 200 hu/s
SWEP.Dispersion_Air			= 2
SWEP.Dispersion_Crouch		= ( 2 / 3 )
SWEP.Dispersion_Sights		= ( 1 / 3 )

SWEP.Dispersion_FireShoot	= 0.4
SWEP.Dispersion_FireDecay	= 3

SWEP.Movespeed							= 0.94
SWEP.Movespeed_Firing					= 0.84
SWEP.Movespeed_ADS						= 0.84

SWEP.Firemodes = {
	{
		Count = math.huge,
		Delay = ( 60 / 660 ),
	},
	{
		Count = 1,
		Delay = ( 60 / 1200 ),
	}
}

SWEP.ActivePose = {
	Pos = Vector(0.2, 0, 0.9),
	Ang = Angle(),
}

SWEP.IronsightPose = {
	Pos = Vector(-2.69, -2, 1.91),
	Ang = Angle(0.1, -0.2, 0),
}

SWEP.RunPose = {
	Pos = Vector(0, 0, 1),
	Ang = Angle(-12, 12, -12),
}

SWEP.CustomizePose = {
	Pos = Vector(0.9, -1, 0.1),
	Ang = Angle(8, 8, 0),
}

SWEP.MuzzleEffect						= "muzzleflash_3"
SWEP.QCA_Muzzle							= 1
SWEP.QCA_Case							= 3

SWEP.ShellModel							= "models/shells/shell_9mm.mdl"
SWEP.ShellScale							= 1

SWEP.Animations = {
	["idle"] = {
		Source = "base_idle",
	},
	["draw"] = {
		Source = "base_draw",
		Events = {
			{ t = 0, s = "mfa/zenith/ogg/raise.ogg" },
		},
		Time = 0.5,
		ReloadingTime = 0.35,
	},
	["holster"] = {
		Source = "base_holster",
		Events = {
			{ t = 0, s = "mfa/zenith/ogg/cloth_3.ogg" },
		},
		HolsterTime = 0.25,
	},
	["fire"] = {
		Source = "base_fire",
		Events = {
			{ t = 0, shell = true }
		},
	},
	["fire_ads"] = {
		Source = { "iron_fire", "iron_fire_a", "iron_fire_b", "iron_fire_c", "iron_fire_d", "iron_fire_e", "iron_fire_f" },
		Events = {
			{ t = 0, shell = true }
		},
	},
	["reload"] = {
		Source = "base_reload",
		Events = {
			{ t = 0, s = "mfa/wep/ogg/Reload_1P_QBB95_Grab_Wave 0 0 0.ogg" },
			{ t = 0.1, s = "mfa/wep/ogg/Reload_1P_RFB_Magout_Wave 0 0 0.ogg" },
			{ t = 0.6, s = "mfa/zenith/ogg/cloth_soft_3.ogg", v = 0.2 },
			{ t = 1.3, s = "mfa/wep/ogg/Reload_1P_RFB_Magin_Wave 0 0 0.ogg" },
			{ t = 1.8, s = "mfa/zenith/ogg/rattle.ogg" },
		},
		Time = 3.0,
		LoadIn = 2.0,
		StopSightTime = 2.0,
	},
	["reload_empty"] = {
		Source = "base_reloadempty",
		Events = {
			{ t = 0, s = "mfa/wep/ogg/Reload_1P_QBB95_Grab_Wave 0 0 0.ogg" },
			{ t = 0.1, s = "mfa/wep/ogg/Reload_1P_RFB_Magout_Wave 0 0 0.ogg" },
			{ t = 0.6, s = "mfa/zenith/ogg/cloth_soft_3.ogg", v = 0.2 },
			{ t = 1.3, s = "mfa/wep/ogg/Reload_1P_RFB_Magin_Wave 0 0 0.ogg" },
			{ t = 1.85, s = "mfa/wep/ogg/Reload_1P_RFB_Bolt_Wave 0 0 0.ogg" },
			{ t = 2.2, s = "mfa/zenith/ogg/rattle.ogg" },
		},
		Time = 3.5,
		LoadIn = 2.6,
		StopSightTime = 2.8,
	}
}