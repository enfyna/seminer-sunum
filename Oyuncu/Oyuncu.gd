@tool
class_name Oyuncu extends CharacterBody2D

@export var Sp : AnimatedSprite2D
@export var Zemin : Node2D
const gravity : int = 9800

func _ready():
    pass

func _process(delta):
    if not is_on_floor():
        velocity.y += gravity * delta

    Sp.flip_h = velocity.x < 0

    if abs(velocity.x) < 10.0:
        Sp.play('default')
    else:
        Sp.play('move')

    move_and_slide()

    Zemin.position.x = position.x
