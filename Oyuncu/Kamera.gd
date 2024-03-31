class_name Kamera extends Camera2D

var suanki_slayt = 0

func _process(_delta):
    var hedef = get_viewport_rect().size.x * suanki_slayt
    position.x = lerp(
        position.x,
        hedef,
        0.2
    )
    if abs(hedef - position.x) < 0.1:
        set_process(false)

func slayt_degistir(body : Node2D, miktar : int):
    if not body.is_class("CharacterBody2D"):
        return
    if is_processing():
        return
    suanki_slayt += miktar
    set_process(true)

func _on_area_2d_sol_body_entered(body:Node2D):
    slayt_degistir(body, -1)

func _on_area_2d_sag_body_entered(body:Node2D):
    slayt_degistir(body, 1)

