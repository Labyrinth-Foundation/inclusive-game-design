# Godot Reduced Motion Example

A small Godot 4 reference implementation showing how to preserve the meaning of a state change while offering a calmer motion path.

## The barrier

Games often use sliding panels, camera movement, scale changes, and other spatial animation to communicate that something changed. Those effects can be uncomfortable or disorienting for some players.

Godot does not provide one universal cross-platform system Reduce Motion API, so games commonly need an in-game motion setting. This example keeps the same state change in both modes while changing how that state is presented.

## Pattern

The example exposes a `reduce_motion` setting.

When reduced motion is off, the card moves horizontally while fading.

When reduced motion is on, the card stays in place and uses a brief opacity transition instead.

The important design idea is:

> preserve the information, reduce the unnecessary movement

## Files

`ReducedMotionExample.gd` is a self-contained Godot 4 script that can be attached to an empty `Control` node.

It creates its simple interface in code so the example does not depend on a scene file.

## Run it

1. Create a new Godot 4 project.
2. Create a scene with a root `Control` node.
3. Attach `ReducedMotionExample.gd` to the root.
4. Run the scene.
5. Activate **Next card** several times with reduced motion off.
6. Toggle **Reduce motion** on.
7. Activate **Next card** again.
8. Confirm the content change remains clear without the larger horizontal movement.

## What to test

Verify that:

- the same content states are reachable in both modes
- reduced motion changes presentation rather than game logic
- no required information depends on the direction of movement
- toggling the setting takes effect immediately for later transitions
- the calmer path does not introduce a new delay or interaction barrier

## Production notes

A real game should store the player's preference and apply it consistently across menus, gameplay feedback, camera effects, and other motion systems.

If the target platform exposes a reliable system motion preference, consider using it as the default while still giving players an in-game control when the game contains substantial motion.

This example intentionally does not prescribe one global animation multiplier. Different motion can have different purposes, and each effect should be reviewed in context.

## Related guidance

See [Designing for Reduced Motion](../../../guides/reduced-motion.md).

## License

This code example is available under the repository's [MIT License](../../../LICENSE-CODE).
