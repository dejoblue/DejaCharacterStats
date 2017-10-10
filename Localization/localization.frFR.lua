local ADDON_NAME, namespace = ... 	--localization
local L = namespace.L 				--localization

--local LOCALE = GetLocale()

if namespace.locale == "frFR" then
	-- The EU English game client also
	-- uses the US English locale code.

-- #######################################################################################
-- ##	Français (French) translations provided by Darkcraft92, Ymvej, Druidzor,  napnapnapnapnap, sv002 and Medaleuxon Curseforge.	##
-- ##	Thank you Darkcraft92, Ymvej, Druidzor,  napnapnapnapnap, sv002 and Medaleux!												##
-- #######################################################################################

-- #######################
-- ##	Slash Commands 	##
-- #######################
	L["DejaCharacterStats Slash commands (/dcstats):"] = "Commandes de DCS (/dcstats)"
	L["  /dcstats config: Opens the DejaCharacterStats addon config menu."] = "/dcstats config: Ouvre le menu de configuration de DejaCharacterStats." --configuration
 
--L["  /dcstats reset:  Resets DejaCharacterStats options to default."] = "" --TODO: update template as well
--	L["config"] = "" --configuration --description of the commands does not have localised names for them. Should have been something like L["  /dcstats %s:  Resets DejaCharacterStats options to default."]
--	L["reset"] = "Réinitialiser" --description of the commands does not have localised names for them
	L["Reset to Default"] = "Réinitialiser par défaut"

-- ################################
-- ## Global Options Left Column ##
-- ################################
	L["Average Item Level:"] = "Moyenne du niveaux d'équipement (ilvl)" --Patch 730rc106 addition
-- ################################
	L["Equipped/Available"] = "Équipé/Disponible"
	L['Displays Equipped/Available item levels unless equal.'] = "Afficher niveau d'objet Equipé/Disponible, sauf s'ils sont égaux."

	L["Class Colors"] = "Couleur par classe " --Patch 730rc106 addition
	L['Displays average item level with class colors.'] = "Montrer le niveaux d'équipement de la couleur de la classe"
	
	--L["One Decimal Place"] = ""
	-- L['Displays average item level to one decimal place.'] = ""

	L["Two Decimal Places"] = "Afficher deux(2) decimales" 
	--L['Displays average item level to two decimal places.'] = "" -- in ## Patch 7.1.0 r2 additions ## --TODO: change template not to have this string twice

-- ################################
	L["Character Stats:"] = "Statistiques:" --Patch 730rc106 addition
-- ################################
	-- L["DCS's Hide At Zero"] = "" --Patch 730rc106 addition
	-- L['Hides "Enhancements" stats if their displayed value would be zero. Checking "Decimals" changes the displayed value.'] = ""

	-- L["Blizzard's Hide At Zero"] = "" --Patch 730rc106 addition
	-- L['Hides "Enhancements" stats only if their numerical value is exactly zero. For example, if stat value is 0.001%, then it would be displayed as 0%.'] = ""

	L["Decimals"] = "Décimales"
	L['Displays "Enhancements" category stats to two decimal places.'] = 'Afficher les statistiques de la catégorie "Améliorations" avec deux décimales.'

-- ################################
	L["Item Slots:"] = "Emplacement d'équipement" --Patch 730rc106 addition
-- ################################
	L["Item Level"] = "Niveau d'équipement (ilvl)" --Patch 730rc106 addition
	L['Displays the item level of each equipped item.'] = "Affiche le niveau de chaque objet équipé"

	L["Durability Bars"] = "Barres de durabilité"
	L["Displays a durability bar next to each item." ] = "Afficher une barre de durabilité à côté de chaque objet."

	L["Average Durability"] = "Durabilité Moyenne"
	L["Displays average item durability on the character shirt slot and durability frames."] = "Afficher la durabilité moyenne des objets équipés sur l'emplacement de chemise et sur l'affichage de la durabilité."

	L["Item Durability"] = "Durabilité de l'objet"
	L["Displays each equipped item's durability."] = "Afficher la durabilité de chaque objet équipé."

	L["Item Repair Cost"] = "Coût de réparation de l'objet"
	L["Displays each equipped item's repair cost."] = "Afficher le coût en réparations de chaque objet équipé."

