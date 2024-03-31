class_name Oyuncu extends CharacterBody2D

func _ready():
    pass

func _process(_delta):
    velocity.x = lerpf(velocity.x, 0.0, 0.2)
    if Input.is_key_pressed(KEY_RIGHT):
        velocity.x = 1000
    elif Input.is_key_pressed(KEY_LEFT):
        velocity.x = -1000
    move_and_slide()
