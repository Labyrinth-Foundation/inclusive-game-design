# Before You Release

A short accessibility review for games and interactive experiences.

This checklist is intentionally practical and incomplete. Different games, platforms, audiences, and mechanics require additional testing.

## Input

- [ ] Every supported input method can complete the pathways it claims to support.
- [ ] Important menus do not unexpectedly require a mouse or precise pointer.
- [ ] Keyboard and controller focus is visible and predictable.
- [ ] Required holds, repeated presses, simultaneous inputs, and precision gestures have been reviewed for alternatives.
- [ ] Players can recover from accidental activation where appropriate.

## Motion

- [ ] The experience has been tested with the platform's reduced motion preference enabled where available.
- [ ] Decorative large, spatial, spinning, zooming, or continuous motion has been reviewed.
- [ ] Reducing motion does not remove information the player needs.
- [ ] Camera movement and screen effects have been reviewed separately from ordinary UI animation.

## Visual communication

- [ ] Important information is not communicated through color alone.
- [ ] Text has been tested at larger sizes where the platform supports scalable text.
- [ ] Interactive controls have comfortable activation areas and spacing.
- [ ] Focus and selected states remain visually distinguishable.

## Audio

- [ ] Required information is not communicated only through sound unless sound is essential to the experience and that limitation is clearly understood.
- [ ] Dialogue and meaningful audio content have appropriate text alternatives where applicable.

## Touch

- [ ] Frequently used touch controls do not require unnecessary precision.
- [ ] Important drag interactions have been reviewed for alternative input paths.
- [ ] Accidental touches can be cancelled, undone, or safely retried where appropriate.

## Understanding

- [ ] Instructions can be revisited.
- [ ] Important state changes have clear feedback.
- [ ] Time pressure has been reviewed to determine whether it is essential to the mechanic.
- [ ] Error and failure states explain what the player can do next.

## Test the claims

- [ ] Every accessibility feature described publicly has been manually tested.
- [ ] Known limitations are documented rather than hidden behind a general claim that the game is "accessible."
- [ ] Accessibility testing produced reproducible observations that were fixed, accepted as known limitations, or scheduled for follow-up.

## Keep going

Passing this checklist does not establish universal accessibility. Use it as a prompt for deeper testing with relevant standards, platform guidance, assistive technologies, and people with lived experience.
