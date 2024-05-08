@tool
class_name Sayfa extends Control

@onready var lb : Label = $Label
var sayfa_sayisi : int
var sayfa_no : int

func _ready() -> void:
    lb.text = str(sayfa_no)+ "/" + str(sayfa_sayisi)
