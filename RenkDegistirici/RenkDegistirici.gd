@tool
class_name RenkDegistirici extends Area2D

func _ready() -> void:
    pass

func _process(_delta: float) -> void:
    print(is_connected("body_entered", _on_body_entered))
    if is_connected("body_entered", _on_body_entered):
        set_process(false)
    else:
        connect("body_entered", _on_body_entered)

func _on_body_entered(body: Node2D) -> void:
    print(body)
    body.modulate = Color(randf(), randf(), randf())
