extends KinematicBody2D

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x = 0
	velocity.y += 10
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = 200
	if Input.is_action_pressed("ui_left"):
		velocity.x = -200
	if Input.is_action_pressed("ui_up"):
		velocity.y = -200
		
	move_and_slide(velocity)