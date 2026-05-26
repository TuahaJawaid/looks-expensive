# Anti-Pattern Detection Rules

47 deterministic checks. Run before every output.

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
11. **Mac window chrome (red/yellow/green dots)** on ANY element. Code blocks, dashboards, mockups — no exceptions. Use a thin accent line or subtle border instead.
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

## Structural Anti-Patterns

38. **Fake bento grid.** A grid labeled `.bento-grid` where all cards are equal size with no `grid-column: span` or `grid-row: span`. If no card spans, rename the class and admit it's a regular grid — or add real spanning per reference/bento-grids.md.
39. **Same animation on every element.** If the only animation is `translateY(24px)` fade-in on scroll, you haven't met Essential tier. Add at least one more type: counter animation, staggered reveal with different timing, horizontal slide, clip-path reveal, or a domain-specific keyframe animation.
40. **Identical page skeleton.** If your page follows: centered hero → 3-card grid → 3-step process → 4-col stats → testimonial → CTA → footer — you used the default template. Rearrange, merge, or replace at least 2 sections with different patterns from reference/section-layouts.md.
41. **Gray or near-black accent color.** If the accent hex is #1-#5 range (e.g., #1B2838, #334155, #475569, #64748B, #171717), it's not an accent — it's ink. Accents must be visually distinguishable from body text at arm's length. Minimum: the accent hue should differ from the ink by at least 30 degrees on the color wheel.
42. **Gradient rectangle placeholder.** A colored gradient rectangle where a product visual should be. Use a CSS mockup from reference/css-mockups.md instead. If the product is physical, use an editorial typography treatment or a styled placeholder with label — not an anonymous gradient blob.
43. **Reused testimonial names.** Never use: Sarah Chen, Marcus T., Priya S., Maria Santos, Elena, Jordan K., Alex Rivera, Jamie, David & Laura. These names appear in AI-generated content constantly. Generate names from the product's actual target audience demographic and geography.
44. **Zero-padded decorative numbers.** "01.", "02.", "03." as section labels or step indicators. Use plain numbers (1, 2, 3) for process steps. Never zero-pad. Zero-padding is an AI design tell.
45. **All-dark site with no light section.** If the entire page is dark-themed, include at least one light-background section (white or light gray) for contrast. The difference between #0a0a0a and #1a1a1a is not visible enough to create section distinction.
46. **Mobile nav without toggle.** Hiding nav links on mobile with `display: none` but providing no hamburger toggle JS. Every responsive site must have a working mobile menu.
47. **Universal 5-star testimonials.** Every testimonial at 5 stars with no variation. Real products have 4.5-4.8 star averages. Mix in a 4-star review or drop the stars entirely.

## How to Use

Before presenting any output, check against ALL 47 rules. For each violation found:
- Classify: Certain (obvious match) / Probable (likely match) / Possible (might match)
- Fix immediately if Certain or Probable
- Flag for user review if Possible
