// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/kf2/alphaclot.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 0.4

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "clot.smd"
}

// Called when bullets or physics touch the model
$SurfaceProp "flesh"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/kf2/clot/"

$TextureGroup "body"
{
	{ "ZED_Clot_D" }
	{ "ZED_Clot_D_albino" }
}

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Sets the min max z for a pose parameter
$PoseParameter "move_yaw" -180 180 0

$ikchain "rfoot" "RightFoot" knee 0 0 0
$ikchain "lfoot" "LeftFoot" knee 0 0 0

// ------------------------------- POSE PARAMETERS -------------------------------

$Sequence "subtract_" {
    "aimcenter.smd"
    fadein 0.2
    fadeout 0.2
    fps 30
    loop
    hidden
}

$Animation aimleft "aimleft.smd" subtract "subtract_" 0 frames 0 0
$Animation aimcenter "aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "aimright.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "aimup.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "aimdown.smd" subtract "subtract_" 0 frames 0 0

$Sequence "aim_pitch" {
    "aimup"
    "aimcenter"
    "aimdown"
    fps 30
    delta
    blendwidth 3
    blendcenter aimcenter
    blend "aim_pitch" -90 90
    autoplay
}

$Sequence "aim_yaw" {
    "aimright"
    "aimcenter"
    "aimleft"
    fps 30
    delta
    blendwidth 3
    blendcenter aimcenter
    blend "aim_yaw" -90 90
    autoplay
}

//-------------------------------------- ANIMATIONS --------------------------------------\\

$Sequence "idle1" {
	"animations/idle1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle2" {
	"animations/idle2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle3" {
	"animations/idle3.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle4" {
	"animations/idle4.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle5" {
	"animations/idle5.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle6" {
	"animations/idle6.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle7" {
	"animations/idle7.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle8" {
	"animations/idle8.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle9" {
	"animations/idle9.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle10" {
	"animations/idle10.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle11" {
	"animations/idle11.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle12" {
	"animations/idle12.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "idle_fire" {
	"animations/idle_fire.smd"
	activity "ACT_IDLE_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "attack1" {
	"animations/attack1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attack2" {
	"animations/attack2.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attack3" {
	"animations/attack3.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attack4" {
	"animations/attack4.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attack5" {
	"animations/attack5.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attackcharge" {
	"animations/attackcharge.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attacklunge1" {
	"animations/attacklunge1.smd"
	activity "ACT_RANGE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attacklunge2" {
	"animations/attacklunge2.smd"
	activity "ACT_RANGE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attacklunge3" {
	"animations/attacklunge3.smd"
	activity "ACT_RANGE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attackpower1" {
	"animations/attackpower1.smd"
	activity "ACT_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "attackpower2" {
	"animations/attackpower2.smd"
	activity "ACT_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "grab" {
	"animations/grab.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "grab_attack1" {
	"animations/grab_attack1.smd"
	activity "ACT_SPECIAL_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "grab_attack2" {
	"animations/grab_attack2.smd"
	activity "ACT_SPECIAL_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "grab_attack3" {
	"animations/grab_attack3.smd"
	activity "ACT_SPECIAL_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "jump" {
	"animations/jump.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "glide" {
	"animations/glide.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "land" {
	"animations/land.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	walkframe 800 LX LY
}

$Sequence "turnleft" {
	"animations/turnleft.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "turnright" {
	"animations/turnright.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "pain1" {
	"animations/pain1.smd"
	activity "ACT_BIG_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "pain2" {
	"animations/pain2.smd"
	activity "ACT_BIG_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "pain3" {
	"animations/pain3.smd"
	activity "ACT_BIG_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "pain4" {
	"animations/pain4.smd"
	activity "ACT_BIG_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "pain5" {
	"animations/pain5.smd"
	activity "ACT_BIG_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "taunt1" {
	"animations/taunt1.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "taunt2" {
	"animations/taunt2.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "taunt3" {
	"animations/taunt3.smd"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 15
}

$Sequence "walk" {
	"animations\walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	node "walk"
	fps 15
	loop
	walkframe 800 LX LY
}

$Sequence "walk_fire" {
	"animations\walk_fire.smd"
	activity "ACT_WALK_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	node "walk_fire"
	fps 15
	loop
	walkframe 800 LX LY
}

$Sequence "run" {
	"animations\run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	node "run"
	fps 15
	loop
	walkframe 800 LX LY
}