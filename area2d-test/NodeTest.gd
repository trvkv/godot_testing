extends Node2D

var player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    player = $player
    var err = player.connect("change_hp", self, "change_hp")
    assert(err == OK)

func change_hp() -> void:
    player.hp -= 1
    print("(NodeTest.gd) Player HP: ", player.hp)
