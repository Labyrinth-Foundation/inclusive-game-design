import SwiftUI

/// A minimal example of preserving state feedback while respecting the
/// system Reduce Motion preference.
struct ReducedMotionExampleView: View {
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    @State private var cardIndex = 0

    private let cards = [
        "Explore",
        "Experiment",
        "Reflect"
    ]

    var body: some View {
        VStack(spacing: 24) {
            Text("Inclusive Game Design")
                .font(.headline)

            ZStack {
                Text(cards[cardIndex])
                    .font(.largeTitle.bold())
                    .id(cardIndex)
                    .transition(cardTransition)
            }
            .frame(maxWidth: .infinity, minHeight: 160)

            Button("Next card") {
                withAnimation(animation) {
                    cardIndex = (cardIndex + 1) % cards.count
                }
            }
            .buttonStyle(.borderedProminent)

            Text(reduceMotion ? "Reduced motion is on" : "Reduced motion is off")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .padding()
    }

    private var cardTransition: AnyTransition {
        if reduceMotion {
            return .opacity
        }

        return .asymmetric(
            insertion: .move(edge: .trailing).combined(with: .opacity),
            removal: .move(edge: .leading).combined(with: .opacity)
        )
    }

    private var animation: Animation {
        reduceMotion ? .easeOut(duration: 0.15) : .easeInOut(duration: 0.35)
    }
}

#Preview {
    ReducedMotionExampleView()
}
