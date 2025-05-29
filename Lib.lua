HealthAlarm = LibStub("AceAddon-3.0"):GetAddon("HealthAlarm")

function HealthAlarm:GetAddonVersion()
    local Version = C_AddOns.GetAddOnMetadata("HealthAlarm", "Version")

    if Version ~= nil then
        return Version
    else
        return "0.0"
    end
end

function HealthAlarm:Beep()
	if not self.Runtime.LastBeepTime or debugprofilestop() >= self.Runtime.LastBeepTime + self.Runtime.BeepSpeed then
		self.Runtime.LastBeepTime = debugprofilestop()

		for i = 1, self.db.profile.Settings.General.BeepVolume do
            if self.Runtime.FirstBeep == true and self.db.profile.Settings.General.SkipFirstBeep then 
                if self.db.profile.Settings.General.OnlyOneBeep == true and self.Runtime.OneBeep == false then
                    PlaySoundFile(assert(self.SharedMedia:Fetch("sound", self.db.profile.Settings.General.BeepFile)), self.db.profile.Settings.General.SoundChannel);
                    self.Runtime.OneBeep = true
                elseif self.db.profile.Settings.General.OnlyOneBeep == false then
                    PlaySoundFile(assert(self.SharedMedia:Fetch("sound", self.db.profile.Settings.General.BeepFile)), self.db.profile.Settings.General.SoundChannel);
                end
            else
                self.Runtime.FirstBeep = true 
            end
		end
	end
end

function HealthAlarm:CheckHealth()

    if UnitIsDeadOrGhost("player") == false then
        
        local HealthPercent = UnitHealth("player") / UnitHealthMax("player")

        if HealthPercent > self.db.profile.Settings.General.ThresholdHPLow then
            self.Runtime.OneBeep = false
        end

        local BeepSpeed = self.db.profile.Settings.General.BeepSpeedBase
        local Multiplier = self.db.profile.Settings.General.BeepSpeedMultiplier

        local HealthCritical = self.db.profile.Settings.General.ThresholdHPCritical
        local HealthWarning = self.db.profile.Settings.General.ThresholdHPWarning
        local HealthLow = self.db.profile.Settings.General.ThresholdHPLow

		if HealthPercent <= HealthCritical then
			self:SetBeepSpeed(BeepSpeed / Multiplier)
		elseif HealthPercent <= HealthWarning and HealthPercent > HealthCritical then
			self:SetBeepSpeed(BeepSpeed)
		elseif HealthPercent <= HealthLow and HealthPercent > HealthWarning then
			self:SetBeepSpeed(BeepSpeed * Multiplier)
		elseif HealthPercent > HealthLow then
			self:SetBeepSpeed(0)
		end

	end
end

function HealthAlarm:SetBeepSpeed(Speed)

    if Speed ~= self.Runtime.BeepSpeed then 
        
        if not self.Runtime.BeepSpeed or self.Runtime.BeepSpeed > 0 then
            self.Runtime.Ticker:Cancel()
        end
    
        if Speed == 0 then
            self.Runtime.Ticker:Cancel()
            self.Runtime.FirstBeep = false
        else
            self.Runtime.Ticker = C_Timer.NewTicker(Speed, function()
                self:Beep() 
            end)

            self:Beep()
        end
    
        self.Runtime.BeepSpeed = Speed

    end
end