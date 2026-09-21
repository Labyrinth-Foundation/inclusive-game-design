# Accessible Touch Interactions

Touch interfaces can create barriers when controls are small, crowded, precision dependent, gesture only, or difficult to recover from after an accidental touch.

The goal is not merely to make buttons larger. It is to make important actions comfortable to discover, activate, cancel, and repeat.

## Start with the barrier

Look closely at interactions that require:

- hitting a small target
- choosing between tightly packed targets
- precise dragging
- a long press with no alternative
- multiple fingers or simultaneous touches
- repeated rapid taps
- reaching an important control at an uncomfortable screen edge
- understanding a control from color or position alone

## Give targets room

WCAG 2.2's Target Size (Minimum) criterion establishes a 24 by 24 CSS pixel minimum for web pointer targets, with defined exceptions and spacing rules. Its purpose is to reduce accidental activation for people who have difficulty with fine motor movement.

Treat minimums as a floor, not an interface design target. Frequently used or consequential controls often benefit from larger activation areas and generous spacing.

## Separate the visual target from the hit target

A control can look visually compact while providing a larger interactive region around it.

Do not assume the visible icon is the only space that should accept the touch.

## Provide alternatives to precision gestures

When a drag represents a discrete action, ask whether buttons, stepping controls, selection followed by placement, or another digital path could provide the same result.

Some mechanics are inherently spatial. The goal is not to eliminate those mechanics but to avoid requiring precision where precision is not essential.

## Make mistakes recoverable

Where appropriate:

- activate on release rather than immediately on touch down
- allow a touch to be cancelled by moving away
- provide undo for consequential actions
- confirm destructive actions
- avoid making an accidental tap permanently expensive

## Do not rely on color alone

If color communicates an actionable state, add another cue such as shape, iconography, text, pattern, or position.

WCAG's Use of Color criterion specifically requires that color not be the only visual means of conveying information, actions, responses, or distinctions.

## Test beyond your dominant hand

Try the experience:

- with one hand
- with the other hand
- with the device resting on a surface
- at larger text sizes
- without performing drag gestures when an alternative exists
- deliberately tapping near the edges of targets
- using relevant platform assistive technologies

The point is to reveal assumptions built into the interaction.

## References

- [W3C: Understanding WCAG 2.2 Target Size (Minimum)](https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum)
- [W3C: Understanding Use of Color](https://www.w3.org/WAI/WCAG22/Understanding/use-of-color)
- [Xbox Accessibility Guideline 107: Input](https://learn.microsoft.com/en-us/xbox/accessibility/xbox-accessibility-guidelines/107)
