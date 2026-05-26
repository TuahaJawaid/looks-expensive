# Icon System

## Style
- Outlined only. No filled/solid icons.
- Stroke weight: 0.8-1px. Nothing heavier. Heavier strokes look cheap and dated.
- Corner treatment: rounded caps and joins (matching border-radius system).
- Consistent across entire project. One family, one weight.

## Sizing
Three tiers:
- 16px: inline with text, labels, small UI elements
- 20px: cards, list items, navigation, feature descriptions
- 24px: hero elements, large feature cards, standalone icons

Never arbitrary sizes. Map every icon to one of these three.

## Color
- Default: inherits text color (--ink-2 or --ink-3)
- Interactive: accent color on hover/focus
- On dark backgrounds: uses on-dark text color
- Never multi-colored icons. One color per icon.

## Recommended Libraries (outlined, thin stroke)
- Phosphor Icons (Light weight)
- Lucide (with stroke-width reduced to 1)
- Heroicons (outline variant)
- Tabler Icons (with stroke-width reduced to 1)

If no library fits the brand, use NO icons rather than mixing families or using thick-stroked defaults.

## Rules
1. One icon family per project. Never mix Lucide with Heroicons with Phosphor.
2. If Lucide is used, override default stroke-width from 2 to 1: `stroke-width="1"` or CSS `stroke-width: 1px`.
3. Icons are functional, not decorative. Every icon clarifies meaning. If removing the icon doesn't reduce clarity, remove it.
4. No emoji as icons.
5. No icon + text redundancy ("Download" text next to a download icon is fine. A download icon next to a download icon is not.)
6. Touch targets: icon buttons must be 44x44px minimum even if the icon is 20px. Padding creates the target.
7. Accessibility: icon-only buttons must have `aria-label`. Decorative icons get `aria-hidden="true"`.
