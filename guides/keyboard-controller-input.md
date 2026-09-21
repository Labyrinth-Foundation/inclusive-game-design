# Keyboard and Controller Input

A game can technically support a keyboard or controller while still leaving important actions dependent on a mouse.

The stronger goal is **complete pathways**: a player using a supported input method should be able to launch, configure, play, pause, restart, recover from mistakes, and leave the experience.

## Start with the barrier

Input requirements can exclude players when they depend on:

- precise pointer movement
- an analog action with no digital alternative
- simultaneous inputs that are not essential to the mechanic
- long holds or rapid repeated presses
- a mouse for one otherwise keyboard compatible menu
- focus that disappears or moves unpredictably
- controls that cannot be remapped when remapping is appropriate

Microsoft's Xbox Accessibility Guidelines recommend that keyboard supported games make the complete experience operable with a keyboard, including starting, settings, gameplay, and exiting.

## Design around actions

Define semantic actions such as:

- move
- confirm
- cancel or back
- pause
- restart
- next
- previous

Then map devices to those actions rather than scattering device-specific assumptions throughout the game.

This also makes alternate inputs and automated input testing easier.

## Focus is part of the control scheme

For menu interfaces:

- always make the current focus visible
- choose a predictable initial focus
- make directional movement predictable
- restore focus sensibly after closing a dialog
- avoid focus traps
- test what happens when controls appear, disappear, or become disabled

A controller cannot compensate for an interface whose focus model is unclear.

## The no mouse test

This is one of the simplest tests we use.

Put the mouse or trackpad away before launching the game.

Using only the keyboard or controller:

1. Launch or enter the experience.
2. Reach settings.
3. Start gameplay.
4. Perform every required gameplay action.
5. Pause and resume.
6. Restart after failure or completion.
7. Navigate back.
8. Exit the experience.

If you have to reach for the pointer once, you found an input dependency.

## Test both digital and analog paths

Controller support should not mean testing only a thumb stick. If a game provides D-pad navigation, test it independently. If gameplay requires analog movement, consider whether a digital or simplified alternative is possible without changing an essential mechanic.

## Labyrinth practice

Labyrinth Arcade is designed around keyboard and controller input without requiring mouse gameplay. Its automated scenarios can inject keyboard actions, controller buttons, and controller motion so input pathways can be exercised repeatedly during development.

That does not prove an experience is accessible, but it turns input parity into behavior that can be tested rather than an assumption.

## References

- [Xbox Accessibility Guideline 107: Input](https://learn.microsoft.com/en-us/xbox/accessibility/xbox-accessibility-guidelines/107)
- [Xbox Accessibility Guideline 112: UI navigation](https://learn.microsoft.com/en-us/gaming/accessibility/xbox-accessibility-guidelines/112)
