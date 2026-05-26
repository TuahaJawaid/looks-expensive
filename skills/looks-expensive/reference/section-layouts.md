# Section Layout Patterns

15 patterns. Use at least 3 per page. Never the same pattern twice in a row.

## 1. Bento Grid
Mixed-size modular cards. Large hero card (3-4 cols x 2 rows) beside smaller cards.
- Grid: 6-8 column base, varied spans
- Gap: 16-24px
- Best for: features, capabilities, integrations
- Why it works: eye follows visual weight, not monotonous scanning

## 2. Asymmetric Split (Large Left + Stacked Right)
One large element (55-65%) beside 2-3 stacked smaller elements (35-45%).
- Grid: `grid-cols-12` with `col-span-7` + `col-span-5`
- Best for: feature highlights, product demos, case studies
- Why it works: creates focal point with supporting detail

## 3. Zigzag Alternating
Image/text pairs alternating sides. Row 1: image left, text right. Row 2: reversed.
- Grid: 2-column, alternating `flex-direction: row-reverse`
- Gap: 48-80px between rows
- Best for: how it works, process, feature walkthroughs
- Why it works: creates reading rhythm, keeps engagement through direction changes

## 4. Full-Width Feature Spotlight
Single feature fills the entire section width. Large visual + supporting text.
- Grid: single column, content 70-90% viewport
- Best for: key feature announcements, hero products, before/after
- Why it works: commands attention through scale

## 5. Numbered Timeline (Vertical)
Steps connected by a vertical line with numbers.
- Grid: single column with left-aligned number rail
- Connecting line: 1px, accent or muted color
- Best for: process flows, getting started, onboarding
- Why it works: clear sequence, directional, scannable

## 6. Numbered Timeline (Horizontal)
Steps laid out horizontally with connecting line.
- Grid: equal-width columns (3-5) with line connecting them
- Best for: 3-5 step processes on desktop
- Collapses to vertical on mobile
- Why it works: fits naturally in the reading flow

## 7. Compact Stat Strip
Single horizontal row of 4-6 key metrics.
- Grid: flex or grid, equal columns, 16-24px gap
- Large number (28-40px) + small label below (12px)
- Subtle dividers between items
- Best for: social proof, achievements, key numbers
- Why it works: numbers grab attention, dense info in small space

## 8. Editorial Two-Column
Main content (60-70%) with sidebar or pull quotes (30-40%).
- Grid: `grid-cols-12` with `col-span-8` + `col-span-4`
- Best for: case studies, long-form features, testimonial highlights
- Why it works: magazine-like sophistication

## 9. Card Grid (2x3 or 3x2)
Equal-sized cards in a clean grid. The standard, done well.
- Grid: `grid-cols-2 lg:grid-cols-3` with consistent gap
- Card: icon/illustration + title + one-line description
- Best for: features list, integrations, team members
- Important: only use if cards genuinely need equal weight. If one feature is more important, use bento or asymmetric instead.

## 10. Horizontal Scroll Strip
Cards overflow horizontally, inviting scroll/swipe.
- Container: `overflow-x: auto` with snap points
- Items: fixed width (280-320px), 16-24px gap
- Show 3.5 items on desktop (hint to scroll)
- Best for: testimonials, logos, featured content, integrations
- Why it works: partial visibility hints at more content

## 11. Overlapping Card Stack
3-5 cards stacked with offset, creating depth.
- Cards: `translate(Y: -20px)` or `margin-top: -40px` per card
- Slight rotation: 2-5 degrees
- Hover: selected card rises (z-index), others fade
- Best for: testimonials, visual highlights, interactive showcases
- Why it works: 3D depth without 3D rendering

## 12. Tab Content Switcher
Horizontal tabs above, content swaps below.
- Tabs: equal or content-width, centered or left-aligned
- Active: bold underline or filled background
- Content: single pane that transitions on tab click
- Best for: pricing tiers, feature categories, use case breakdowns
- Why it works: dense information without long scroll

## 13. Comparison Table
Clean table with feature rows and plan columns.
- Grid: 3-4 columns (feature name + 2-3 plans)
- Checkmarks for included, dashes for excluded
- Recommended plan highlighted with accent background
- Best for: pricing, competitive comparison, plan selection
- Why it works: enables direct comparison, aids decision-making

## 14. Full-Width Color Block Stripes
Full-bleed horizontal sections alternating background colors.
- Each section: 100vw background, content centered in max-width
- Alternates: light > dark > light > tinted > dark
- Padding: 80-120px vertical
- Best for: multi-section homepages, feature explanations
- Why it works: visual rhythm through background contrast

## 15. List with Side Illustration
Text list (60-70%) beside a fixed or scrolling illustration (30-40%).
- Grid: asymmetric two-column
- Illustration can pin on scroll while text moves
- Best for: feature lists, benefit breakdowns, workflow steps
- Why it works: visual interest without overwhelming the content

## Selection Guide

| Content Type | Best Patterns | Avoid |
|-------------|--------------|-------|
| 3 features | Bento, Asymmetric Split | Card Grid (too generic for 3) |
| 6 features | Bento, Card Grid (2x3) | Stat Strip (too compact for descriptions) |
| How it works (3-4 steps) | Numbered Timeline, Zigzag | Card Grid (loses sequence) |
| Stats/metrics | Stat Strip, Bento | Full-Width Spotlight (overkill) |
| Testimonials | Horizontal Scroll, Overlapping Stack | Card Grid (boring for quotes) |
| Pricing | Tab Switcher, Comparison Table | Bento (confusing for pricing) |
| Single key feature | Full-Width Spotlight | Card Grid (dilutes focus) |
| Process/workflow | Zigzag, Numbered Timeline | Stat Strip (can't show detail) |
