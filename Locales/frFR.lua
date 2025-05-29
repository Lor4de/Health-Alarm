local L = LibStub("AceLocale-3.0"):NewLocale("HealthAlarm", "frFR", true, true)

if L then
L["CHAT/BrokenConfig"] = "Votre config. n'est plus valide, ré-initisalisez-la." -- Needs review
L["CHAT/CombatLoadError"] = "Ne peut charger les options en plein combat." -- Needs review
L["CHAT/NoConfig"] = "Impossible de charger votre config, chargement des paramètres par défaut." -- Needs review
L["CHAT/StopBeeps"] = "Interromptre tous les signaux sonores." -- Needs review
L["CHAT/Testing"] = "Test de %s." -- Needs review
L["DLG/Base Speed"] = "Vitesse de base" -- Needs review
L["DLG/Channel"] = "Canal" -- Needs review
L["DLG/\"Critical\" Beep"] = "Son « critique »" -- Needs review
L["DLG/\"Critical\" Health"] = "Santé « critique »" -- Needs review
L["DLG/\"Dangerous\" Beep"] = "Son « dangereux »" -- Needs review
L["DLG/\"Dangerous\" Health"] = "Santé « en danger »" -- Needs review
L["DLG/Enable"] = "Actif" -- Needs review
L["DLG/Login Message"] = "Message login" -- Needs review
L["DLG/\"Low\" Beep"] = "Son « basse »" -- Needs review
L["DLG/\"Low\" Health"] = "Santé « basse »" -- Needs review
L["DLG/Main Config"] = "Config principale" -- Needs review
L["DLG/Misc Settings"] = "Réglages divers" -- Needs review
L["DLG/Multiplier"] = "Coefficient" -- Needs review
L["DLG/Skip First Beep"] = "Passer le 1er signal sonore" -- Needs review
L["DLG/Sound Effect"] = "Effet sonore" -- Needs review
L["DLG/Speed Explanation"] = [=[Ici se trouve le réglage du rythme lors de l'exécution du signal sonore de l'addon.
Le rythme est accéléré (tempo / coefficient) par le coefficient quand la santé est « critique ».
Le rythme est inchangée quand la santé est « en danger ».
Le rythme est ralenti (tempo x coefficient) par le coefficient quand la santé est « basse ».]=] -- Needs review
L["DLG/Speed Settings"] = "Réglage du rythme" -- Needs review
L["DLG/Stop All"] = "Tout arrêter" -- Needs review
L["DLG/Test Buttons"] = "Boutons de test"
L["DLG/Threshold Settings"] = "Réglage du seuil" -- Needs review
L["DLG/Version"] = "Version %s" -- Needs review
L["DLG/Volume"] = "Volume" -- Needs review
L["DLGTT/Base Speed"] = "La vitesse de base du signal sonore." -- Needs review
L["DLGTT/Beep File"] = "L'effet sonore à jouer." -- Needs review
L["DLGTT/Channel"] = "Le canal actif dans lequel l'audio est joué." -- Needs review
L["DLGTT/\"Critical\" Health"] = "En dessous de cette valeur, votre santé est considérée comme « critiquement » basse." -- Needs review
L["DLGTT/\"Dangerous\" Health"] = "En dessous de cette valeur, votre santé est considérée comme « dangereusement » basse." -- Needs review
L["DLGTT/Enable"] = "Activer/désactiver l'addon." -- Needs review
L["DLGTT/Login Message"] = "Activer/désactiver les messages de login." -- Needs review
L["DLGTT/\"Low\" Health"] = "En dessous de cette valeur, votre santé est considérée comme « basse »." -- Needs review
L["DLGTT/Multiplier"] = "Le multiplicande pour la vitesse de base." -- Needs review
L["DLGTT/Skip First Beep"] = [=[Quand activé, l'addon va ignorer le premier signal sonore dans un cycle.
Solution de contournement de la mise à jour de la santé lors d'un changement de zone qui déclencherait l'alarme.]=] -- Needs review
L["DLGTT/Sound Channel"] = "Le canal sonore actif qui jouera le son." -- Needs review
L["DLGTT/Sound Effect"] = "Le son qui sera joué." -- Needs review
L["DLGTT/Volume"] = [=[Le « volume » du signal sonore.
 1 est joué à un niveau normal, des chiffres plus haut seront joueront plus fort.]=] -- Needs review

end