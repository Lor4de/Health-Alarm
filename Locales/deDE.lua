local L = LibStub("AceLocale-3.0"):NewLocale("HealthAlarm", "deDE")

if L then
L["CHAT/BrokenConfig"] = "Deine Konfiguration ist veraltet, sie wird zurückgesetzt!"
L["CHAT/CombatLoadError"] = "Die Optionen können im Kampf nicht geladen werden."
L["CHAT/NoConfig"] = "Deine Konfiguration konnte nicht geladen werden, die Standardeinstellungen werden geladen."
L["CHAT/StopBeeps"] = "Alle Pieptöne werden gestoppt."
L["CHAT/Testing"] = "Teste %s."
L["DLG/Base Speed"] = "Grundgeschwindigkeit"
L["DLG/Channel"] = "Kanal"
L["DLG/\"Critical\" Beep"] = "Piepston \"Kritisch\""
L["DLG/\"Critical\" Health"] = "\"Kritische\" Gesundheit"
L["DLG/\"Dangerous\" Beep"] = "Piepston \"Gefährlich\""
L["DLG/\"Dangerous\" Health"] = "\"Gefährliche\" Gesundheit"
L["DLG/Enable"] = "Aktivieren"
L["DLG/Login Message"] = "Einloggnachricht"
L["DLG/\"Low\" Beep"] = "Piepston \"Niedrig\""
L["DLG/\"Low\" Health"] = "\"Niedrige\" Gesundheit"
L["DLG/Main Config"] = "Hauptkonfiguration"
L["DLG/Misc Settings"] = "Versch. Einstellungen"
L["DLG/Multiplier"] = "Multiplikator"
L["DLG/Skip First Beep"] = "Ersten Piepston überspringen"
L["DLG/Sound Effect"] = "Soundeffekt"
L["DLG/Speed Explanation"] = [=[Hier kannst du die Piepsgeschwindigkeit festlegen, dadurch kannst du einstellen, wie schnell oder langsam der Ton des Addons abgespielt wird.
Die Geschwindigkeit wird durch den Multiplikator dividiert, wenn die Gesundheit "kritisch" ist.
Die Geschwindigkeit wird unverändert benutzt, wenn die Gesundheit "gefährlich" ist.
Die Geschwindigkeit wird mit dem Multiplikator multipliziert, wenn die Gesundheit "niedrig" ist]=]
L["DLG/Speed Settings"] = "Geschwindigkeitseinstellungen"
L["DLG/Stop All"] = "Alle stoppen"
L["DLG/Test Buttons"] = "Testschaltflächen"
L["DLG/Threshold Settings"] = "Schwellenwerteinstellungen"
L["DLG/Version"] = "Version %s"
L["DLG/Volume"] = "Lautstärke"
L["DLG/OnlyOneBeep"] = "Nur ersten Piepston abspielen"
L["DLGTT/OnlyOneBeep"] = "Spiele nur den ersten Piepston ab, bevor die Gesundheit den Wert von Niedrig erneut überschreitet"
L["DLGTT/Base Speed"] = "Die Grundgeschwindigkeit des Piepstons."
L["DLGTT/Beep File"] = "Der Soundeffekt, der abgespielt werden soll."
L["DLGTT/Channel"] = "Der Kanal, auf dem der Ton abgespielt wird."
L["DLGTT/\"Critical\" Health"] = "Wenn deine Gesundheit unter diesem Wert ist, wird sie als 'Kritisch' niedrig betrachtet."
L["DLGTT/\"Dangerous\" Health"] = "Wenn deine Gesundheit unter diesem Wert ist, wird sie als 'Gefährlich' niedrig betrachtet."
L["DLGTT/Enable"] = "Aktiviert/Deaktiviert das Addon."
L["DLGTT/Login Message"] = "Aktiviert/Deaktiviert die Einloggnachrichten."
L["DLGTT/\"Low\" Health"] = "Wenn deine Gesundheit unter diesem Wert ist, wird sie als 'Niedrig' betrachtet."
L["DLGTT/Multiplier"] = "Der Multiplikator für die Grundgeschwindigkeit."
L["DLGTT/Skip First Beep"] = [=[Aktiviert: Das Addon wird den ersten Piepton eines Zyklus überspringen.
Dies ist eine Behelfslösung gegen Gesundheitsaktualisierungen, die durch Gebietswechsel verursacht werden und dadurch den Alarm auslösen.
]=]
L["DLGTT/Sound Channel"] = "Der Soundkanal, auf dem der Sound abgespielt werden soll."
L["DLGTT/Sound Effect"] = "Der Sound, der abgespielt werden wird."
L["DLGTT/Volume"] = [=[Die Lautstärke des Pieptons.
1 ist die normale Lautstärke, höhere Zahlen sind lauter.]=]

end
