randomize();

global.gamePaused = false;
global.textSpd = 0.75;

//creation of the camera
global.iCamera = instance_create_layer(0, 0, layer, o_camera);

//resize surface
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

//go to start room
room_goto(ROOM_START);