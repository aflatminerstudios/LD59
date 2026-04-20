
// GMLive Documentation - https://yal.cc/docs/gm/gmlive
// Add  live_auto_call;  to the start of an event or function to make it live. 
//   You must restart the app to change from live/non-live in this way.
//   After the event/function is live, just save the file to immediately see the changes in the running game.



// Define macro for printing debug messages
#macro PRINT for(var __;; { show_debug_message(__); break;}) __ =

//audio_group_load(audiogroup_default)



// List of whether levels are complete or not, could be binary flag based if there are multiple exits
global.level_state_1 = 0; // 0 = Unfinished, 1 = Finished
global.level_state_2 = 0;
global.level_state_3 = 0;
global.level_state_4 = 0;
global.level_state_5 = 0;




// Once all initialization tasks are done, move to the title screen
room_goto(roomTitle);