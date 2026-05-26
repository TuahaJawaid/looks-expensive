# Bento Grid Patterns

A bento grid has cards of DIFFERENT sizes. If all cards are the same size, it's a regular grid — not a bento. Don't use the class name `.bento-grid` on equal-column layouts.

## Minimum Requirements

Every bento grid MUST have:
- At least 2 different card sizes
- At least one card using `grid-column: span 2` or `grid-row: span 2`
- Visual weight hierarchy — the largest card contains the most important content

If you can't meet these requirements, use a different layout pattern (zigzag, asymmetric split, or card grid with intentional size variation).

## 5 Patterns

### Pattern 1: L-Shape (1 wide + 2 stacked)

```css
.bento { display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px; }
.bento-wide { grid-column: span 2; }
```

```
┌──────────────────┐ ┌────────┐
│                  │ │   B    │
│     A (span 2)   │ │        │
│                  │ ├────────┤
│                  │ │   C    │
└──────────────────┘ │        │
                     └────────┘
```

- A: `grid-column: span 2; min-height: 320px` — feature highlight with visual
- B, C: standard cards with icon + text
- Best for: 3 features where one is the primary

### Pattern 2: T-Shape (1 tall + 2 beside)

```css
.bento { display: grid; grid-template-columns: repeat(3, 1fr); grid-template-rows: auto auto; gap: 16px; }
.bento-tall { grid-row: span 2; }
```

```
┌────────┐ ┌──────────────────┐
│        │ │        B         │
│   A    │ └──────────────────┘
│ (tall) │ ┌──────────────────┐
│        │ │        C         │
│        │ └──────────────────┘
└────────┘
```

- A: `grid-row: span 2` — tall card with stacked content or visual
- B, C: wide cards that fill 2 columns each
- Best for: dashboard-style features, product showcase beside details

### Pattern 3: Asymmetric 2+1+2

```css
.bento { display: grid; grid-template-columns: repeat(3, 1fr); grid-template-rows: auto auto; gap: 16px; }
.bento-wide { grid-column: span 2; }
.bento-full { grid-column: span 3; }
```

```
┌──────────────────┐ ┌────────┐
│   A (span 2)     │ │   B    │
└──────────────────┘ └────────┘
┌──────────────────────────────┐
│         C (span 3)           │
└──────────────────────────────┘
┌────────┐ ┌──────────────────┐
│   D    │ │   E (span 2)     │
└────────┘ └──────────────────┘
```

- Row 1: wide + narrow (mirror of row 3)
- Row 2: full-width feature spotlight
- Row 3: narrow + wide (flipped from row 1)
- Best for: 5 features with clear hierarchy

### Pattern 4: Mosaic (4 items, all different)

```css
.bento {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-template-rows: auto auto;
  gap: 16px;
}
.bento-a { grid-column: span 2; grid-row: span 2; }
.bento-b { grid-column: span 2; }
.bento-c { grid-column: span 1; }
.bento-d { grid-column: span 1; }
```

```
┌──────────────────┐ ┌──────────────────┐
│                  │ │        B         │
│   A (2x2)        │ ├────────┐┌────────┤
│                  │ │   C    ││   D    │
│                  │ │        ││        │
└──────────────────┘ └────────┘└────────┘
```

- A: large focal card (2 cols, 2 rows) — hero feature with embedded visual
- B: wide secondary card (2 cols, 1 row)
- C, D: small supporting cards (1 col each)
- Best for: feature overview where one feature dominates

### Pattern 5: Feature Spotlight (1 banner + 3 below)

```css
.bento { display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px; }
.bento-banner { grid-column: span 3; min-height: 240px; }
```

```
┌──────────────────────────────┐
│       A (span 3, banner)     │
└──────────────────────────────┘
┌────────┐ ┌────────┐ ┌────────┐
│   B    │ │   C    │ │   D    │
└────────┘ └────────┘ └────────┘
```

- A: full-width card with embedded dashboard, screenshot, or visual
- B, C, D: equal supporting cards below
- Best for: product demo + supporting features

## Card Content Guidelines

Large/wide cards should contain embedded visuals:
- Dashboard mockup with stats, charts, or table rows
- Code snippet with syntax highlighting
- App screen mockup with realistic data
- Data visualization (bar chart, progress rings)
- Before/after comparison

Small cards should contain:
- Icon (outlined, 20-24px) + title + 1-2 line description
- Or a single stat number + label

Never leave large cards as empty gradient rectangles. The size demands content.

## Anti-Patterns

- Equal-column grid labeled `.bento-grid` — if no card spans, it's not a bento
- All cards same height with no visual hierarchy
- Large cards with only text and no embedded visual
- More than 6 items — bento loses clarity beyond 6, switch to card grid
- Bento on mobile — collapse to single column, maintain card order by importance
