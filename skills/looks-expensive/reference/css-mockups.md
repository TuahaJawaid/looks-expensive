# CSS Mockup Patterns

When a section needs a visual but you don't have real images, build a product-relevant CSS mockup instead of an empty gradient rectangle. These patterns render cleanly in HTML/CSS and communicate the product's interface.

## When to Use

| Situation | Use a CSS mockup | Use typography instead |
|-----------|-----------------|----------------------|
| SaaS / software product | Dashboard, app screen, code block | — |
| Developer tool | Terminal output, API response, code snippet | — |
| Analytics / data product | Chart, funnel, table with data | — |
| Physical product (food, fashion, hardware) | — | Large numbers, specs, editorial layout |
| Service business (agency, consulting) | — | Client logos, case study stats, timeline |
| Hospitality / real estate | — | Pricing, details grid, booking widget shell |

## 8 Mockup Patterns

### 1. Dashboard Card

A miniature product dashboard with stat cards, a simple chart, and table rows.

```
┌─────────────────────────────────────┐
│  Dashboard Title           [Tab][Tab]│
│                                     │
│  ┌─────────┐ ┌─────────┐ ┌────────┐│
│  │  12.4K  │ │   68%   │ │  3.2m  ││
│  │ Active  │ │Retention│ │Avg Sess││
│  └─────────┘ └─────────┘ └────────┘│
│                                     │
│  ██████████████████░░░░░░░  72%     │
│  ███████████████░░░░░░░░░░  58%     │
│  ██████████░░░░░░░░░░░░░░░  41%     │
│                                     │
└─────────────────────────────────────┘
```

Build with: flexbox/grid layout, background-color bars for chart, small font stat cards. NO browser chrome dots.

### 2. App Screen (Phone)

A phone frame with a miniature app interface inside.

```
┌──────────────────┐
│    ─────────     │  ← notch bar (thin line, not literal notch)
│                  │
│  ┌──────────────┐│
│  │  Card Title  ││
│  │  Subtitle    ││
│  └──────────────┘│
│  ┌──────────────┐│
│  │  List Item 1 ││
│  │  List Item 2 ││
│  │  List Item 3 ││
│  └──────────────┘│
│                  │
│   [  Action  ]   │
│                  │
│  ─── ● ─── ○ ── │  ← bottom nav dots
└──────────────────┘
```

Build with: a container with `border-radius: 36px`, dark border, white inner screen, miniature UI components inside. Keep inner UI simple — 2-3 elements max.

### 3. Code Block

Syntax-highlighted code with realistic content.

```
┌─────────────────────────────────────┐
│                                     │
│  const response = await client      │
│    .payments                        │
│    .create({                        │
│      amount: 2500,                  │
│      currency: 'usd',              │
│      source: token.id              │
│    });                              │
│                                     │
└─────────────────────────────────────┘
```

Build with: dark background (#1a1a2e or brand dark), monospace font, colored spans for syntax highlighting (strings in green, keywords in blue/purple, numbers in orange). NO red/yellow/green browser chrome dots. Use a subtle top padding or a thin colored line at the top instead.

### 4. Data Table

A miniature table with realistic rows and status badges.

```
┌─────────────────────────────────────┐
│  Name          Status      Amount   │
│  ───────────────────────────────── │
│  Order #4291   ● Complete  $2,450  │
│  Order #4290   ○ Pending   $1,830  │
│  Order #4289   ● Complete  $3,120  │
│  Order #4288   ● Complete  $940    │
└─────────────────────────────────────┘
```

Build with: a simple table or grid layout, alternating row backgrounds, colored dots for status indicators, right-aligned numbers.

### 5. Conversion Funnel

Progressively narrowing bars showing conversion steps.

```
┌─────────────────────────────────────┐
│  Visitors       ████████████  12,847│
│  Signups        █████████░░░   9,250│
│  Activated      ██████░░░░░░   6,167│
│  Subscribed     ████░░░░░░░░   3,983│
│  Retained       ███░░░░░░░░░   2,312│
└─────────────────────────────────────┘
```

Build with: horizontal bars using percentage widths, labels on left, numbers on right. Each bar narrower than the one above. Use accent color with decreasing opacity or a gradient.

### 6. Notification Stack

Layered notification cards showing product activity.

```
  ┌────────────────────────────┐
  │ ● New order from Austin    │
  │   $2,450 · 2 min ago      │
  └────────────────────────────┘
    ┌────────────────────────────┐
    │ ✓ Payment processed       │
    │   Invoice #4291 · 5m ago  │
    └────────────────────────────┘
      ┌────────────────────────────┐
      │ ↑ Revenue milestone        │
      │   $100K MRR · 1 hr ago    │
      └────────────────────────────┘
```

Build with: stacked cards with increasing `translate` offsets and decreasing opacity. Each card has an icon dot, title, and metadata line.

### 7. Comparison Split

Before/after or product vs. competitor side by side.

```
┌────────────────┐ ┌────────────────┐
│   Before       │ │   After        │
│                │ │                │
│  ✗ Manual      │ │  ✓ Automated   │
│  ✗ 3 days      │ │  ✓ 3 minutes   │
│  ✗ Error-prone │ │  ✓ 99.9%       │
│                │ │                │
│   $12,000/mo   │ │   $199/mo      │
└────────────────┘ └────────────────┘
```

Build with: two cards side by side, left muted/gray, right with accent highlighting. Checkmarks and crosses for feature comparison.

### 8. Booking/Form Widget

A structured input area showing the product's primary interaction.

```
┌─────────────────────────────────────┐
│  Check In          Check Out        │
│  ┌──────────┐     ┌──────────┐     │
│  │ May 28   │     │ Jun 2    │     │
│  └──────────┘     └──────────┘     │
│                                     │
│  Guests                             │
│  ┌──────────────────────────┐      │
│  │ 2 Adults, 1 Child       │      │
│  └──────────────────────────┘      │
│                                     │
│        [ Check Availability ]       │
└─────────────────────────────────────┘
```

Build with: a card container, labeled input-style boxes (just styled divs with border), and a CTA button at the bottom. Good for hospitality, real estate, scheduling products.

## Rules

1. **NO browser chrome dots.** No red/yellow/green circles at the top of any mockup. This is the #1 AI design tell. Use a subtle border, thin accent line, or nothing.
2. **Use realistic data.** Real-looking names, numbers, dates. Not "Lorem ipsum" or "John Doe."
3. **Keep it simple.** A mockup should have 3-5 elements max. It's a suggestion of the product, not a full recreation.
4. **Match the design system.** Use the project's border-radius tokens, accent color, and spacing scale.
5. **Large bento cards and hero visuals should always contain a mockup** — not an empty gradient rectangle. If you can't build a relevant mockup, the card should be smaller.
