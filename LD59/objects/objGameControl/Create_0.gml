
//macro for making scripts live
#macro LIVE if (live_call()) return live_result

// Define macro for printing debug messages
#macro PRINT for(var __;; { show_debug_message(__); break;}) __ =

//audio_group_load(audiogroup_default)
