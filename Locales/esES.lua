local L = LibStub("AceLocale-3.0"):NewLocale("HealthAlarm", "esES", true, true)

if L then
L["CHAT/BrokenConfig"] = "Su configuración no está actualizado, ¡reiniciándola!"
L["CHAT/CombatLoadError"] = "No se pueden cargar opciones en combate."
L["CHAT/NoConfig"] = "No se pudo cargar su configuración, cargando los ajustes por defecto."
-- L["CHAT/StopBeeps"] = ""
-- L["CHAT/Testing"] = ""
L["DLG/Base Speed"] = "Velocidad Base"
L["DLG/Channel"] = "Canal"
-- L["DLG/\"Critical\" Beep"] = ""
L["DLG/\"Critical\" Health"] = "Salud \"Crítica\""
-- L["DLG/\"Dangerous\" Beep"] = ""
L["DLG/\"Dangerous\" Health"] = "Salud \"Peligro\""
L["DLG/Enable"] = "Habilitar"
L["DLG/Login Message"] = "Mensaje de inicio"
-- L["DLG/\"Low\" Beep"] = ""
L["DLG/\"Low\" Health"] = "Salud \"Baja\""
L["DLG/Main Config"] = "Configuración principal"
-- L["DLG/Misc Settings"] = ""
L["DLG/Multiplier"] = "Multiplicador"
-- L["DLG/Skip First Beep"] = ""
L["DLG/Sound Effect"] = "Efectos de sonido"
L["DLG/Speed Explanation"] = [=[Ajustando la velocidad pitido aquí, le permite configurar como de rápido o lento se reproduce el sonido del complemento .
La velocidad se divide por "multiplicador", cuando la salud es "Crítica".
Se utiliza la velocidad, sin tocar, cuando la salud esta en "Peligro".
La velocidad se multiplica por "multiplicador", cuando la salud es "Baja".]=]
L["DLG/Speed Settings"] = "Ajustes de velocidad"
-- L["DLG/Stop All"] = ""
-- L["DLG/Test Buttons"] = ""
L["DLG/Threshold Settings"] = "Ajustes de umbral"
L["DLG/Version"] = "Versión %s"
L["DLG/Volume"] = "Volumen"
L["DLGTT/Base Speed"] = "La velocidad base del pitido."
L["DLGTT/Beep File"] = "El efecto de sonido para jugar."
L["DLGTT/Channel"] = "El canal en el que se reproduce el audio."
L["DLGTT/\"Critical\" Health"] = "Según este valor su salud se considera \"Crítica\"l y baja."
L["DLGTT/\"Dangerous\" Health"] = "Según este valor su salud se considera \"Peligro\"l y baja."
L["DLGTT/Enable"] = "Activa / Desactiva el complemento."
L["DLGTT/Login Message"] = "Activa / Desactiva los mensajes de inicio."
L["DLGTT/\"Low\" Health"] = "Según este valor su salud se considera \"Bajaa\"."
L["DLGTT/Multiplier"] = "El multiplicador de la velocidad base."
-- L["DLGTT/Skip First Beep"] = ""
L["DLGTT/Sound Channel"] = "El canal de sonido para reproducir el sonido."
L["DLGTT/Sound Effect"] = "El sonido que se reproducirá."
L["DLGTT/Volume"] = [=[El "Volumen" del pitido.
 1 equivale a un volumen normal, los números más altos son elevan el volumen.]=]

end