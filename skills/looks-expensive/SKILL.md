---
name: looks-expensive
version: 3.0.0
description: |
  Full-stack design methodology that makes any website look like a $150k agency build.
  Nine gated phases: positioning, research, design contract, screen spec, build,
  subtraction, audit, hardening, handoff. Includes illustration system, animation
  tiers, 12 hero patterns, 15 section layouts, UX writing guide, icon system, and
  37+ anti-pattern rules. One skill, zero external dependencies.
  Trigger on: "design this", "make this look expensive", "looks expensive",
  "full design pass", "design from scratch", "premium design", "redesign this".
user-invocable: true
allowed-tools:
  - Bash
  - Read
  - Write
  - Edit
  - AskUserQuestion
  - WebSearch
  - WebFetch
  - Agent
triggers:
  - looks expensive
  - design this
  - full design pass
  - design from scratch
  - premium design
  - make this look expensive
  - redesign this
---

# Looks Expensive

## The Aesthetic North Star

The target aesthetic is Linear, Eleven Labs, Mercury, Cursor, Vercel, Stripe. NOT editorial magazine. NOT vintage artisanal. NOT warm and cozy.

What these products share:
- All-sans typography. One family. Hierarchy through weight and size.
- White or near-white backgrounds. Not cream. Not paper. White.
- True black or near-black ink. Not warm brown.
- One accent color that pops. Visible on buttons, links, and interactive states.
- Clean, functional, modern. The design disappears into the content.
- No serif display fonts. No editorial treatments. No uppercase letter-spaced eyebrows everywhere.

If the output looks like a magazine or a wine label, it's wrong. It should look like a well-funded startup's real website.

---

Nine phases. Gated. Each phase's output gets user approval before the next begins.

---

## Phase 1: Product Positioning

Before any visual work, establish the taste filter.

### Interview

Ask these questions. Do not proceed until answered:

1. **What is this product?** One sentence.
2. **Who is it for?** Audience, technical level, context of use.
3. **Brand or Product register?**
   - Brand: design IS the product (marketing, portfolios, agency). Distinctiveness, typographic risk.
   - Product: design SERVES the product (dashboards, SaaS, tools). Earned familiarity.
4. **The memorable thing?** One sentence that filters every decision.
5. **What are you NOT?** 3-4 anti-references.
6. **2-3 products whose quality you want to match.**
7. **Emotional temperature?**
   - Cool/Technical: precision, security, dev tools, fintech (cool whites, slate, blue-black)
   - Warm/Earthy: food, wellness, hospitality, agriculture (cream is allowed HERE ONLY)
   - Neutral/Clean: general SaaS, productivity, B2B, agencies, consulting, real estate (pure white, true gray, true black)
   - Bold/High-Contrast: consumer apps, creative tools, marketplaces (pure black + white + one saturated accent)
   - Vibrant/Playful: social, education, community (bright accents on white)
8. **Constraints?** Timeline, team size, existing code.

### Output

Write the positioning brief. Present. STOP. Wait for approval.

---

## Phase 2: Competitive Research

Study the named products plus 7-10 more.

### Methodology

1. Web search each reference: "[product] design", "[product] website". Extract fonts, colors, spacing, borders, shadows, motion timing.
2. Search 3-5 angles per product.
3. Cross-pollination: search 2-3 categories OUTSIDE the obvious one.
4. Extract "expensive vs generic" tells for this surface type.
5. Build Steal/Avoid lists with evidence.

### Output

Research brief: TL;DR, Steal list, Avoid list, cross-pollination findings, ASCII wireframes.
Present. STOP. Wait for approval.

---

## Phase 3: Design Contract (DESIGN.md)

Load reference files: `reference/ux-writing.md`, `reference/border-radius.md`

### Product Context
From Phase 1.

### Aesthetic Direction
Direction label, decoration level, mood sentence, anti-references.

### Font System

**THE DEFAULT IS ONE SANS-SERIF FAMILY. PERIOD.**

Linear uses Inter. Eleven Labs uses a custom sans. Cursor uses a custom sans. Mercury uses a clean grotesk. Vercel uses Geist. Stripe uses a clean sans. None of them pair serif + sans. None of them use a display serif. The default is one sans family for everything.

