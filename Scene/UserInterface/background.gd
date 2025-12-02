extends ParallaxBackground

@onready var sky: Sprite2D = get_node("Sky/Background")
const scroll_speed = 100
func _ready() -> void:
	randomize()
	var index = randi_range(1, 2)
	sky.texture = load("res://Assets/Sprite/background-" + str(index) + ".png")

func _process(delta: float) -> void:
	scroll_offset.x -= scroll_speed * delta