-- ################################
	L["Miscellaneous:"] = "Divers:" --Patch 730rc106 addition
-- ################################
	--L["Class Crest Background"] = "Arrière plan de classe" --somehow felt wrong
	L["Displays the class crest background."] = "Afficher le blason de classe en arrière plan"

	L["Expand"] = "Étendre"
	L['Displays the Expand button for the character stats frame.'] = "Afficher le bouton Étendre pour la fenêtre de stats du personnage." --## Needs review.

	L["Scrollbar"] = "Barre de défilement"
	L['Displays the DCS scrollbar.'] = "Afficher la barre de défilement de DCS."

-- ################################
-- ## Stats ##
-- ################################
	L["Durability"] = "Durabilité" -- Be sure to include the colon ":" or it will conflict wih the options checkbox.
	L["Durability %s"] = "Durabilité %s" -- ## --> %s MUST be included <-- ## 
	L["Average equipped item durability percentage."] = "Pourcentage de durabilité moyen des objets équipés."

	L["Repair Total"] = "Coût total de réparation" -- Be sure to include the colon ":" or it will conflict wih the options checkbox.
	L["Repair Total %s"] = "Coût total de réparation %s" -- ## --> %s MUST be included <-- ## 
	L["Total equipped item repair cost before discounts."] = "Coût total de réparation des objets équipés avant réductions."

-- ## Patch 7.1.0 r2 additions ##
	L["Global Cooldown"] = "Temps de recharge global"
	L["Global Cooldown %.2fs"] = "Temps de recharge global %.2fs"
	L["Unlock DCS"] = "Déverouiller DCS"
	L["Lock DCS"] = "Vérouiller DCS"
	--L["Item Level 1 Decimal Place"] = "" --from ## Global Options Left Column ## is used
	L["Displays average item level to one decimal place."] = "Afficher le niveau d'objet moyen avec une décimale."
	--L["Item Level 2 Decimal Places"] = "" --from ## Global Options Left Column ## is used
	L["Displays average item level to two decimal places."] = "Afficher le niveau d'objet moyen avec deux décimales."
	L["Main Hand"] = "Main principale"
	L["/Off Hand"] = "Main gauche"
	L[" weapon auto attack (white) DPS."] = 'DPS de l'Auto-attaque de l'arme (blanc)'
	L["Weapon DPS"] = "DPS de l'arme"
	--L["Weapon DPS %s"] = "" --don't see where this string is used
	
-- ## Patch 730rc106 additions ##
	 L["Movement Speed"] = "Vitesse (déplacement)"
	-- L["About DCS"] = "" --was missing
	L["General"] = "Général"
	L["Attack"] = "Attaque" --invisible for most players
	-- L["Offense"] = ""
	L["Defense"] = "Defense"
	-- L["Rating"] = "" --got replaced with Ratings
	-- L["Ratings"] = ""
	-- L["%s of %s increases %s by %.2f%%"] --for example, "Haste Rating of 42 increases Haste by 1%". 
	--Rating names might be seen during mouse-over on that stat (not rating) (at least so is in ruRU)
	L["Critical Strike Rating"] = "Score de coup critique"
	L["Haste Rating"] = "Score d'hâte"
	L["Versatility Rating"] = "Score de polyvalence"
	L["Mastery Rating"] = "Score de maîtrise"
	L["Leech Rating"] = "Score de ponction"
	-- L["Avoidance Rating"] = "Score d'esquive" --can't they decide what is dodge and what is avoidance?
	L["Dodge Rating"] = "Score d'esquive"
	L["Parry Rating"] = "Score de parade"
	-- L["Requires Level "] = "" --space is required
