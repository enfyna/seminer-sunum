@tool
class_name Sayfa extends Control

@onready var lb : Label = $Label
var sayfa_sayisi : int

func _ready() -> void:
    var sayfa_no = int(name.split('_')[1])
    lb.text = str(sayfa_no )+ "/" + str(sayfa_sayisi)
