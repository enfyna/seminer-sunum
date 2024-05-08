@tool
class_name Kamera extends Camera2D

@export var root_node : Node
var oyuncu : Kus
var suanki_slayt : int = 0

func _ready() -> void:
    oyuncu = get_parent().get_node("CharacterBody2D")
    if Engine.is_editor_hint():
        root_node = get_parent().get_parent()
        if root_node is SubViewport:
            root_node = get_parent()
    else:
        root_node = self

func _process(_delta):
    suanki_slayt = ceil((oyuncu.position.x - 640) / 1280.0)
    var hedef = suanki_slayt * 1280.0 
    if Engine.is_editor_hint():
        hedef *= -1

    root_node.position.x = lerp(
        root_node.position.x,
        hedef,
        0.2
    )

