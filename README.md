# Inclusive Game Design

Practical patterns, examples, and testing methods for making games and interactive experiences easier for more people to play.

**Inclusive Game Design** is an open resource from [Labyrinth Foundation](https://labyrinthfoundation.org), a 501(c)(3) public charity creating free educational and creative games, interactive experiences, and digital projects for learning through play.

We are building this resource from lessons learned while designing and testing our own projects. Our goal is to turn those lessons into guidance that developers, designers, students, educators, nonprofits, and independent creators can use in their own work.

## What you'll find here

This project focuses on practical ways to identify and remove unnecessary barriers in interactive experiences.

The first topics include:

- Designing for reduced motion
- Keyboard and controller input
- Accessible touch interactions
- Quick accessibility testing
- A practical pre-release checklist

Over time, we plan to add small reference implementations for SwiftUI, the web, and Godot, along with additional guides and case studies.

## Principles

- **Start with the barrier.** Focus on what can prevent someone from understanding, navigating, or playing.
- **Offer more than one path.** Avoid making important information or actions depend unnecessarily on a single sense or input method.
- **Test the actual experience.** Supporting an accessibility setting or API does not by itself make a game accessible.
- **Prefer practical examples.** Guidance should be concrete enough to use during design, development, and QA.
- **Be transparent about limitations.** Accessibility is not a binary property, and different games create different constraints.
- **Keep learning.** These resources should evolve as platforms, standards, research, and our own understanding improve.

## Initial guides

This repository is at the beginning of its development. Our initial work will focus on three areas where Labyrinth Foundation has practical development experience:

### Reduced motion

How to respect motion preferences without assuming that every animation must simply disappear.

### Keyboard and controller input

How to build experiences that remain understandable and operable without depending on a mouse or precise pointer input.

### Accessible touch

How target size, gestures, alternatives to dragging, state communication, and assistive technologies affect touch-based play.

## Testing

We are also developing short, repeatable testing exercises that teams can use throughout development rather than waiting for a final accessibility review.

Examples include playing without a mouse, testing with substantially larger text, enabling reduced motion, muting audio, and checking whether information communicated through color has another cue.

## Not a new accessibility standard

Inclusive Game Design is not intended to replace established accessibility standards or platform guidance. We aim to translate established principles, relevant research, and lessons from real development work into practical patterns and testing workflows for games and interactive experiences.

As the project grows, individual guides will cite the standards, platform documentation, research, and other sources that inform their recommendations.

## Contributing

We welcome thoughtful contributions from players, developers, designers, researchers, educators, and accessibility practitioners.

Contribution guidance and our first open issues are coming as we establish the initial structure of the project.

## About Labyrinth Foundation

[Labyrinth Foundation Inc.](https://labyrinthfoundation.org) is a 501(c)(3) public charity. We create free educational and creative games, interactive experiences, and digital projects that encourage learning through play.

Explore our work at [labyrinthfoundation.org](https://labyrinthfoundation.org).