**Serif is the rare exception.** Serif is ONLY allowed when ALL of these are true:
1. The product is food, beverage, luxury goods, or editorial publishing
2. The user specifically named a serif-using product as a reference
3. Sans alone genuinely cannot carry the brand

If ANY condition isn't met, use all-sans. A real estate firm: sans. An agency: sans. A clinic: sans. A SaaS tool: sans. A marketplace: sans.

**INTER IS BANNED AS THE DEFAULT.** Inter appeared in 8 of 11 test outputs. It is a fine font but using it on every project makes every output identical. You MUST select a different sans-serif for each project. Before choosing, list 5 candidates and pick the best match.

**Font candidates (all sans-serif, search for more):**
- Space Grotesk, Outfit, DM Sans, Instrument Sans, Geist, IBM Plex Sans
- Satoshi, General Sans, Albert Sans, Sora, Plus Jakarta Sans, Switzer
- Cabinet Grotesk, Manrope, Archivo, Bricolage Grotesque
- Rubik, Nunito Sans, Source Sans 3, Libre Franklin

**Selection process:**
1. List 5 sans-serif candidates that match the product's personality
2. Eliminate any font you've used recently
3. Pick the one that best matches while being different from your default
4. One family. Hierarchy through weight (400/500/600/700) and size. Not through mixing families.

**Rules:**
- ONE sans-serif family. Not two. Not serif + sans.
- NO Inter unless explicitly justified in one sentence.
- NO `.serif` class. NO `.h-display` with a different font family.
- NO italics. No `<em>`, `<i>`, `.italic`, `font-style: italic`. Ever.
- NO monospace unless the product displays code/IDs/data AND the user confirmed.

**Required type scale (one family, hierarchy through weight + size):**
```
H1:      [font] [40-72px] / [600-700] / [-0.02 to -0.03em] / [1.05-1.1]
H2:      [font] [32-48px] / [600] / [-0.015 to -0.02em] / [1.1-1.15]
H3:      [font] [24-32px] / [500-600] / [-0.01em] / [1.15-1.2]
H4:      [font] [20-24px] / [500] / [0] / [1.2-1.3]
H5:      [font] [16-18px] / [500] / [0] / [1.3-1.4]
H6:      [font] [14-16px] / [500] / [0] / [1.4-1.5]
Body:    [font] [15-17px] / [400] / [0] / [1.5-1.6]
Small:   [font] [12-14px] / [500] / [0.01em] / [1.3-1.4]
Label:   [font] [11-13px] / [500] / [0.02-0.04em] / [1.3]
```

Labels can be uppercase but don't overuse them. Not every section needs an uppercase label above the heading. Use them sparingly for navigation context, not decoration.

### Color System

**THE DEFAULT IS WHITE BACKGROUND + BLACK TEXT. NOT CREAM + BROWN.**

| Temperature | Ink | Paper | Accent examples |
|-------------|-----|-------|-----------------|
| Cool | `#0f1114` (blue-black) | `#f8f9fa` (cool white) | Blue, teal, violet |
| Warm/Earthy | `#1a1714` (brown-black) | `#f5f2ec` (cream) | Terracotta, olive, amber |
| Neutral | `#111111` (true black) | `#ffffff` (white) | Any single accent |
| Bold | `#0a0a0a` (deep black) | `#ffffff` (white) | One saturated primary |
| Vibrant | `#1a1a1a` (near-black) | `#ffffff` (white) | Bright, saturated |

