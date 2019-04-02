// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/kf2/gorefast.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 0.4

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "reference.smd"
}

// Called when bullets or physics touch the model
$SurfaceProp "flesh"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/kf2/gorefast/"

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

$Sequence "idle" {
	"animations/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$Sequence "walk" {
	"animations\walk.smd"
	activity "ACT_WALK" 1
	fadein 0.2
	fadeout 0.2
	node "walk"
	fps 15
	loop
	walkframe 300 LX LY
}

$Sequence "run" {
	"animations\run.smd"
	activity "ACT_RUN" 1
	fadein 0.2
	fadeout 0.2
	node "walk"
	fps 15
	loop
	walkframe 300 LX LY
}