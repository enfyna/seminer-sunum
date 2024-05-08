@tool
class_name Kus extends CharacterBody2D

const gravity : int = 9800

func _ready():
    pass

func _process(delta):
    if not is_on_floor():
        velocity.y += gravity * delta

    move_and_slide()
