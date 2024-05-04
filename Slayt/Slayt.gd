@tool
class_name Slayt extends Control

const klasor = "res://Sayfalar/"

func _ready() -> void:
    RenderingServer.set_default_clear_color(Color(1,1,1))

    var sayfalar = get_node("Sayfalar")

    var dir = DirAccess.open(klasor)
    var sayfa_sayisi = dir.get_files().size() - 2
    for sayfa in dir.get_files():
        if sayfa == "Sayfa.tscn":
            continue
        var syf : Sayfa = load(klasor + sayfa).instantiate()
        syf.sayfa_sayisi = sayfa_sayisi
        sayfalar.add_child(syf)
        syf.position.x = int(sayfa.split("_")[1]) - 1
        syf.position.x *= syf.size.x
