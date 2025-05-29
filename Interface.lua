HealthAlarm = LibStub("AceAddon-3.0"):GetAddon("HealthAlarm")
local L = LibStub("AceLocale-3.0"):GetLocale("HealthAlarm")

function HealthAlarm:ToggleAddonOptions()
	if InCombatLockdown() == false then
	    InterfaceOptionsFrame_OpenToCategory("Health Alarm")
    else
        self:PrintError(L["CHAT/CombatLoadError"])
    end
end

function HealthAlarm:CreateInterfaceOptions()

	self.Options = {
		type = "group",
		name = "Health Alarm",
		args = {
			VersionHeader = {
				name = format(L["DLG/Version"], self:GetAddonVersion()),
				type = "header",
				order = 0
			},
			Enabled = {
				name = L["DLG/Enable"],
				desc = L["DLGTT/Enable"],
				type = "toggle",
				order = 10,

				get = function (info) 
					return self.db.profile.Settings.General.Enabled 
				end,

				set = function(info, value)
					if value == false then
						self:Disable()
					else
						self:Enable()
					end
					self.db.profile.Settings.General.Enabled = value
				end
			},
			Settings = {
				name = L["DLG/Main Config"],
				type = "group",
				order = 30,
				inline = true,
				args = {
					Thresholds = {
						name = L["DLG/Threshold Settings"],
						desc = "The settings controlling when the addon will make noise",
						type = "group",
						inline = true,
						order = 20,
						args = {
							ThresholdHPCritical = {
								name = L["DLG/\"Critical\" Health"],
								desc = L["DLGTT/\"Critical\" Health"],
								type = "range",
								min = 0.01,
								max = self.db.profile.Settings.General.ThresholdHPWarning - 0.01,
								step = 0.01,
								isPercent = true,
								order = 0,

								get = function(info)
									return self.db.profile.Settings.General.ThresholdHPCritical
								end,

								set = function(info, value)
									self.Options.args.Settings.args.Thresholds.args.ThresholdHPWarning.min = value + 0.01
									self.db.profile.Settings.General.ThresholdHPCritical = value
								end
							},
							ThresholdHPWarning  = {
								name = L["DLG/\"Dangerous\" Health"],
								desc = L["DLGTT/\"Dangerous\" Health"],
								type = "range",
								min = self.db.profile.Settings.General.ThresholdHPCritical + 0.01,
								max = self.db.profile.Settings.General.ThresholdHPLow - 0.01,
								step = 0.01,
								isPercent = true,
								order = 10,

								get = function(info)
									return self.db.profile.Settings.General.ThresholdHPWarning
								end,

								set = function(info, value)
									self.Options.args.Settings.args.Thresholds.args.ThresholdHPCritical.max = value - 0.01
									self.Options.args.Settings.args.Thresholds.args.ThresholdHPLow.min = value + 0.01
									self.db.profile.Settings.General.ThresholdHPWarning = value	
								end
							},
							ThresholdHPLow = {
								name = L["DLG/\"Low\" Health"],
								desc = L["DLGTT/\"Low\" Health"],
								type = "range",
								min = self.db.profile.Settings.General.ThresholdHPWarning + 0.01,
								max = 0.8,
								step = 0.01,
								isPercent = true,
								order = 20,

								get = function(info)
									return self.db.profile.Settings.General.ThresholdHPLow
								end,

								set = function(info, value)
									self.Options.args.Settings.args.Thresholds.args.ThresholdHPWarning.max = value - 0.01
									self.db.profile.Settings.General.ThresholdHPLow = value
								end
							}
						}
					},
					Speed = {
						name = L["DLG/Speed Settings"],
						desc = "How often the addon will make noise",
						type = "group",
						inline = true,
						order = 30,
						args = {
							ExplanationText = {
								type = "description",
								name = L["DLG/Speed Explanation"],
								width = "full",
								order = 0
							},
							Base = {
								name = L["DLG/Base Speed"],
								desc = L["DLGTT/Base Speed"],
								type = "range",
								min = 0.1,
								max = math.huge,
								softMax = 4,
								bigStep = 0.1,
								order = 1,

								get = function(info)
									return self.db.profile.Settings.General.BeepSpeedBase
								end,

								set = function(info, value)
									self.db.profile.Settings.General.BeepSpeedBase = value
								end
							},
							Multiplier = {
								name = L["DLG/Multiplier"],
								desc = L["DLGTT/Multiplier"],
								type = "range",
								min = 0.1,
								max = math.huge,
								softMin = 1,
								softMax = 4,
								bigStep = 0.5,
								order = 2,

								get = function(info)
									return self.db.profile.Settings.General.BeepSpeedMultiplier
								end,

								set = function(info, value)
									self.db.profile.Settings.General.BeepSpeedMultiplier = value
								end
							}
						}
					},
					Testing = {
						name = L["DLG/Test Buttons"],
						type = "group",
						inline = true,
						order = 40,
						args = {
							SlowBeep = {
								name = L["DLG/\"Low\" Beep"],
								type = "execute",
								order = 0,
								func = function()
									self:Print(format(L["CHAT/Testing"], L["DLG/\"Low\" Health"]))
									self:SetBeepSpeed(self.db.profile.Settings.General.BeepSpeedBase * self.db.profile.Settings.General.BeepSpeedMultiplier)
								end
							},
							MedBeep = {
								name = L["DLG/\"Dangerous\" Beep"],
								type = "execute",
								order = 10,
								func = function()
									self:Print(format(L["CHAT/Testing"], L["DLG/\"Dangerous\" Health"]))
									self:SetBeepSpeed(self.db.profile.Settings.General.BeepSpeedBase)
								end
							},
							FastBeep = {
								name = L["DLG/\"Critical\" Beep"],
								type = "execute",
								order = 20,
								func = function()
									self:Print(format(L["CHAT/Testing"], L["DLG/\"Critical\" Health"]))
									self:SetBeepSpeed(self.db.profile.Settings.General.BeepSpeedBase / self.db.profile.Settings.General.BeepSpeedMultiplier)
								end
							},
							StopBeep = {
								name = L["DLG/Stop All"],
								type = "execute",
								order = 30,
								width = "full",
								func = function()
									self:Print(L["CHAT/StopBeeps"])
									self:SetBeepSpeed(0)
								end
							}
						}
					},
					Misc = {
						name = L["DLG/Misc Settings"],
						type = "group",
						order = 50,
						inline = true,
						args = {
							SkipFirstBeep = {
								name = L["DLG/Skip First Beep"],
								desc = L["DLGTT/Skip First Beep"],
								type = "toggle",

								get = function(info)
									return self.db.profile.Settings.General.SkipFirstBeep
								end,

								set = function(info, value)
									self.db.profile.Settings.General.SkipFirstBeep = value
								end
							},

							OnlyOneBeep = {
								name = L["DLG/OnlyOneBeep"],
								desc = L["DLGTT/OnlyOneBeep"],
								type = "toggle",

								get = function(info)
									return self.db.profile.Settings.General.OnlyOneBeep
								end,

								set = function(info, value)
									self.db.profile.Settings.General.OnlyOneBeep = value
								end
							}
						}
					},
					BeepFile = {
						type = "select",
						dialogControl = "LSM30_Sound",
						name = L["DLG/Sound Effect"],
						desc = L["DLGTT/Sound Effect"],
						values = HealthAlarm.SharedMedia:HashTable("sound"),
						order = 0,

						get = function(info)
							return self.db.profile.Settings.General.BeepFile
						end,

						set = function(info, value)
							self.db.profile.Settings.General.BeepFile = value
						end
					},
					BeepVolume = {
						name = L["DLG/Volume"],
						desc = L["DLGTT/Volume"],
						type = "range",
						min = 1,
						max = 5,
						step = 1,
						order = 10,

						get = function(info)
							return self.db.profile.Settings.General.BeepVolume
						end,

						set = function(info, value)
							self.db.profile.Settings.General.BeepVolume = value
						end
					},
					SoundChannel = {
						name = L["DLG/Channel"],
						desc = L["DLGTT/Channel"],
						type = "select",
						style = "dropdown",
						order = 9,
						values = {
							["Master"] = "Master",
							["SFX"] = "Sound Effects",
							["Music"] = "Music",
							["Ambience"] = "Ambience",
							["Dialog"] = "Dialog"
						},

						get = function(info)
							return self.db.profile.Settings.General.SoundChannel
						end,

						set = function(info, value)
							self.db.profile.Settings.General.SoundChannel = value
						end
					}
				}
			}
		}
	}

	HealthAlarm.AceConfig:RegisterOptionsTable("HealthAlarm", self.Options)
	HealthAlarm.AceConfigDialog:AddToBlizOptions("HealthAlarm", "Health Alarm")
end
