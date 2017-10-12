local ADDON_NAME, namespace = ... 	--localization
local L = namespace.L 				--localization

--local LOCALE = GetLocale()
if namespace.locale == "esES" then
	-- The EU English game client also
	-- uses the US English locale code.

-- ###############################################################################################################
-- ##	Español (Spanish) translations provided by Tholagar, MrUrkaz, Krounted, and Valhallanem on Curseforge.	##
-- ###############################################################################################################

L["  /dcstats config: Opens the DejaCharacterStats addon config menu."] = "/dcstats config: Abre el menú de configuración de DejaCharacterStats"
--Translation missing 
-- L["  /dcstats reset:  Resets DejaCharacterStats options to default."] = ""
--Translation missing 
-- L["%s of %s increases %s by %.2f%%"] = ""
L["/dcstats reset:  Resets DejaCharacterStats frames to default positions."] = "/dcstats reset: Reinicia los marcos de DejaCharacterStats a sus posiciones por defecto."
--Translation missing 
-- L["About DCS"] = ""
L["Agility"] = "Agilidad"
--Translation missing 
-- L["All Stats"] = ""
L["Armor"] = "Armadura"
L["Attack"] = "Ataque"
L["Attack Power"] = "Poder de Ataque"
L["Attack Speed"] = "Velocidad de Ataque"
L["Average Durability"] = "Durabilidad Media"
L["Average equipped item durability percentage."] = "Porcentaje de durabilidad medio de los objetos equipados."
L["Average Item Level:"] = "Nivel de Objeto medio:"
L["Avoidance"] = "Elusión"
L["Avoidance Rating"] = "Índice de Elusión"
L["Blizzard's Hide At Zero"] = "Esconder a 0 de Blizzard"
L["Block"] = "Bloqueo"
L["Character Stats:"] = "Atributos del personaje:"
L["Checked displays all stats. Unchecked displays relevant stats. Use Shift-scroll to snap to the top or bottom."] = "Marcada muestra todas las estadísticas. Desmarcada muestra estadísticas principales. Usar Shift-scroll para desplazar arriba o abajo."
L["Class Colors"] = "Color de Clases"
L["Class Crest Background"] = "Fondo del blasón de clase"
L["Critical Strike Rating"] = "Índice de Golpe Crítico"
L["Damage"] = "Daño"
L["DCS's Hide At Zero"] = "Esconder a Cero de DCS"
L["Decimals"] = "Decimales"
L["Defense"] = "Defensa"
L["DejaCharacterStats is currently using"] = "DejaCharacterStats en uso"
L["DejaCharacterStats Slash commands (/dcstats):"] = "Comandos de barra DejaCharacterStats (/dcstats):"
L["Direct table"] = "Tabla directa"
L["Displays \"Enhancements\" category stats to two decimal places."] = "Muestra la categoría de \"Mejoras\" con dos decimales."
L["Displays a durability bar next to each item."] = "Muestra una barra de durabilidad al lado de cada objeto."
L["Displays average item durability on the character shirt slot and durability frames."] = "Muestra la durabilidad de objeto media en la casilla de camiseta del personaje y en el marco de durabilidad."
L["Displays average item level to one decimal place."] = "Muestra la media de nivel de objeto con un decimal."
--Translation missing 
-- L["Displays average item level to two decimal places."] = ""
L["Displays average item level with class colors."] = "Muestra el nivel de objeto medio con el color de la clase."
L["Displays each equipped item's durability."] = "Muestra la durabilidad de cada objeto equipado."
L["Displays each equipped item's repair cost."] = "Muestra el coste de reparación de cada objeto equipado."
L["Displays Equipped/Available item levels unless equal."] = "Muestra el nivel de objeto Equipado/Disponible a no ser que sean iguales."
L["Displays the average Durability percentage for equipped items in the stat frame."] = "Muestra el porcentaje de durabilidad promedio de los elementos equipados en el marco estadístico."
--Translation missing 
-- L["Displays the class crest background."] = ""
--Translation missing 
-- L["Displays the DCS scrollbar."] = ""
--Translation missing 
-- L["Displays the Expand button for the character stats frame."] = ""
L["Displays the item level of each equipped item."] = "Muestra el nivel de objeto de cada objeto equipado."
--Translation missing 
-- L["Displays the Repair Total before discounts for equipped items in the stat frame."] = ""
L["Dodge Rating"] = "Índice de Esquiva"
L["Durability"] = "Durabilidad"
L["Durability Bars"] = "Barras de Durabilidad"
L["Energy Regen"] = "Reg. Energía"
L["Equipped/Available"] = "Equipado/Disponible"
L["Expand"] = "Expandir"
L["Focus Regen"] = "Regeneración de enfoque"
L["General"] = "General"
L["General global cooldown for casters. Individual spells, set bonuses, talents, etc. not considered. Not suitable for melee. Improvements coming Soon(TM)."] = "Tiempo de reutlización global genérico para taumaturgos. Habilidades individuales, bonus de conjunto, talentos, etc. no incluidos. No adecuado para luchadores cuerpo a cuerpo. Mejoras pronto(TM)."
L["General global cooldown refresh time."] = "Tiempo de refresco del tiempo de reutilización genérico."
L["Global Cooldown"] = "Reutilización Global"
L["Haste"] = "Celeridad"
L["Haste Rating"] = "Índice de Celeridad"
L["Hide Character Stats"] = "Esconder Atributos del Personaje"
--Translation missing 
-- L["Hides \"Enhancements\" stats if their displayed value would be zero. Checking \"Decimals\" changes the displayed value."] = ""
--Translation missing 
-- L["Hides \"Enhancements\" stats only if their numerical value is exactly zero. For example, if stat value is 0.001%, then it would be displayed as 0%."] = ""
L["Ilvl Decimals"] = "Decimales de Nivel de Objeto"
L["Item Durability"] = "Durabilidad del Objeto"
L["Item Level"] = "Nivel de Objeto"
L["Item Level 1 Decimal Place"] = "Nivel de objeto con 1 decimal"
L["Item Level 2 Decimal Places"] = "Nivel de objeto con 2 decimales"
L["Item Repair Cost"] = "Coste de Reparación del Objeto"
L["Item Slots:"] = "Casillas de Objeto:"
L["kbytes of memory"] = "kbytes de memoria"
L["kbytes of memory after garbage collection"] = "kbites de memoria tras la recolección de basura"
L["Leech"] = "Restitución"
L["Leech Rating"] = "Índice de Restitución"
L["Lock DCS"] = "Bloquear DCS"
L["Main Hand"] = "Mano Derecha"
L["Mana Regen"] = "Reg. Maná"
L["Mastery"] = "Maestría"
L["Mastery Rating"] = "Índice de Maestría"
L["Miscellaneous:"] = "Varios:"
L["Movement Speed"] = "Velocidad"
L["Off Hand"] = "Mano Izquierda"
--Translation missing 
-- L["Offense"] = ""
--Translation missing 
-- L["One Decimal Place"] = ""
L["Parry"] = "Parada"
L["Parry Rating"] = "Índice de Parada"
L["Rating"] = "Índice"
--Translation missing 
-- L["Ratings"] = ""
L["Relevant Stats"] = "Atributos Relevantes"
L["Repair Total"] = "Coste de reparación"
--Translation missing 
-- L["Requires Level "] = ""
L["reset"] = "reiniciar"
L["Reset Stats"] = "Reiniciar Atributos"
L["Reset to Default"] = "Reiniciar a valores por Defecto"
--Translation missing 
-- L["Resets order of stats."] = ""
L["Resetting config to defaults."] = "Reiniciando configuración a valores por defecto."
L["Rune Speed"] = "Velocidad de regeneración de runa"
L["Scrollbar"] = "Barra de desplazamiento"
L["Select which stats to display. Use Shift-scroll to snap to the top or bottom."] = "Selecciona que estadísticas muestra. Usa Shift-scroll para desplazar arriba o abajo."
L["Select-A-Stat™"] = "Selecciona-Un-Atributo™"
L["Show all stats."] = "Mostrar todos los Atributos"
L["Show Character Stats"] = "Mostrar todos los Atributos del Personaje"
--Translation missing 
-- L["Show only stats relevant to your class spec."] = ""
L["Spell Power"] = "Poder con hechizos"
--Translation missing 
-- L["Total equipped item repair cost before discounts."] = ""
--Translation missing 
-- L["Two Decimal Places"] = ""
L["Unlock DCS"] = "Desbloquear DCS"
L["Versatility"] = "Versatilidad"
L["Versatility Rating"] = "Índice de Versatilidad"
L["weapon auto attack (white) DPS."] = "DPS del autoataque (blanco)."
L["Weapon DPS"] = "DPS del Arma"
L["With defaults"] = "Con valores por defecto"

return end
