# Bento Grid Patterns

A bento grid has cards of DIFFERENT sizes. If all cards are the same size, it's a regular grid — not a bento. Don't use the class name `.bento-grid` on equal-column layouts.

## Rules (Read First)

1. Every bento grid MUST have at least one card spanning BOTH columns AND rows (`grid-column: span 2` AND `grid-row: span 2`). Spanning only one axis creates sizing problems.
2. Use `grid-auto-rows: 1fr` on desktop. NEVER `grid-template-rows: auto auto` — that creates uneven row heights.
3. Use `span` syntax. NEVER explicit grid line numbers (`grid-column: 1 / 3`).
4. ALWAYS include three responsive breakpoints: desktop (3-col), tablet (2-col), mobile (1-col).
5. Card count must fill the grid. No orphaned empty cells. Use the card count guide below.
6. Large cards MUST contain an embedded CSS mockup. Small cards get icon + title + description.
7. NEVER use `min-height` on bento cards. Let `grid-auto-rows: 1fr` handle sizing.

## Card Count Guide

| Cards | Grid columns | Large card | Layout |
|-------|-------------|------------|--------|
| 4 | 3 | span 2 cols + span 2 rows | 1 large (2x2) + 2 small stacked + 1 small below large |
| 5 | 3 | span 2 cols + span 2 rows | 1 large (2x2) + 2 small stacked right + 2 small in row 3 (one under large, one under stack) |
| 4 | 3 | span 3 (full-width banner) + 3 below | 1 banner + 3 equal |

If you have exactly 3 features, use Pattern 1 below. If you have 4, use Pattern 2 or 4. If you have 5+, use Pattern 3.

NEVER put a number of cards that leaves empty grid cells. If your span-2 card takes columns 1-2 and you have 2 small cards in column 3, that's 4 items filling a 3x2 grid perfectly. But 3 items in a 3-column grid with one spanning 2 — that leaves column 3 row 2 empty. Don't do this.

## Pattern 1: Standard Bento (1 large + 2 small) — 3 items

The most common bento. One featured card with an embedded mockup, two supporting cards.

**Copy this CSS exactly:**

```css
.bento {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-auto-rows: 1fr;
    gap: 20px;
}

.bento-card {
    background: var(--card-bg, #fff);
    border: 1px solid rgba(0,0,0,0.06);
    border-radius: 16px;
    padding: 32px;
}

.bento-large {
    grid-column: span 2;
    grid-row: span 2;
    padding: 40px;
}

@media (max-width: 1024px) {
    .bento {
        grid-template-columns: 1fr 1fr;
    }
    .bento-large {
        grid-column: 1 / -1;
        grid-row: span 1;
    }
}

@media (max-width: 768px) {
    .bento {
        grid-template-columns: 1fr;
        grid-auto-rows: auto;
    }
    .bento-large {
        grid-column: span 1;
        grid-row: span 1;
    }
}
```

**HTML structure:**
```html
<div class="bento">
    <div class="bento-card bento-large">
        <!-- Icon + title + description + EMBEDDED MOCKUP -->
    </div>
    <div class="bento-card">
        <!-- Icon + title + description -->
    </div>
    <div class="bento-card">
        <!-- Icon + title + description -->
    </div>
</div>
```

```
Desktop (3 cols):
┌──────────────────┐ ┌────────┐
│                  │ │   B    │
│   A (2col×2row)  │ ├────────┤
│   with mockup    │ │   C    │
└──────────────────┘ └────────┘

Tablet (2 cols):
┌──────────────────────────────┐
│   A (full width, 1 row)      │
└──────────────────────────────┘
┌──────────────┐ ┌──────────────┐
│      B       │ │      C       │
└──────────────┘ └──────────────┘

Mobile (1 col):
┌──────────────────────────────┐
│   A                          │
├──────────────────────────────┤
│   B                          │
├──────────────────────────────┤
│   C                          │
└──────────────────────────────┘
```

## Pattern 2: Full Bento (1 large + 3 small) — 4 items

4 cards fill a 3-column, 2-row grid perfectly.

**Copy this CSS exactly:**

```css
.bento {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-auto-rows: 1fr;
    gap: 20px;
}

.bento-large {
    grid-column: span 2;
    grid-row: span 2;
}

/* No other spanning needed — auto-placement fills the remaining cells */

@media (max-width: 1024px) {
    .bento { grid-template-columns: 1fr 1fr; }
    .bento-large { grid-column: 1 / -1; grid-row: span 1; }
}

@media (max-width: 768px) {
    .bento { grid-template-columns: 1fr; grid-auto-rows: auto; }
    .bento-large { grid-column: span 1; grid-row: span 1; }
}
```

