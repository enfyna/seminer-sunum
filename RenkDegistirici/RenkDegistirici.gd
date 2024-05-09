@tool
class_name Tool_Area2D extends Area2D

var current = false

func _process(_delta: float) -> void:
    if is_connected("body_entered", _on_body_entered):
        return
    connect("body_entered", _on_body_entered)

func _on_body_entered(body: Node2D) -> void:
    print(body)
    body.modulate = Color(
        current, current, current
    )
    current = not current
