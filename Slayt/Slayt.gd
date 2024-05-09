@tool
class_name Slayt extends Control

const klasor = "res://Sayfalar/"

func _ready() -> void:
    RenderingServer.set_default_clear_color(Color(1,1,1))

    var sayfalar = get_node("Sayfalar")

    var dir = DirAccess.open(klasor)
    var sayfa_sayisi = dir.get_files().size()
    for sayfa in dir.get_files():
        var syf : Sayfa = load(klasor + sayfa).instantiate()
        syf.sayfa_sayisi = sayfa_sayisi - 1
        syf.sayfa_no = int(sayfa.split("_")[1])
        sayfalar.add_child(syf)
        syf.position.x = syf.sayfa_no - 1
        syf.position.x *= syf.size.x