```
Desktop:
┌──────────────────┐ ┌────────┐
│                  │ │   B    │
│   A (2col×2row)  │ ├────────┤
│                  │ │   C    │
├──────────────────┘ └────────┘
      ← D fills the gap below A →
     (but this only works if D spans 2 cols or you have a 4th small card)
```

**IMPORTANT:** With 4 items (1 large + 3 small), the layout is:
- A takes columns 1-2, rows 1-2
- B takes column 3, row 1
- C takes column 3, row 2
- D takes column 1, row 3 — BUT this creates an orphaned row

**The fix for 4 items:** Use 5 items instead (add one more small card), OR use the Banner pattern (Pattern 4 below) which avoids this problem entirely.

Alternatively, make D span 3 columns as a full-width card at the bottom:
```css
.bento-full { grid-column: 1 / -1; }
```

## Pattern 3: Asymmetric (1 large + 4 small) — 5 items

5 items fill the grid cleanly: large takes 2x2, two smalls stack beside it, two more fill the bottom row.

**Copy this CSS exactly:**

```css
.bento {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-auto-rows: 1fr;
    gap: 20px;
}

.bento-large {
    grid-column: span 2;
    grid-row: span 2;
}

@media (max-width: 1024px) {
    .bento { grid-template-columns: 1fr 1fr; }
    .bento-large { grid-column: 1 / -1; grid-row: span 1; }
}

@media (max-width: 768px) {
    .bento { grid-template-columns: 1fr; grid-auto-rows: auto; }
    .bento-large { grid-column: span 1; }
}
```

```
Desktop (3 cols, perfectly filled):
┌──────────────────┐ ┌────────┐
│                  │ │   B    │
│   A (2col×2row)  │ ├────────┤
│                  │ │   C    │
├────────┬─────────┘ └────────┘
│   D    │    E    │  ← auto-placed
└────────┴─────────┘

Wait — this leaves column 3 row 3 empty.
```

**The correct 5-item layout** puts 3 small cards in the right column + bottom row:
- A: columns 1-2, rows 1-2 (2x2)
- B: column 3, row 1
- C: column 3, row 2
- D: column 1, row 3
- E: column 2-3, row 3 (span 2)

```css
.bento-card:last-child { grid-column: span 2; } /* E spans 2 to fill bottom */
```

OR use the simpler approach — 1 large + 2 small on the right, then a full-width card below:

```html
<div class="bento">
    <div class="bento-card bento-large">A (big mockup)</div>
    <div class="bento-card">B</div>
    <div class="bento-card">C</div>
    <div class="bento-card bento-full">D (full-width summary)</div>
</div>
```

## Pattern 4: Banner + Grid (1 full-width + 3 equal) — 4 items

Avoids all spanning complexity. One full-width card at the top, three equal cards below.

**Copy this CSS exactly:**

```css
.bento {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.bento-banner {
    grid-column: 1 / -1;
}

@media (max-width: 768px) {
    .bento { grid-template-columns: 1fr; }
    .bento-banner { grid-column: span 1; }
}
```

```
┌──────────────────────────────┐
│       A (full width banner)  │
│       with embedded mockup   │
└──────────────────────────────┘
┌────────┐ ┌────────┐ ┌────────┐
│   B    │ │   C    │ │   D    │
└────────┘ └────────┘ └────────┘
```

This is the safest bento pattern. No row-span complexity, no orphaned cells, works at every breakpoint.

## What Goes INSIDE the Large Card

The large card has 2-4x the area of a small card. It MUST be filled with an embedded visual, not just text.

Good content for large cards:
- Dashboard mockup: 3 stat cards + bar chart + table rows (see reference/css-mockups.md)
- Code editor: syntax-highlighted code with tabs (NO browser chrome dots)
- Data table: 4-5 rows with status badges and numbers
- Comparison: before/after or product vs. competitor side-by-side
- Funnel: conversion steps with progressively narrower bars

Bad content for large cards:
- Just a heading + paragraph (too much whitespace)
- A gradient rectangle (lazy)
- The same icon + title + description as small cards but bigger

## Anti-Patterns

- `grid-template-rows: auto auto` — creates uneven row heights. Use `grid-auto-rows: 1fr`.
- `grid-column: span 2` without `grid-row: span 2` — card is wide but flat. Always span both.
- `grid-column: 1 / 3` — fragile. Use `span 2` instead.
- `min-height` on bento cards — creates empty space. Let the grid handle sizing.
- Orphaned grid cells — empty space where no card exists. Check your card count.
- Missing tablet breakpoint — always include 1024px (2-col) AND 768px (1-col).
- Inline `style="grid-column: span 1"` overrides — if you're fighting the grid with inline styles, the grid definition is wrong.
