@tool
class_name Hareket extends Node

@export var yon : String
@export var tus : Array[int]

var parent : Kus

func _ready() -> void:
    parent = get_parent()

func _process(_delta: float) -> void:
    var v = parent.velocity[yon]

    if Input.is_key_pressed(tus[0]):
        v = 1000
    elif Input.is_key_pressed(tus[1]):
        v = -1000
    else:
        v = lerpf(v, 0.0, 0.2)

    parent.velocity[yon] = v
