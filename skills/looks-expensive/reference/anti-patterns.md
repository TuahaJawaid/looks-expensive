# Anti-Pattern Detection Rules

27 deterministic checks. Run before every output.

## Visual Anti-Patterns

1. **Purple-to-blue gradient background.** The #1 AI slop tell. If a gradient exists and the user didn't ask for it, remove it.
2. **Nested card-in-card.** Card containing another card with its own border/shadow. Flatten the hierarchy.
3. **Gray text on colored background.** Low-contrast text that fails WCAG. Check every text/bg combo.
4. **Centered hero with glowing numbers.** "10M+ users" with a glow effect. The generic SaaS starter pack.
5. **Three equal cards in a row with colored top borders.** The Bootstrap feature section. Use bento, asymmetric, or zigzag instead.
6. **Edge-to-edge sticky navbar.** Glued to viewport top with shadow. Use floating pill or detached nav.
7. **Rainbow gradient text.** Background-clip text with a multi-color gradient. Remove.
8. **Oversaturated accent colors.** Neon-bright blues, purples, greens that vibrate against backgrounds.
9. **Heavy drop shadows.** `shadow-md`, `shadow-lg`, `rgba(0,0,0,0.3)+`. Use hairline elevation only.
10. **1px solid gray borders everywhere.** The "I didn't design this" tell. Use rgba opacity hairlines.
11. **Mac window chrome (red/yellow/green dots)** on code blocks or illustrations that aren't actual product UI.
12. **Stock photo imagery.** Generic business people, handshakes, abstract office scenes.
13. **Symmetrical 3-column Bootstrap grid** with no whitespace variation, no size variation, identical cards.
14. **Decorative gradient mesh backgrounds** with no purpose beyond "looking techy."

## Typography Anti-Patterns

15. **More than 4 type sizes on a single surface.** Generic dashboards use 7-9. Premium uses 3-4.
16. **Italic text used for emphasis** when the user didn't request italics.
17. **Monospace text outside of code/data** contexts.
18. **All-caps body text.** Eyebrows can be uppercase. Body never.
19. **Justified text.** Causes uneven word spacing. Always left-align body.
20. **Display fonts in UI labels or buttons.** Buttons use body weight, not display weight.

## Layout Anti-Patterns

21. **Every section same background color.** Sections must be visually distinct.
22. **Section numbering as decoration.** "01.", "02.", "Section 1". Labels should be logical.
23. **Fake KPI cards** when there's no meaningful data. If you have 3 users, don't show stat cards.
24. **Decorative empty-state illustrations.** Use editorial copy instead.
25. **`h-screen` instead of `min-h-[100dvh]`.** iOS Safari viewport bug.
26. **Horizontal scroll on page-level container.** Never. At any breakpoint.
27. **Body text exceeding 75 characters per line** without max-width constraint.

## Interaction Anti-Patterns

28. **`linear` or default `ease-in-out` transitions.** Use custom cubic-bezier.
29. **Instant state changes.** No transition between states = no polish.
30. **Mixed icon families.** Lucide in nav, Heroicons in features, Material in footer.
31. **Decorative motion without state purpose.** Animation must communicate something.
32. **Placeholder-only form labels.** Labels must be visible, always.
33. **"Click here" or "Learn more" link text** without surrounding context.

## Content Anti-Patterns

34. **Hyperbolic marketing language.** "Revolutionary", "game-changing", "unprecedented."
35. **Generic messaging.** Copy that could apply to any product. "We help businesses grow."
36. **"Get Started" on every CTA.** Buttons must describe the specific action.
37. **Emotionless, generic testimonial text.** Fake-sounding quotes with no specificity.

## How to Use

Before presenting any output, check against ALL 37 rules. For each violation found:
- Classify: Certain (obvious match) / Probable (likely match) / Possible (might match)
- Fix immediately if Certain or Probable
- Flag for user review if Possible
