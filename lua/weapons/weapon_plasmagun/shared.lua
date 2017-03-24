-- Variables that are used on both client and server
SWEP.Gun = ("weapon_plasmagun") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "Warhammer 40k Weapons" --Category where you will find your weapons
SWEP.Author				= "Olaf"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Ryza Pattern Plasma Gun"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 4			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- Set false if you want no crosshair from hip
SWEP.Weight				= 100			-- Rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.XHair					= false		-- Used for returning crosshair after scope. Must be the same as DrawCrosshair
SWEP.BoltAction				= false		-- Is this a bolt action rifle?
SWEP.HoldType 				= "shotgun"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.UseHands				= true
SWEP.ViewModelFOV			= 60
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/olaf/weapons/v_plasmagun.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/olaf/weapons/plasmagun.mdl"	-- Weapon world model
SWEP.Base 				= "snipgauss_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE!
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("40k/plasma1.mp3")	-- script that calls the primary fire sound
SWEP.Primary.RPM				= 180		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 10		-- Size of a clip
SWEP.Primary.DefaultClip			= 100	-- Bullets you start with
SWEP.Primary.KickUp			= .20				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "ar2"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Tracer 		= "effect_t_laser_blueplasma"
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Primary.Damage		= 50	--base damage per bullet
SWEP.Primary.Spread		= .01	--define from-the-hip accuracy 1 is terrible, .0001 is exact)


-- enter iron sight info and bone mod info below

