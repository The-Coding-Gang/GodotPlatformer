extends KinematicBody2D

#vector
var velocity = Vector2(0, 0);

#scalar
export var speed = 400;
export var gravity = 20;

func _process(_delta):
	apply_gravity()
	move()
	move_and_slide(velocity)



func move():
	if (Input.is_action_pressed("Right")):
		velocity.x = speed;
	elif Input.is_action_pressed("Left"):
		velocity.x = -speed;
	else :
		velocity.x = 0;

func apply_gravity():
	velocity.y += gravity;




