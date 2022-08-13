x1 = RESOLUTION_W * 0.5;
y1 = RESOLUTION_H - (TILE_SIZE * 2);
x2 = RESOLUTION_W * 0.5;
textboxWidth = 0;
textboxHeight = RESOLUTION_H - (RESOLUTION_H - (TILE_SIZE * 2));
textWrapWidth = 580;

x1Target = 0;
x2Target = RESOLUTION_W;

lerpProgress = 0;
textProgress = 0;

//interpolation on!
//gpu_set_tex_filter(true);

scribble_font_set_default("f_text");

//Create a "typist" which holds typewriter state
typist = scribble_typist();
typist.in(1, 0);

msg = "default text msg";
background = 0;

