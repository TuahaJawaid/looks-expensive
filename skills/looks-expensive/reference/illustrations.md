# Illustration System

## The Medium Rule (READ THIS FIRST)

When building with static HTML/CSS/Tailwind (no image assets, no design tool exports), you are constrained to what the browser can render from code. This changes everything about illustration choices.

**What HTML/CSS renders well:**
- Typography-driven layouts (large numbers, pull quotes, editorial text treatments)
- Abstract geometric shapes (circles, lines, grids, dots, dividers)
- Simple data visualization (progress bars, meters, percentage rings, bar charts)
- UI component mockups (cards, forms, inputs, buttons, nav bars, notifications, chat bubbles)
- Color blocks, background shading, subtle gradients
- Icon-based compositions using SVG icon libraries
- Tables, comparison grids, feature matrices
- Simple diagrams (flowcharts with boxes and arrows, step connectors)

**What HTML/CSS renders BADLY (never attempt these):**
- Physical products (bottles, packaging, devices, clothing, food, furniture)
- Landscapes, nature scenes, architecture, or any real-world environment
- Human figures, faces, hands, or body parts
- Realistic objects of any kind (cameras, tools, vehicles, buildings)
- Complex artistic SVG illustrations attempting realism
- Product photography replacements
- 3D-looking objects with shading, highlights, and perspective

**When the product is physical (food, consumer goods, hardware, fashion):**
Do NOT attempt to illustrate the product. Instead:
1. Use a styled placeholder: a rounded rectangle with the product name, key details, and brand colors. Label it as a product image area. This is honest and looks intentional.
2. Lean HARDER on typography: let the words sell. Large tasting notes, big price numbers, editorial pull quotes, generous spacing.
3. Use abstract representations: a color palette swatch for flavor, a simple ring chart for intensity, a minimal timeline for process steps. Represent concepts, not objects.
4. Use the accent color and spatial rhythm to create visual richness without literal illustration.

The Tempo rule: if you can't make it look better than no illustration at all, don't make it.

## When to Use Visuals vs. When to Use Typography

| Product type | Visual approach | What to skip |
|-------------|----------------|-------------|
| SaaS / software tool | UI mockups, dashboard cards, notification previews | Physical objects |
| Developer tool | Code snippets, terminal output, API response blocks | Landscapes, devices |
| Consumer app | App screen mockups, simple UI flows | Physical packaging |
| Physical product (food, goods) | Abstract color/flavor representations, editorial typography, data points | Product renders, bottles, packaging |
| Service business (agency, studio) | Minimal geometric accents, typography-heavy | Stock imagery, office scenes |
| Marketplace / e-commerce | Category cards, price displays, rating components | Product photography |

## 8 Types (Use Only What the Medium Supports)

### 1. Product UI Mockups
Realistic product interfaces built in HTML.
- Cards, forms, dashboards, notifications, chat interfaces, email previews
- These are NATIVE to HTML and render perfectly
- Use real-looking data (names, numbers, dates), not Lorem ipsum
- Integration: floating within bento grids, in hero sections, beside feature descriptions
- When to use: SaaS, developer tools, any digital product with a visual interface

### 2. Code Snippet Blocks
Beautified code presentations.
- Syntax-highlighted code with brand-matched colors
- Dark background, clean container, subtle border
- **NO red/yellow/green browser chrome dots. EVER. No exceptions.** Use a thin accent-colored line at the top of the block, or just padding. Browser chrome dots are the #1 AI design tell.
- When to use: developer tools, API products, infrastructure

### 3. Data Visualization
Charts, meters, and metrics built with HTML/CSS.
- Progress bars, percentage rings (CSS conic-gradient), simple bar charts
- Stat cards with large numbers
- Flavor/intensity scales (horizontal bars with labels)
- When to use: analytics, monitoring, finance, or to represent any quantifiable concept abstractly

### 4. Abstract Geometric Accents
Simple shapes that create visual interest without representing anything literal.
- Circles, dots, lines, grids derived from the brand's color palette
- Used SPARINGLY as background accents, section dividers, or card decorations
- Never the primary content of a section. Always supporting typography.
- When to use: when the page feels text-heavy and needs visual breathing room

### 5. Component Compositions
Arrange real UI components to tell a story.
- A notification card + a chat bubble + a status badge composed together to show a workflow
- Multiple small UI elements arranged in a bento or staggered layout
- Each component is a real HTML element, not an illustration OF one
- When to use: showing how a product works through its actual interface pieces

### 6. Editorial Typography Treatments
When you can't illustrate, make the text the visual.
- Oversized pull quotes with accent color
- Large data points (numbers, percentages, measurements) as visual anchors
- Tasting notes, specs, or features displayed as a designed typographic composition
- Definition-list layouts with term/value pairs given visual weight
- When to use: physical products, luxury goods, food, wine, anything where the story is the sell

### 7. Simple Diagrams
Flowcharts, step connectors, and process visualizations.
- Boxes connected by lines or arrows
- Numbered steps with connecting vertical/horizontal rules
- Before/after with an arrow or divider between
- Keep to basic shapes: rectangles, circles, lines
- When to use: process explanations, how-it-works sections, workflow visualization

### 8. Placeholder Image Areas
Honest, styled containers for content that requires real photography or design assets.
- Rounded rectangle matching the border-radius system
- Brand background color (muted accent at 8-12% opacity, or paper-2 tier)
- Centered label: product name, dimensions, or content description
- Looks intentional, not broken
- When to use: anywhere you'd need a photo but don't have one. Better than a bad SVG.

## Rules

1. **The Tempo rule: if you can't make it look better than no illustration at all, don't make it.** An empty section with great typography beats a section with a bad SVG illustration.
2. Every visual must be something HTML/CSS renders well. Before creating any SVG or complex visual, ask: "Would this look professional, or would it look like a child drew it in code?" If the latter, use typography instead.
3. NEVER attempt to render physical products (bottles, packaging, food, devices, clothing) in HTML/CSS/SVG. Use a placeholder or editorial typography treatment instead.
4. NEVER attempt landscapes, nature scenes, buildings, or environmental illustrations.
5. NEVER attempt human figures, faces, or hands.
6. **NO fake browser chrome (red/yellow/green dots). EVER. No exceptions.** Not on code blocks, dashboards, mockups, or anything else. Use a thin accent line or border instead. This is the #1 AI design tell.
7. For rich section visuals, use patterns from `reference/css-mockups.md` — dashboards, app screens, data tables, funnels, comparison splits. These render cleanly and communicate the product.
8. NO monospace in illustrations unless displaying actual code.
9. Illustrations use the brand accent color. Part of the design system.
10. On dark sections, adapt (lighter strokes, on-dark accent).
11. Mobile: simplify or remove. Never hide content, but visual accents can be reduced.
12. When in doubt, leave it out. Typography and spacing create more visual richness than a forced illustration.
