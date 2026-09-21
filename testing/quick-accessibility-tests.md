# Quick Accessibility Tests

Accessibility review does not have to begin at the end of development. These short exercises are designed to expose assumptions while a project is still easy to change.

They are **tests for barriers**, not certifications that a game is accessible.

## No mouse

Put the mouse or trackpad away before launch.

Can you reach settings, start, play, pause, restart, navigate back, and exit using the keyboard or controller pathway the game claims to support?

## Reduced motion

Enable the platform's Reduce Motion preference before launch.

Exercise menus, transitions, gameplay feedback, camera effects, win and loss states, and continuously animated screens.

Look for large, spatial, continuous, or decorative motion that remains unnecessary.

## Large text

Increase the system text size substantially where the platform supports it.

Look for clipped labels, overlapping controls, lost information, fixed-height containers, and actions pushed offscreen.

## Sound off

Mute the device.

Can you still perceive every piece of information required to understand state and make decisions?

## Color without meaning

Inspect every place color changes.

For each one, ask: if the colors were indistinguishable, what other cue would communicate the difference?

## Imprecise touch

Deliberately tap near the edges of controls rather than their centers.

Look for small hit regions, crowded controls, irreversible mistakes, and gestures that demand unnecessary precision.

## One hand

Try the experience with one hand when that is plausible for the platform and game.

Look for simultaneous inputs, long holds, repeated presses, and controls whose placement creates unnecessary reach.

## Focus journey

Using keyboard or controller navigation, move through every menu in order.

Watch for invisible focus, surprising jumps, traps, focus that disappears when content changes, and dialogs that return focus somewhere unexpected.

## Record what failed

A useful accessibility test ends with specific observations:

- what action the player was trying to perform
- what input or setting was in use
- what barrier occurred
- whether the barrier prevented progress or made it unnecessarily difficult
- a reproducible path back to the problem

That gives the team something actionable to fix and retest.
