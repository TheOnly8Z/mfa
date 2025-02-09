
-- Fesiug, 2022

SWEP.Base					= "mfa_base_wep"
SWEP.Spawnable				= true

SWEP.Slot					= 1
SWEP.Category				= "MFA"	
SWEP.PrintName				= "COBRA D114"
SWEP.Trivia = {
	Category = "Sidearm",
	["Real Name"] = "Colt M1911",
}

SWEP.UseHands				= true
SWEP.ViewModel				= "models/mfa/weapons/m1911.mdl"
SWEP.WorldModel				= "models/mfa/weapons/m1911.mdl"
SWEP.ViewModelFOV			= 70

SWEP.Primary.ClipSize		= 8
SWEP.Primary.Ammo			= "pistol"
SWEP.Sound_Fire				= {
	{
		s = {
			")mfa/dk2/wep/tt33_fire_01.ogg",
			")mfa/dk2/wep/tt33_fire_02.ogg",
			")mfa/dk2/wep/tt33_fire_03.ogg",
		},
		sl = 90,
		v = 1,
		p = 95,
		pm = 105,
		c = CHAN_STATIC,
	},
	{
		s = {
			")mfa/fesiug/sweet/usp.ogg",
		},
		sl = 50,
		v = 0.75,
		p = 95,
		pm = 105,
		c = CHAN_STATIC,
	},
}
SWEP.Sound_Dry = { s = "mfa/wep/dry/pistol_high.ogg", sl = 50, v = 0.5, p = 100 }

SWEP.DamageNear				= 26
SWEP.DamageFar				= 15
SWEP.RangeNear				= 25
SWEP.RangeFar				= 50

--
-- Recoil
--
SWEP.RecoilUp							= 3.5 -- degrees punched
SWEP.RecoilSide							= 1.8 -- degrees punched, in either direction (-100% to 100%)
SWEP.RecoilDrift						= 0.5 -- how much will be smooth recoil
SWEP.RecoilDecay						= 35 -- how much recoil to remove per second
SWEP.RecoilADSMult						= ( 3 / 4 ) -- multiply shot recoil by this amount when ads'd

-- after the fact
SWEP.Recoil2Drift						= 0.6 -- how much to return to the original pos
SWEP.Recoil2Decay						= 16 -- how much recoil to remove per second


SWEP.Dispersion				= 0.5
SWEP.Dispersion_Move		= 4 -- at 200 hu/s
SWEP.Dispersion_Air			= 5
SWEP.Dispersion_Crouch		= ( 2 / 3 )
SWEP.Dispersion_Sights		= ( 1 / 3 )

SWEP.Dispersion_FireShoot	= 2
SWEP.Dispersion_FireDecay	= 10

SWEP.Movespeed							= 0.98
SWEP.Movespeed_Firing					= 0.88
SWEP.Movespeed_ADS						= 0.88

SWEP.Firemodes = {
	{
		Count = 1,
		Delay = ( 60 / 380 ),
	}
}

SWEP.ActivePose = {
	Pos = Vector(0.2, -1, 0.2),
	Ang = Angle(),
}

SWEP.IronsightPose = {
	Pos = Vector(-2.44, -3, 0.99),
	Ang = Angle(1.1, 0, 0),
}

SWEP.CustomizePose = {
	Pos = Vector(0.9, -2, -0.7),
	Ang = Angle(8, 9, 2),
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
	["idle_empty"] = {
		Source = "empty_idle",
	},
	["draw"] = {
		Source = "base_draw",
		Events = {
			{ t = 0, s = "mfa/zenith/ogg/draw.ogg" },
		},
		Time = 0.67,
		ReloadingTime = 0.3,
		StopSightTime = 0.3,
	},
	["holster"] = {
		Source = "base_holster",
		Events = {
			{ t = 0, s = "mfa/zenith/ogg/shoulder.ogg" },
		},
		Time = 0.4,
		HolsterTime = 0.15,
	},
	["fire"] = {
		Source = { "base_fire", "base_fire2", "base_fire3" },
		Events = {
			{ t = 0, shell = true }
		},
		Time = 1.5,
	},
	["fire_ads"] = {
		Source = { "iron_fire_1", "iron_fire_2", "iron_fire_3" },
		Events = {
			{ t = 0, shell = true }
		},
	},
	["fire_empty"] = {
		Source = "base_firelast",
		Events = {
			{ t = 0, shell = true }
		},
		Time = 1.5,
	},
	["fire_ads_empty"] = {
		Source = "iron_firelast",
		Events = {
			{ t = 0, shell = true }
		},
	},
	["reload"] = {
		Source = "base_reload",
		Events = {
			{ t = 0, s = "mfa/zenith/ogg/cloth_sharp_impact_soft_new.ogg" },
			{ t = 0.2, s = "mfa/wep/ogg/Reload_1P_MagpulPDR_Magout_Wave 0 0 0.ogg", v = 0.75 },
			{ t = 0.8, s = "mfa/zenith/ogg/rattle_weapon_3.ogg" },
			{ t = 1.4, s = "mfa/zenith/ogg/holster_replace.ogg" },
			{ t = 1.6, s = "mfa/zenith/ogg/pistol_rattle_4.ogg" },
			{ t = 1.7, s = "mfa/wep/ogg/Reload_1P_MagpulPDR_Magin_Wave 0 0 0.ogg", v = 0.75 },
			{ t = 2.1, s = "mfa/zenith/ogg/rattle.ogg" },
			{ t = 2.9, s = "mfa/zenith/ogg/rattle_weapon_2.ogg" },
		},
		Time = 3.2,
		LoadIn = 2.1,
		ReloadingTime = 3.0,
		StopSightTime = 2.5,
	},
	["reload_empty"] = {
		Source = "base_reloadempty",
		Events = {
			{ t = 0, s = "mfa/zenith/ogg/cloth_sharp_impact_soft_new.ogg" },
			{ t = 0.1, s = "mfa/wep/ogg/Reload_1P_MagpulPDR_Magout_Wave 0 0 0.ogg", v = 0.75 },
			{ t = 0.8, s = "mfa/zenith/ogg/rattle_weapon_3.ogg" },
			{ t = 1.0, s = "mfa/zenith/ogg/holster_replace.ogg" },
			{ t = 1.1, s = "mfa/zenith/ogg/pistol_rattle_4.ogg" },
			{ t = 1.2, s = "mfa/wep/ogg/Reload_1P_MagpulPDR_Magin_Wave 0 0 0.ogg", v = 0.75 },
			{ t = 1.9, s = "mfa/zenith/ogg/pistol_rattle_3.ogg" },
			{ t = 2.3, s = "mfa/wep/ogg/Reload_1P_AK5_BoltClose_Wave 1 1 0.ogg", v = 0.5 },
			{ t = 2.6, s = "mfa/zenith/ogg/rattle_weapon_1.ogg" },
			{ t = 2.9, s = "mfa/zenith/ogg/rattle.ogg" },
			{ t = 3.1, s = "mfa/zenith/ogg/rattle_weapon_2.ogg" },
		},
		Time = 3.4,
		LoadIn = 2.3,
		ReloadingTime = 3.1,
		StopSightTime = 2.7,
	}
}