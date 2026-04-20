///Setup initial variables

/* To go into draw when needing physics drawing

physics_draw_debug()
flag = phy_debug_render_coms | phy_debug_render_shapes;
physics_world_draw_debug(flag)

*/
event_inherited()


xSpeed = 3

ySpeed = 2

xForce = 100
yForce = 20

path = pathTest
pSpeed = 2
path_start(path, pSpeed, path_action_reverse, false)

maxXSpeed = 5
completed = false

scrCreatePlatformFixture(self.id)

count = 0