-- ##For some reason appear to be used
	L["Relevant Stats"] = "Statistiques pertinentes"
	--L["Show only stats relevant to your class spec."] = ""
    L["All Stats"] = ""
	L["Show All Stats"] = "Montrer toutes les statistiques"
	L["Reset Stats"] = "Réinitialiser les statistiques "
	--L["Resets order of stats."] = ""
	L['Show Character Stats'] = "Montrer les statistiques du personnage"
	L['Hide Character Stats'] = "Cacher les statistiques du personnage"
-- ###########################################################################################
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- ###########################################################################################
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- ###########################################################################################
-- Deprecated slash comands (commented out in DejaCharacterStats.lua)
	--L["Resetting config to defaults"] = "" --configuration 
	--L["DejaCharacterStats is currently using "] = "DejaCharacterStats utilise actuellement"
	--L[" kbytes of memory"] = "" --kilobytes
	--L[" kbytes of memory after garbage collection"] = "kbytes de mémoire après passage du ramasse-miettes" --kilobytes
	--L["dumpconfig"] = "" --configuration
	--L["With defaults"] = "Avec valeurs par défaut"
	--L["Direct table"] = "Table directe"
	--L["perf"] = "" --performance
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--	Deprecated since using default client tables and translations.
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	-- L['Durability '] = "Durabilité "
	-- L['Displays the average Durability percentage for equipped items in the stat frame.'] = "Afficher le pourcentage de durabilité moyen pour les objets équipés dans le tableau de statistique."

	-- L['Repair Total '] = "Réparation Totale "
	-- L['Displays the Repair Total before discounts for equipped items in the stat frame.'] = "Afficher le coût total de réparation avant les réductions pour les objets équipés dans le tableau de statistiques."

	-- L['Checked displays all stats. Unchecked displays relevant stats. Use Shift-scroll to snap to the top or bottom.'] = "Coché, affiche toutes les stats. Décoché, affiche les stats pertinentes. Utilisez Shift+Scroll pour aller en haut ou en bas."

	-- L["Select-A-Stat™"]  = "" -- Try to use something snappy and silly like a Fallout or 1950's appliance feature.
	-- L['Select which stats to display. Use Shift-scroll to snap to the top or bottom.'] = "Choisissez quelles stats à afficher. Utilisez Shift+Scroll pour aller en haut ou en bas."

-- ## Attributes ##
	-- L["Health"] = "Vie"
	-- L["Power"] = "Pouvoir"
	-- L["Druid Mana"] = "Druide d'mana"
	-- L["Armor"] = "Armure"
	-- L["Strength"] = "Force"
	-- L["Agility"] = "Agilité"
	-- L["Intellect"] = "Intelligence"
	-- L["Stamina"] = "Endurance"
	-- L["Damage"] = "Dégâts"
	-- L["Attack Power"] = "Puissance d'attaque"
	-- L["Attack Speed"] = "Vitesse d'attaque"
	-- L["Spell Power"] = "Puissance des sorts"
	-- L["Mana Regen"] = "Régén. mana"
	-- L["Energy Regen"] = "Régén. énergie"
	-- L["Rune Regen"] = "Vitesse des runes"
	-- L["Focus Regen"] = "Régén. focalisation"
	-- L["Durability"] = "" --is used in -- ## Stats ## --TODO: update template not to have this line
	-- L["Repair Total"] = "Réparation Totale"

-- ## Enhancements ##
	--L["Critical Strike"] = "Coup critique"
	--L["Haste"] = "Hâte"
	--L["Versatility"] = "Polyvalence"
	--L["Mastery"] = "Maîtrise"
	--L["Leech"] = "Ponction"
	--L["Avoidance"] = "Évitement"
	--L["Dodge"] = "Esquive"
	--L["Parry"] = "Parade"
	--L["Block"] = "Blocage"

-- ## some strange relics
	--L["Ilvl Decimals"] = "Decimales pour le niveau d'objet"
	--L["  /dcstats reset:  Resets DejaCharacterStats frames to default positions."] = "/dcstats reset:  Restore les fenêtres DejaCharacterStats à leur position par défaut."
return end
