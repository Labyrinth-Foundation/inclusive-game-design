extends Control

## Minimal Godot 4 reduced-motion reference.
##
## Attach this script to an empty Control node. It creates a tiny interface
## showing the same state change with either spatial motion or a calmer fade.

var reduce_motion := false
var card_index := 0

var cards := [
	"Explore",
	"Experiment",
	"Reflect",
]

var card_stage: Control
var card_label: Label
var status_label: Label


func _ready() -> void:
	var root := VBoxContainer.new()
	root.name = "Layout"
	root.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	root.add_theme_constant_override("separation", 24)
	root.offset_left = 32
	root.offset_top = 32
	root.offset_right = -32
	root.offset_bottom = -32
	add_child(root)

	var title := Label.new()
	title.text = "Inclusive Game Design"
	title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	root.add_child(title)

	card_stage = Control.new()
	card_stage.custom_minimum_size = Vector2(0, 180)
	card_stage.size_flags_vertical = Control.SIZE_EXPAND_FILL
	root.add_child(card_stage)

	card_label = Label.new()
	card_label.text = cards[card_index]
	card_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	card_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	card_label.add_theme_font_size_override("font_size", 36)
	card_label.set_anchors_preset(Control.PRESET_CENTER)
	card_label.position = Vector2(-90, -30)
	card_label.size = Vector2(180, 60)
	card_stage.add_child(card_label)

	var next_button := Button.new()
	next_button.text = "Next card"
	next_button.pressed.connect(_show_next_card)
	root.add_child(next_button)

	var motion_toggle := CheckButton.new()
	motion_toggle.text = "Reduce motion"
	motion_toggle.toggled.connect(_set_reduce_motion)
	root.add_child(motion_toggle)

	status_label = Label.new()
	status_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	root.add_child(status_label)

	_update_status()


func _set_reduce_motion(enabled: bool) -> void:
	reduce_motion = enabled
	_update_status()


func _show_next_card() -> void:
	card_index = (card_index + 1) % cards.size()

	if reduce_motion:
		await _fade_to_card(cards[card_index])
	else:
		await _slide_to_card(cards[card_index])


func _fade_to_card(next_text: String) -> void:
	var tween := create_tween()
	tween.tween_property(card_label, "modulate:a", 0.0, 0.08)
	await tween.finished

	card_label.text = next_text

	tween = create_tween()
	tween.tween_property(card_label, "modulate:a", 1.0, 0.12)
	await tween.finished


func _slide_to_card(next_text: String) -> void:
	var original_position := card_label.position
	var travel := 120.0

	var tween := create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		card_label,
		"position:x",
		original_position.x - travel,
		0.16
	)
	tween.tween_property(card_label, "modulate:a", 0.0, 0.16)
	await tween.finished

	card_label.text = next_text
	card_label.position.x = original_position.x + travel

	tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		card_label,
		"position:x",
		original_position.x,
		0.20
	)
	tween.tween_property(card_label, "modulate:a", 1.0, 0.20)
	await tween.finished


func _update_status() -> void:
	status_label.text = (
		"Reduced motion is on"
		if reduce_motion
		else "Reduced motion is off"
	)
