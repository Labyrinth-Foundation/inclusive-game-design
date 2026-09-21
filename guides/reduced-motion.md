# Designing for Reduced Motion

Motion can communicate state, orientation, hierarchy, and cause and effect. It can also create a barrier when an experience depends on large, continuous, rapid, or simulated spatial movement.

The goal of reduced motion support is not simply to turn every animation off. It is to preserve meaning while removing motion that is unnecessary or likely to create discomfort.

## Start with the barrier

Review motion that:

- simulates movement through depth or large distances
- spins, zooms, bounces, or moves across multiple axes
- runs continuously without player input
- moves backgrounds behind stationary text or controls
- automatically advances content
- uses camera movement for feedback that could be communicated another way

Apple specifically recommends avoiding large animations when Reduce Motion is enabled and evaluating animations individually. Microsoft's Xbox Accessibility Guidelines similarly recommend controls for visual movement and camera effects.

## A practical decision

For each animation, ask:

1. **Does it communicate information?**
2. **Is the movement itself necessary to communicate that information?**
3. **Could a less spatial transition communicate the same state?**
4. **Is it decorative?**
5. **Does it continue without the player asking it to?**

If motion is decorative, removing it may be the best reduced motion behavior.

If motion communicates an important transition, consider preserving the information with a crossfade, instant state change, highlight, text update, or smaller local animation.

## Do not remove useful feedback blindly

An animation can explain where an object went, confirm an action, or make a state change understandable. Removing every transition can make an interface harder to follow.

Prefer **less motion with the same meaning** over a global animation kill switch.

## Respect platform preferences

Where a platform exposes a system motion preference, use it as a default signal.

For example, SwiftUI exposes `accessibilityReduceMotion`. Web experiences can use the `prefers-reduced-motion` media feature.

A game may also benefit from its own motion controls when its camera or gameplay creates motion beyond ordinary interface animation.

## Test it

Enable the platform's reduced motion setting before launching the experience.

Then:

- navigate every menu
- start and restart gameplay
- trigger wins, losses, errors, and transitions
- watch backgrounds and decorative elements
- inspect camera movement
- leave each screen open long enough to notice continuous motion

Ask whether the experience still communicates every important state without unnecessary movement.

## Labyrinth practice

In Labyrinth Foundation projects, we treat reduced motion as a design variant rather than an afterthought: preserve the information and interaction, then reduce or replace the motion used to communicate it.

## References

- [Apple: accessibilityReduceMotion](https://developer.apple.com/documentation/swiftui/environmentvalues/accessibilityreducemotion)
- [Apple: Reduced Motion evaluation criteria](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/reduced-motion-evaluation-criteria)
- [Xbox Accessibility Guideline 117: Visual distractions and motion settings](https://learn.microsoft.com/en-us/gaming/accessibility/xbox-accessibility-guidelines/117)
