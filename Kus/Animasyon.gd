@tool
class_name Animasyon extends AnimatedSprite2D

@onready var parent = get_parent()

func _process(_delta: float) -> void:
    
    flip_h = parent.velocity.x > 0

    if not parent.is_on_floor():
        play('fly')
    elif abs(parent.velocity.x) > 10:
        play('move')
    else:
        if animation == 'eat' and is_playing():
            play('eat')
        else:
            play('default')
            animation = 'eat' if not randi() % 1000 else 'default'
