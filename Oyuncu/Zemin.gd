@tool
class_name Zemin extends Node2D

var y_pos = 0

func _ready() -> void:
    y_pos = get_parent().get_parent().position.y
    

func _process(_delta: float) -> void:
    global_position.y = y_pos
