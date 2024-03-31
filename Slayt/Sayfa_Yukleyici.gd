class_name SayfaYukleyici extends Control

func _ready() -> void:
    const klasor = "res://Sayfalar/"
    var dir = DirAccess.open(klasor)
    for sayfa in dir.get_files():
        if sayfa == "Sayfa.tscn":
            continue
        var node = load(klasor + sayfa).instantiate()
        add_child(node)
        node.position.x = int(sayfa.split("_")[1]) - 1
        node.position.x *= node.size.x
