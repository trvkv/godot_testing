extends Node2D

signal change_hp

var hp = 100

func _ready() -> void:
    var err = $Timer.connect("timeout", self, "_on_timeout")
    assert(err == OK)

func _on_timeout() -> void:
    print("(player.gd) Emitting hp change!")
    emit_signal("change_hp")
