# Border Radius System

## The 4-32 Scale

```
xs:   4px    Inputs, small pills, inline tags
sm:   8px    Cards, buttons, dropdowns, tooltips
md:   12px   Modals, larger cards, image containers
lg:   16px   Feature cards, hero elements, large containers
xl:   24px   Hero cards, major containers, pricing cards
2xl:  32px   Full-bleed rounded containers, major sections
pill: 9999px Pill buttons, tags, badges, avatars
```

## Rules

1. No arbitrary values. Every radius maps to the scale.
2. Nested elements use smaller radius than parent. If parent is `lg` (16px), child is `md` (12px) or `sm` (8px).
3. When nesting, calculate inner radius: `inner = outer - padding`. A container with 16px radius and 8px padding has inner elements at 8px radius.
4. Buttons: `sm` (8px) for standard, `pill` for pill-style. Pick one per project, not both.
5. Cards: `sm` (8px) to `lg` (16px) depending on size. Small cards get smaller radius.
6. Images inside cards: match or smaller than card radius.
7. Inputs: `xs` (4px) to `sm` (8px). Match across all form elements.
8. Consistency: all cards on the same page use the same radius. All buttons use the same radius. All inputs use the same radius.

## Common Mappings

| Element | Radius Token | Pixel Value |
|---------|-------------|-------------|
| Text input | xs | 4px |
| Small button | sm | 8px |
| Large button | sm or pill | 8px or 9999px |
| Card (small) | sm | 8px |
| Card (medium) | md | 12px |
| Card (large) | lg | 16px |
| Modal | md-lg | 12-16px |
| Hero card | xl | 24px |
| Full-section container | 2xl | 32px |
| Avatar | pill | 9999px |
| Badge/tag | pill | 9999px |
| Tooltip | sm | 8px |
| Dropdown | sm | 8px |
