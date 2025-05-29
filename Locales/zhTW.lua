local L = LibStub("AceLocale-3.0"):NewLocale("HealthAlarm", "zhTW", true, true)

if L then
L["CHAT/BrokenConfig"] = "您的配置已經過期，請重設！"
L["CHAT/CombatLoadError"] = "無法在戰鬥中載入選項。"
L["CHAT/NoConfig"] = "無法載入您的配置，載入預設配置。"
L["CHAT/StopBeeps"] = "停止所有聲響。"
L["CHAT/Testing"] = "測試 %s。"
L["DLG/Base Speed"] = "基礎速度"
L["DLG/Channel"] = "頻道"
L["DLG/\"Critical\" Beep"] = "\"致命\"聲響"
L["DLG/\"Critical\" Health"] = "\"致命\"血量"
L["DLG/\"Dangerous\" Beep"] = "\"危險\"聲響"
L["DLG/\"Dangerous\" Health"] = "\"危險\"血量"
L["DLG/Enable"] = "啟用"
L["DLG/Login Message"] = "登入訊息"
L["DLG/\"Low\" Beep"] = "\"低\"聲響"
L["DLG/\"Low\" Health"] = "\"低\"血量"
L["DLG/Main Config"] = "主要配置"
L["DLG/Misc Settings"] = "雜項設置"
L["DLG/Multiplier"] = "乘數"
L["DLG/Skip First Beep"] = "略過第一次聲響"
L["DLG/Sound Effect"] = "音效"
L["DLG/Speed Explanation"] = [=[在這設置嗶聲的速度，允許您設置插件撥放音效的快慢。
當血量是"致命"，速度是基於"乘數"加快。
當血量是"危險"，速度是恆常的，原封不動。
當血量是"低"，速度是基於"乘數"變慢。]=]
L["DLG/Speed Settings"] = "速度設定"
L["DLG/Stop All"] = "全部停止"
L["DLG/Test Buttons"] = "測試按鈕"
L["DLG/Threshold Settings"] = "閥值設定"
L["DLG/Version"] = "版本 %s"
L["DLG/Volume"] = "音量"
L["DLGTT/Base Speed"] = "嗶聲的基礎速度。"
L["DLGTT/Beep File"] = "要播放的音效。"
L["DLGTT/Channel"] = "聲音撥放的頻道。"
L["DLGTT/\"Critical\" Health"] = "低於此值，您的血量被認為是\"致命\"的低。"
L["DLGTT/\"Dangerous\" Health"] = "低於此值，您的血量被認為是\"危險\"的低。"
L["DLGTT/Enable"] = "啟用/停用 此插件。"
L["DLGTT/Login Message"] = "啟用/停用 登入訊息"
L["DLGTT/\"Low\" Health"] = "低於此值，您的血量被認為是\"低\""
L["DLGTT/Multiplier"] = "基礎速度的乘數。"
L["DLGTT/Skip First Beep"] = [=[當啟用後，這會導致此插件略過循環中的第一次聲響。
這是一種解決切換工作區域後血量更新觸發警報的設置。]=]
L["DLGTT/Sound Channel"] = "要撥放音效的頻道。"
L["DLGTT/Sound Effect"] = "要播放的聲音。"
L["DLGTT/Volume"] = [=[嗶聲的"音量"。
1是播放為一般音量，較高的數字會更響。]=]

end