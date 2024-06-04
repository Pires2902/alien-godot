extends CharacterBody2D

@export var speed = 3
@export_range(0,1) var lerp_factorVel = 0.5
@export_range(0,1) var lerp_factorRot
@onready var Sprite = $Sprite



func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")	
	var target_velocity = direction * speed * 100.0
	velocity = lerp(velocity,target_velocity,lerp_factorVel)
	move_and_slide()
	var target_rotation = direction.x * 45.0
	Sprite.rotation_degrees = lerp(rotation_degrees,target_rotation,lerp_factorRot)

