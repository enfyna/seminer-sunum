@tool
class_name Oyuncu extends CharacterBody2D

@export var Temel : Sprite2D
@export var Sag : Sprite2D
@export var Sol : Sprite2D

func _ready():
    pass

var time = 0
func _process(delta):
    
    time += delta * 10
    Temel.flip_h = velocity.x < 0
    Sag.flip_h = velocity.x < 0
    Sol.flip_h = velocity.x < 0
    Temel.hide()
    Sag.hide()
    Sol.hide()
    if abs(velocity.x) < 10.0:
        Temel.show()
    else:
        if fmod(time, 2.0) > 1.0:
            Sag.show()
        else:
            Sol.show()

    move_and_slide()
