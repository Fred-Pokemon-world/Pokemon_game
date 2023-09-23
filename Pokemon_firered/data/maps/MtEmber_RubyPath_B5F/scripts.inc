.equ LOCALID_Daisy,  3

MtEmber_RubyPath_B5F_MapScripts::
	.byte 0

MtEmber_RubyPath_B5F_EventScript_BrailleMessage::
	lockall
	setvar VAR_0x8005, 130
	braillemessage_wait Braille_Text_Everything
	braillemessage_wait Braille_Text_HasMeaning1
	braillemessage_wait Braille_Text_Existence
	braillemessage_wait Braille_Text_HasMeaning2
	braillemessage_wait Braille_Text_BeingAlive
	braillemessage_wait Braille_Text_HasMeaning3
	braillemessage_wait Braille_Text_HaveDreams
	braillemessage Braille_Text_UsePower
	waitbuttonpress
	releaseall
	end


MtEmber_RubyPath_B5F_EventScript_TriggerLeft::
	lockall
	setvar VAR_TEMP_1, 0
	goto MtEmber_RubyPath_B5F_EventScript_P4Trigger
	end
MtEmber_RubyPath_B5F_EventScript_TriggerRight::
	lockall
	setvar VAR_TEMP_1, 1
	goto MtEmber_RubyPath_B5F_EventScript_P4Trigger
	end
MtEmber_RubyPath_B5F_EventScript_TriggerUp::
	lockall
	setvar VAR_TEMP_1, 2
	goto MtEmber_RubyPath_B5F_EventScript_P4Trigger
	end
MtEmber_RubyPath_B5F_EventScript_TriggerDown::
	lockall
	setvar VAR_TEMP_1, 3
	goto MtEmber_RubyPath_B5F_EventScript_P4Trigger
	end

MtEmber_RubyPath_B5F_EventScript_P4Trigger::
	textcolor NPC_TEXT_COLOR_MALE
	delay 30
	message PalletTown_Text_Daisy1
	waitmessage
	delay 85
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterDown
	waitmovement 0
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
	waitmovement 0
	delay 30
	addobject LOCALID_Daisy
	call_if_eq VAR_TEMP_1, 0, MtEmber_RubyPath_B5F_EventScript_DaisyEnterLeft
	call_if_eq VAR_TEMP_1, 1, MtEmber_RubyPath_B5F_EventScript_DaisyEnterRight
	call_if_eq VAR_TEMP_1, 2, MtEmber_RubyPath_B5F_EventScript_DaisyEnterUp
	call_if_eq VAR_TEMP_1, 3, MtEmber_RubyPath_B5F_EventScript_DaisyEnterDown
	delay 30
	msgbox PalletTown_Text_Daisy2
	closemessage
	releaseall
	end


MtEmber_RubyPath_B5F_EventScript_DaisyEnterLeft::
	applymovement LOCALID_Daisy MtEmber_RubyPath_B5F_Movement_DaisyEnterLeft
	waitmovement 0
	return

MtEmber_RubyPath_B5F_EventScript_DaisyEnterRight::
	applymovement LOCALID_Daisy MtEmber_RubyPath_B5F_Movement_DaisyEnterRight
	waitmovement 0
	return

MtEmber_RubyPath_B5F_EventScript_DaisyEnterUp::
	applymovement LOCALID_Daisy MtEmber_RubyPath_B5F_Movement_DaisyEnterUp
	waitmovement 0
	return

MtEmber_RubyPath_B5F_EventScript_DaisyEnterDown::
	applymovement LOCALID_Daisy MtEmber_RubyPath_B5F_Movement_DaisyEnterDown
	waitmovement 0
	return


MtEmber_RubyPath_B5F_Movement_DaisyEnterLeft::
	walk_left
	walk_left
	step_end

MtEmber_RubyPath_B5F_Movement_DaisyEnterRight::
	walk_left
	walk_left
	walk_up
	walk_left
	walk_left
	walk_left
	step_end

MtEmber_RubyPath_B5F_Movement_DaisyEnterDown::
	walk_left
	walk_left
	walk_down
	walk_left
	step_end

MtEmber_RubyPath_B5F_Movement_DaisyEnterUp::
	walk_left
	walk_left
	walk_up
	walk_left
	step_end