**Cream (#f5f2ec, #f4f1ec, #f6f2ec, #ebe2c8, #e6dfd0, etc.) is ONLY for Warm/Earthy temperature.** That means ONLY food, beverage, hospitality, wellness, agriculture. Everything else gets white or near-white.

**Brown-tinted ink (#1a1715, #1c1b18, #1b1a17, #1a1614, etc.) is ONLY for Warm/Earthy.** Everything else gets true black (#111) or blue-black (#0f1114).

If the product is NOT food/beverage/hospitality/wellness/agriculture, and you picked cream or brown-tinted ink, you are wrong. Go back and pick white + black.

**Brand accent is mandatory.** Every product has a primary color. It must:
- Pop on CTAs and primary buttons
- Appear on links and interactive states
- Tint at least one section background (at 4-8% opacity)
- Be visible and intentional, not buried in a hover state

Define:
- **Brand accent** (one color, 3-5 shades: base, hover, pressed, strong, on-dark)
- **Surface tiers** (white, off-white `#f8f9fa` or `#fafafa`, and one darker shade for section variation)
- **Dark panels** (near-black `#111` or `#0a0a0a` for inverted sections, + light text colors)
- **Ink/text tiers** (primary `#111`, secondary `#555` or `#666`, tertiary `#888` or `#999`)
- **Hairlines** (rgba opacity at 0.06/0.10/0.16)
- **Semantic** (success/warning/error/info)

**Hard rules:**
- No one-sided colorful strokes
- Borders use hairline opacity or inset shadow
- Elevation through lightness, not heavy shadow
- No gradients unless user asks
- Accent color must be VISIBLE

### Spacing
- Base unit: 4px or 8px
- Scale: 4/8/12/16/24/32/48/64/80/96/120/160
- Macro-whitespace: 64-120px between major sections

### Layout
- Max content width (1280-1440px)
- Grid: columns, gutters, responsive
- Text measure: 65-75ch max

### Border Radius
Load `reference/border-radius.md`. Use the 4-32 system:
```
xs:   4px   (inputs, small pills)
sm:   8px   (cards, buttons)
md:   12px  (modals, larger cards)
lg:   16px  (feature cards, hero elements)
xl:   24px  (hero cards, major containers)
2xl:  32px  (full-bleed containers)
pill: 9999px (pill buttons, tags)
```

### Icon System
Outlined icons only. Stroke weight 0.8-1px. Nothing heavier. Consistent sizing (16/20/24px tiers). One icon family per project.

### Motion
- Custom cubic-bezier only. Never `linear` or default `ease-in-out`.
- Hover: 150-200ms. Reveal: 400-600ms. Entrance: 600-800ms.
- GPU-safe: transform and opacity only.
- `prefers-reduced-motion` respected always.

### Section Rhythm
Load `reference/section-layouts.md`. Define per-section:
- Background treatment (white, off-white, tinted, dark)
- Layout pattern (from 15 options, never same pattern twice in a row)
- Density (spacious vs compact)

Rules:
- Never 2+ consecutive sections with same background
- At least one dark-inverted section per page
- At least 3 different layout patterns per page

### UX Writing
Load `reference/ux-writing.md`. All copy follows:
- Headline: 6-10 words / 60 chars max
- Subhead: 15-25 words / 120 chars max
- CTA: 2-5 words / 30 chars max
- Feature description: one sentence / 15-20 words max
- No banned words
- No section numbers ("01.", "Section 1"). Labels only when they add navigation context.
- No dates unless content is date-specific.

### Decisions Log
```
| Date | Decision | Rationale |
|------|----------|-----------|
```

### Output
Write complete DESIGN.md. Present. STOP. Wait for approval.

---

## Phase 4: Screen Specification

Load reference files: `reference/hero-patterns.md`, `reference/section-layouts.md`, `reference/illustrations.md`

### Per-Screen Spec

1. **Route and purpose.**

2. **Hero pattern selection.** From 12 patterns in reference/hero-patterns.md.

3. **Full-page section map.** Every section: name, layout pattern, background, content summary, illustration type (if applicable). ENTIRE page mapped before implementation.

4. **Illustration plan.** For each section, decide: visual or typography-driven?
   - Check reference/illustrations.md medium rule FIRST.
   - NEVER render physical products in HTML/CSS.
   - For digital products: UI mockups work. For physical products: typography treatments.
   - If a section works without illustration, mark it "typography-driven."

5. **ASCII wireframe** of complete page.

6. **Cognitive load check:** Nav 5 or fewer, forms 4 or fewer fields, 1 primary + max 2 secondary buttons.

7. **Interaction state inventory:** All 8 states for every interactive element.

8. **Responsive spec** at 320/640/768/1024/1280/1536.

9. **Animation plan.** Load `reference/animations.md`. Essential tier required, Elevated/Advanced as stretch.

### Output
Write the spec. Present. STOP. Wait for approval.

---

## Phase 5: Implementation

Load reference files: `reference/animations.md`, `reference/icon-system.md`, `reference/anti-patterns.md`

### Build Rules

**Color must be visible.** Accent on CTAs, links, hover states, at least one tinted section.

**Sections must look different.** Different background, layout, density, or type scale. At least 2 dimensions different between adjacent sections.

**Illustrations must respect the medium.** Follow `reference/illustrations.md`. NEVER render physical products, landscapes, or realistic objects in SVG/CSS. Typography beats bad illustration.

**Animations are required.** Essential tier minimum: button hover lift, scroll entrance, staggered reveals, counter animation, smooth state transitions.

**No editorial patterns as defaults.** Specifically:
- No `.serif` class unless serif was explicitly earned in Phase 3
- No uppercase letter-spaced eyebrows on every section. Use sparingly.
- No `.h-display` with a font different from body
- No warm CSS variable naming (`--paper`, `--night`, `--night-copy`). Use neutral names (`--bg`, `--bg-2`, `--text`, `--text-2`, `--accent`).
- No editorial pull quote styling unless the product is editorial

### Pre-Output Checklist

Before presenting ANY screen:
- [ ] **SERIF CHECK:** Is there a `.serif` class or a second font family? If yes and serif wasn't earned in Phase 3, REMOVE IT. Use the single sans family for everything.
- [ ] **INTER CHECK:** Is the font Inter? If yes and it wasn't explicitly justified, CHANGE IT.
- [ ] **CREAM CHECK:** Is the background cream/warm-tinted (#f5f2ec, #f4f1ec, etc.)? If the product is NOT food/beverage/hospitality, CHANGE TO WHITE.
- [ ] **BROWN INK CHECK:** Is the ink warm brown (#1a1715, #1c1b18, etc.)? If the product is NOT food/beverage/hospitality, CHANGE TO TRUE BLACK.
- [ ] **ITALIC CHECK:** Grep for `<em>`, `<i>`, `.italic`, `font-style: italic`. If found, REMOVE.
- [ ] **MONO CHECK:** Grep for `monospace`, `mono`, `<code>`, `<pre>`. Remove unless product needs it.
- [ ] **GRADIENT CHECK:** Grep for `gradient`. Remove unless user requested.
- [ ] **SECTION NUMBER CHECK:** Grep for "Section", "01.", "02.", "---". Remove.
- [ ] **BROWSER CHROME CHECK:** Grep for mock window buttons. Remove unless showing real product UI.
- [ ] **ILLUSTRATION QUALITY CHECK:** Review every SVG. If it looks amateur, remove and use typography.
- [ ] **EYEBROW SPAM CHECK:** Are uppercase letter-spaced labels on every section? If more than 3 sections have them, remove the excess. They're for navigation context, not decoration.
- [ ] Font: one sans family, hierarchy through weight + size
- [ ] Color tokens used everywhere
- [ ] Accent color VISIBLE on CTAs, links, at least one tinted section
- [ ] Spacing follows scale
- [ ] Border radius uses 4-32 system
- [ ] All transitions use custom cubic-bezier
- [ ] At least 3 different section layout patterns
- [ ] No 2 consecutive sections with same background
- [ ] At least one dark-inverted section
- [ ] Essential animations implemented
- [ ] Icon stroke weight 0.8-1px, one family
- [ ] Responsive at all 6 breakpoints
- [ ] Touch targets 44px minimum
- [ ] **DOES THIS LOOK LIKE LINEAR/VERCEL/STRIPE? Or does it look like a magazine?** If magazine, you went editorial. Fix it.

### Output
Present. STOP. Wait for approval.

---

## Phase 6: Subtraction Pass

### Earn Your Pixel
Strip on sight:
- Fake metadata, doc IDs, version numbers
- Decorative timestamps, ETAs
- Redundant labels above clear data
- Section numbers used as decoration
- Decorative footers and slogans
- Full prose where fragments work
- Any italic text
- Any monospace not displaying code/data
- Any gradient not requested
- Fake browser chrome
- Template duplication (identical layouts across sections)
- Excessive uppercase eyebrows (keep max 2-3 per page)

### AI Slop Detection (37 patterns from reference/anti-patterns.md)
Load `reference/anti-patterns.md`. Check all patterns. Flag with confidence tier.

### UX Writing Audit
Load `reference/ux-writing.md`. Check banned words, char limits, generic CTAs.

### Output
List flags. Present. STOP. Wait for approval.

---

## Phase 7: Audit and Grade

### Responsive Verification
Check at 375px, 768px, 1024px, 1280px, 1536px.

### Accessibility Review (WCAG AA, non-negotiable)
| Check | Requirement |
|-------|-------------|
| Body text contrast | 4.5:1 |
| Large text contrast | 3:1 |
| UI components | 3:1 |
| Focus indicators | `:focus-visible`, 2-3px ring, 3:1+ contrast |
| Touch targets | 44px min |
| Keyboard nav | Tab + Enter/Space on everything |
| Skip link | Present, hidden until focused |
| Heading hierarchy | No skipped levels |
| Alt text | All informational images |
| Form labels | Visible, never placeholder-only |
| Color independence | No info by color alone |
| Motion | `prefers-reduced-motion` respected |
| Screen reader order | DOM = visual order |

Cannot score above B with critical accessibility failures.

### Scoring (6 categories, weighted)
| Category | Weight |
|----------|--------|
| Visual Design | 20% |
| Interaction & Animation | 20% |
| Responsive | 15% |
| Accessibility | 15% |
| Performance & Polish | 15% |
| Content & UX Writing | 15% |

Letter grades: A (90-100), B (80-89), C (70-79), D (60-69), F (0-59).

### Output
Audit report with scores, findings, priority fixes. Present. STOP. Wait for approval.

---

## Phase 8: Hardening

- Text overflow handling on every element
- i18n: 30-40% space budget, logical properties for RTL
- Error states: 400/401/403/404/429/500 each with specific UX
- Empty states: copy, not illustrations
- Loading states: skeleton or spinner, never blank
- Focus management: `:focus-visible`, trapped in modals, returned on close
- `prefers-reduced-motion`: all animations suppressible
- Core function works without JS

### Output
List fixes. Present. STOP. Wait for approval.

---

## Phase 9: Handoff

- Design system summary (font, colors, spacing, radius, motion, icons)
- Route-to-component map with parity status
- Decisions log
- Known open items
- What's working (don't touch)
- Grep entry points

### Output
Write handoff. Done.

---

## Design Laws (Always Active)

### The North Star
The output should look like Linear, Vercel, Stripe, Mercury, Eleven Labs, or Cursor built it. Not like a magazine. Not like a wine label. Not like an editorial spread. Clean, modern, functional, premium.

### Aesthetic
- Monochrome + one visible accent color.
- White or near-white backgrounds by default. Cream ONLY for food/bev/hospitality.
- True black or near-black ink by default. Brown ONLY for food/bev/hospitality.
- Hairline borders only.
- Elevation through lightness, not heavy shadow.
- 64-120px between major sections.

### Typography
- ONE sans-serif family by default. Serif only when earned.
- NO Inter as default. Must be justified.
- NO italics. Period.
- NO monospace unless product needs it.
- Hierarchy through weight and size, not font mixing.
- Labels/eyebrows used sparingly, not on every section.

### Animation
- Essential tier mandatory.
- Custom cubic-bezier. Never linear or default ease.
- GPU-safe: transform and opacity only.
- `prefers-reduced-motion` always respected.

### Illustration
- Respect the medium. No physical product renders in HTML/CSS.
- Typography beats bad illustration.
- No fake browser chrome.

### Layout
- 15 section layout patterns available. Use at least 3 per page.
- Never same layout twice in a row.
- Never 2 consecutive sections with same background.
- At least one dark section per page.

### UX Writing
- Short. Specific. No banned words. No generic CTAs.
- No section numbers as decoration.

### Icons
- Outlined. Stroke 0.8-1px. One family. 16/20/24px.

### Border Radius
- 4-32 system. No arbitrary values.

### Responsive
- Mobile-first. 6 breakpoints. Fluid typography via clamp().
- No horizontal scroll. `min-h-[100dvh]` not `h-screen`.

### Accessibility
- WCAG AA minimum. 4.5:1 body, 3:1 large text and UI.
- Keyboard nav. Skip link. Alt text. Heading hierarchy.

### Anti-Patterns
- Check against 37 rules in reference/anti-patterns.md before every output.
- The editorial trap: if it looks like a magazine, it's wrong.
- The cream trap: if it's cream and the product isn't food, it's wrong.
- The Inter trap: if it's Inter and you can't justify it, it's wrong.
- The serif trap: if there's a serif and the product isn't food/luxury/editorial, it's wrong.
