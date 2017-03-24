-- Variables that are used on both client and server
SWEP.Gun = ("weapon_phobos_bolter") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "Warhammer 40k Weapons" --Category where you will find your weapons
SWEP.Author				= "Olaf"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Phobos Pattern Combi Bolter"		-- Weapon name (Shown on HUD)	
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
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.UseHands				= true
SWEP.ViewModelFOV			= 60
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= ""	-- Weapon view model
SWEP.WorldModel				= ""	-- Weapon world model
SWEP.Base 				= "snipgauss_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE!
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.Primary.Sound			= Sound("40k/b_fire5.wav")	-- script that calls the primary fire sound
SWEP.Primary.RPM				= 260		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 20		-- Size of a clip
SWEP.Primary.DefaultClip			= 300	-- Bullets you start with
SWEP.Primary.KickUp			= .20				-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= .1			-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal			= .1		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= true		-- Automatic/Semi Auto
SWEP.Primary.Ammo			= "AirboatGun"	-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
SWEP.Primary.Tracer 		= "AirboatGunHeavyTracer"
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Primary.Damage		= 50	--base damage per bullet
SWEP.Primary.Spread		= .03	--define from-the-hip accuracy 1 is terrible, .0001 is exact)

SWEP.Secondary.NumberofShots = 1 
SWEP.Secondary.Force = 10
SWEP.Secondary.Spread = 0.1
SWEP.Secondary.Sound = Sound("40k/plasma1.mp3")
SWEP.Secondary.DefaultClip = 50
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "Pistol"
SWEP.Secondary.Recoil = 1
SWEP.Secondary.Delay = 1
SWEP.Secondary.TakeAmmo = 1 
SWEP.Secondary.ClipSize = 5 
SWEP.Secondary.Damage = 60 


function SWEP:SecondaryAttack() 
	if ( !self:CanSecondaryAttack() ) then return end 
 
	local rnda = -self.Secondary.Recoil 
	local rndb = self.Secondary.Recoil * math.random(-1, 1) 
 
	self.Owner:ViewPunch( Angle( rnda,rndb,rnda ) ) //Makes the gun have recoil
        //Don't change self.Owner:ViewPunch() if you don't know what you are doing.
 
	local eyetrace = self.Owner:GetEyeTrace()
	self:EmitSound ( self.Secondary.Sound ) //Adds sound
	local fx 		= EffectData()
		fx:SetEntity(self.Weapon)
		fx:SetOrigin(self.Owner:GetShootPos())
		fx:SetNormal(self.Owner:GetAimVector())
		fx:SetAttachment(self.MuzzleAttachment)
		if GetConVar("M9KGasEffect") != nil then
			if GetConVar("M9KGasEffect"):GetBool() then 
				util.Effect("m9k_rg_muzzle_rifle",fx)
			end
		end
		self.Owner:SetAnimation( PLAYER_ATTACK1 )
		self.Owner:MuzzleFlash()
		self:SetNextPrimaryFire( CurTime() + self.Secondary.Delay ) 
		self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
		self:CheckWeaponsAndAmmo()
		self.RicochetCoin = (math.random(1,4))
		if self.BoltAction then self:BoltBack() end
	end
-- enter iron sight info and bone mod info below

