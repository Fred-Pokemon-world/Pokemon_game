MtEmber_RubyPath_B2F_MapScripts::
	.byte 0

MtEmber_RubyPath_B2F_EventScript_YW::
	; textcolor NPC_TEXT_COLOR_MALE
	; playbgm MUS_ENCOUNTER_RIVAL, 0
	trainerbattle_single TRAINER_YW, MtEmber_RubyPath_B2F_Text_YWIntro, MtEmber_RubyPath_B2F_Text_YWDefeat
	msgbox MtEmber_RubyPath_B2F_YWPostBattle, MSGBOX_AUTOCLOSE
	end
	; trainerbattle_single TRAINER_TAMER_JASON, ViridianCity_Gym_Text_JasonIntro, ViridianCity_Gym_Text_JasonDefeat
	; msgbox ViridianCity_Gym_Text_JasonPostBattle, MSGBOX_AUTOCLOSE
	; end