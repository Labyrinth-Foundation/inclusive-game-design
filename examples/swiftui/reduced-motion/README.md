# SwiftUI Reduced Motion Example

A small SwiftUI reference implementation showing how to preserve the meaning of a state transition while respecting the system Reduce Motion preference.

## The barrier

A large sliding or scaling transition may be comfortable for some players and uncomfortable for others. Simply deleting the transition can also remove useful feedback about what changed.

This example keeps the same state change and replaces the spatial transition with a short opacity transition when Reduce Motion is enabled.

## Pattern

SwiftUI exposes the system preference through the environment:

```swift
@Environment(\.accessibilityReduceMotion) private var reduceMotion
```

The example then chooses between two transitions:

```swift
private var cardTransition: AnyTransition {
    if reduceMotion {
        return .opacity
    }

    return .asymmetric(
        insertion: .move(edge: .trailing).combined(with: .opacity),
        removal: .move(edge: .leading).combined(with: .opacity)
    )
}
```

The important part is not the particular animation. The state still changes in both modes, the new content is still apparent, and the reduced motion path avoids the larger spatial movement.

## Files

`ReducedMotionExampleView.swift` contains the complete example.

It intentionally has no app architecture or external dependencies so the pattern can be copied into a sample project and understood in isolation.

## Manual test

1. Run the example on an Apple platform that exposes Reduce Motion.
2. With Reduce Motion disabled, activate **Next card** several times. The card uses a directional spatial transition.
3. Enable **Reduce Motion** in the system accessibility settings.
4. Return to the example and activate **Next card** again.
5. Confirm that the state change remains clear but the card no longer travels across the interface.
6. Disable Reduce Motion and confirm the ordinary transition returns.

Also verify that the button remains operable and that the text update does not depend on the animation to communicate which card is active.

## Adapt it, do not copy it blindly

Opacity is not automatically the correct reduced motion treatment for every interface. Some state changes are clearer when instantaneous, while others benefit from a small local animation.

Start with the information the motion communicates, then choose the least disruptive alternative that preserves that information.

## Related guidance

See [Designing for Reduced Motion](../../../guides/reduced-motion.md).

## License

This code example is available under the repository's [MIT License](../../../LICENSE-CODE).
