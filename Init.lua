HealthAlarm = LibStub("AceAddon-3.0"):NewAddon("HealthAlarm", "AceConsole-3.0", "AceEvent-3.0")
HealthAlarm.SharedMedia = LibStub("LibSharedMedia-3.0")
HealthAlarm.AceConfig = LibStub("AceConfig-3.0")
HealthAlarm.AceConfigDialog = LibStub("AceConfigDialog-3.0")

function HealthAlarm:OnInitialize()

	SLASH_HEALTHALARM1 = "/hal"
	SLASH_HEALTHALARM2 = "/healthalarm"

	SlashCmdList["HEALTHALARM"] = function(...)
		self:ToggleAddonOptions()
	end

	local Defaults = {
        profile = {
            Settings = {
                General = {
					Enabled					= true,
					ThresholdHPCritical		= 0.10,
					ThresholdHPWarning		= 0.25,
					ThresholdHPLow			= 0.40,
					BeepSpeedBase			= 1.0,
					BeepSpeedMultiplier		= 2.0,
					BeepFile				= "LoZ: Link to the Past Beep",	
					BeepVolume				= 3,
					SoundChannel			= "SFX",
					SkipFirstBeep   		= true,
					OnlyOneBeep				= false,
                },
            },
        },
	}
	
	self.Runtime = {
		BeepSpeed 		= 0,
		FirstBeep 		= false,
		OneBeep 		= false,
		LastBeepTime 	= 0,
		Ticker 			= nil
	}

	if self.SharedMedia ~= nil then
		self.SharedMedia:Register("sound", "LoZ: Link to the Past Beep", [[Interface\AddOns\HealthAlarm\Media\LTTP_LowHealth.ogg]])
		self.SharedMedia:Register("sound", "Voice: Low health", [[Interface\AddOns\HealthAlarm\Media\voice_low_health.ogg]])
	end

	self.db = LibStub("AceDB-3.0"):New("HealthAlarmDB", Defaults, "Default")

	if self.db ~= nil then
		self:CreateInterfaceOptions()
	end
end

function HealthAlarm:OnEnable()
	self:RegisterEvent("UNIT_HEALTH")
	self:RegisterEvent("PLAYER_DEAD")
	self:SetBeepSpeed(0)
end

function HealthAlarm:OnDisable()
  self:UnregisterEvent("UNIT_HEALTH")
  self:UnregisterEvent("PLAYER_DEAD")
  self:SetBeepSpeed(0)
end

function HealthAlarm:UNIT_HEALTH(Event, UnitName)
	if UnitName == "player" then
		self:CheckHealth()
	end
end

function HealthAlarm:PLAYER_DEAD(Event, ...)
	self:SetBeepSpeed(0)
end