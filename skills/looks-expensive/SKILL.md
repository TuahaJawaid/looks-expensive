---
name: looks-expensive
version: 2.0.0
description: |
  Full-stack design methodology that makes any website look like a $150k agency build.
  Nine gated phases: positioning, research, design contract, screen spec, build,
  subtraction, audit, hardening, handoff. Includes illustration system, animation
  tiers, 12 hero patterns, 15 section layouts, UX writing guide, icon system, and
  27+ anti-pattern rules. One skill, zero external dependencies.
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
4. **The memorable thing?** One sentence that filters every decision. ("serious research software", "developer tools that feel like magic")
5. **What are you NOT?** 3-4 anti-references.
6. **2-3 products whose quality you want to match.**
7. **Emotional temperature?**
   - Cool/Technical: precision, security, dev tools, fintech (blue-blacks, cool whites, slate)
   - Warm/Earthy: food, wellness, hospitality, agriculture (cream, olive, terracotta)
   - Neutral/Clean: general SaaS, productivity, B2B, most agencies (true grays, pure whites, no tint)
   - Bold/High-Contrast: consumer apps, creative tools, marketplaces (pure black + white + one saturated accent)
   - Editorial/Refined: architecture, real estate, luxury, consulting (warm grays, not cream. Stone, not paper.)
   - Vibrant/Playful: social, education, kids, community (bright accents on white, colorful but controlled)
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

The font is a product decision. Not a preset.

**Temperature-to-type mapping (starting point):**
- Cool/Technical: geometric sans, clean grotesk. Tight tracking. (Space Grotesk, Outfit, DM Sans, Instrument Sans, Geist)
- Warm/Earthy: humanist sans or serif. Open apertures. (Bricolage Grotesque, Source Serif 4, Literata, Newsreader)
- Neutral/Clean: neo-grotesk or humanist-geometric. (Satoshi, General Sans, Albert Sans, Sora, Plus Jakarta Sans)
- Bold/High-Contrast: display fonts with personality. Strong weight contrast. (Cabinet Grotesk, Clash Display, Bebas Neue)
- Editorial/Refined: transitional serif or elegant grotesk. Restrained, not decorative. (Libre Baskerville, Cormorant, Outfit, Switzer)
- Vibrant/Playful: rounded geometric or friendly sans. (Nunito, Quicksand, Rubik, Comfortaa)

**Selection process:**
1. Start with temperature mapping
2. Identify 3-4 properties needed (geometric vs humanist, tight vs open, high vs low x-height)
3. Web search "[product type] website font" and "[reference product] font"
4. Search Google Fonts / Fontshare for matches
5. The selected font MUST differ from what you'd pick by default. If reaching for the same font, stop and search alternatives.
6. One family preferred. Two max. Never three.

**ANTI-REPETITION (CRITICAL):**
Do NOT default to Inter as body font. Do NOT default to Fraunces/EB Garamond/Instrument Serif as display. Before selecting, ask: "Would this choice surprise someone who saw my last 3 outputs?" If no, find an alternative with the same properties.

**Rules:**
- NO italics. No `<em>`, `<i>`, `.italic`, `font-style: italic`. Ever. Unless the user literally typed "use italics." Emphasis via weight, color, or size.
- NO monospace unless the product displays code/IDs/data AND the user confirmed.
- NO gradients on text unless the user asks.
- Justify font choice in one sentence tied to the product.

**Required type scale:**
```
H1:      [font] [40-72px] / [weight] / [tracking] / [line-height]
H2:      [font] [32-48px] / [weight] / [tracking] / [line-height]
H3:      [font] [24-32px] / [weight] / [tracking] / [line-height]
H4:      [font] [20-24px] / [weight] / [tracking] / [line-height]
H5:      [font] [16-18px] / [weight] / [tracking] / [line-height]
H6:      [font] [14-16px] / [weight] / [tracking] / [line-height]
Body:    [font] [15-17px] / 400 / 0 / [1.5-1.6]
Small:   [font] [12-14px] / 500 / [0.01em] / [1.3-1.4]
Eyebrow: [font] [10-12px] / 500 / [0.12-0.16em] / 1.3 / uppercase
```

### Color System

**Temperature-to-palette (from Phase 1):**

| Temperature | Ink | Paper | Neutral tint | Accent direction |
|-------------|-----|-------|--------------|-----------------|
| Cool | `#0f1114` (blue-black) | `#f7f8fa` (cool white) | Blue/slate | Blue, teal, green, violet |
| Warm/Earthy | `#1a1714` (brown-black) | `#f5f2ec` (cream) | Amber/ochre | Terracotta, olive, burnt orange |
| Neutral | `#111111` (true black) | `#fafafa` (true white) | None, pure gray | Any single accent |
| Bold | `#0a0a0a` (deep black) | `#ffffff` (pure white) | None, max contrast | One saturated primary |
| Editorial | `#1c1c1c` (charcoal) | `#f5f5f3` (warm gray, NOT cream) | Warm GRAY not brown | Muted red, deep navy, forest |
| Vibrant | `#1a1a1a` (near-black) | `#ffffff` (pure white) | Clean, no tint | Bright, saturated, playful |

Do NOT default to warm. Do NOT default to cream. Match temperature to product.

**THE CREAM/BROWN TRAP (CRITICAL):**
The #1 failure of this skill is defaulting to cream paper (`#f5f2ec`) and brown-black ink (`#1a1714`) for everything. This makes every output look identical.

Before selecting colors, ask:
- Is this product ACTUALLY warm? Food, hospitality, agriculture: yes. Real estate, agencies, consulting, professional services: NO. Use Editorial (warm gray) or Neutral (true white).
- Can you justify cream over white or gray? "It feels premium" is NOT a justification. White + a strong accent is equally premium.
- Cream/brown is ONLY for: food, beverage, hospitality, wellness, agriculture, artisanal goods. Products where warmth is the identity, not a visual default.
- If your last 3 outputs used cream + brown, you MUST pick a different base this time.

**ANTI-REPETITION (CRITICAL):**
- Paper should NOT always be cream. Most products work better with white or gray.
- Ink should NOT always be warm brown. Most products work better with true black or charcoal.
- Accent colors derived from the product's identity, not a default palette.

**Brand accent is mandatory.** Every product has a primary color. It is rarely just black and white. The accent must:
- Pop on CTAs and primary buttons
- Appear in illustrations and icons
- Tint interactive states (hover, focus, active)
- Show in eyebrow pills, badges, and status indicators
- Be visible and intentional, not buried in a hover state nobody sees

The accent creates the "designed" feeling. Without it, the page looks like a grayscale wireframe.

Define:
- **Brand accent** (one color, 3-5 shades: base, hover, pressed, strong, on-dark)
- **Paper/surface tiers** (3-4 levels, temperature-matched)
- **Dark panels** (2-3 tiers + copy + muted)
- **Ink/text tiers** (display, body, secondary, tertiary, muted)
- **Hairlines** (rgba opacity at 0.06/0.10/0.16)
- **Semantic** (success/warning/error/info, low-sat + high-sat)

**Hard rules:**
- No one-sided colorful strokes (no border-left accent, no colored top-borders)
- Borders use hairline opacity or inset shadow
- Elevation through lightness, not heavy shadow
- No gradients unless user asks
- Accent color must be VISIBLE, not hidden

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
No arbitrary values. Everything maps to the scale.

### Icon System
Outlined icons only. Stroke weight 0.8-1px. Nothing heavier. Consistent sizing (16/20/24px tiers). One icon family per project. If no icon library fits, use no icons rather than mixing families.

### Motion
- Custom cubic-bezier only. Never `linear` or default `ease-in-out`.
- Hover: 150-200ms. Reveal: 400-600ms. Entrance: 600-800ms.
- GPU-safe: transform and opacity only.
- `prefers-reduced-motion` respected always.

### Section Rhythm
Load `reference/section-layouts.md`. Define per-section:
- Background treatment (shade shift, dark inversion, accent tint)
- Layout pattern (from 15 options, never same pattern twice in a row)
- Density (spacious vs compact)
- Typography scale shift

Rules:
- Never 2+ consecutive sections with same background
- At least one dark-inverted section per page
- At least 3 different layout patterns per page
- Hero and final CTA get the strongest visual treatment

### UX Writing
Load `reference/ux-writing.md`. All copy follows:
- Headline: 6-10 words / 60 chars max
- Subhead: 15-25 words / 120 chars max
- CTA: 2-5 words / 30 chars max
- Feature description: one sentence / 15-20 words max
- No banned words (revolutionize, cutting-edge, leverage, seamless, robust, comprehensive, unlock potential, furthermore, indeed, moreover)
- No section numbers ("Section 1", "01."). Eyebrows must be logical labels.
- No dates unless the content is actually date-specific.

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

2. **Hero pattern selection.** Using Phase 1 positioning, select from 12 hero patterns (see reference/hero-patterns.md). The hero MUST match the product type. A dev tool gets a different hero than a coffee brand.

3. **Full-page section map.** Every section:
   - Name
   - Layout pattern (from reference/section-layouts.md, MUST vary across sections)
   - Background treatment
   - Content summary
   - Illustration type (from reference/illustrations.md, if applicable)

   The ENTIRE page mapped before any implementation. No piecemeal.

4. **Illustration plan.** For each section, decide: does this section need a visual, or does typography carry it?
   - Check the medium rule in reference/illustrations.md FIRST. You are building in HTML/CSS. You cannot render physical products, landscapes, or realistic objects.
   - If the product is physical (food, consumer goods, hardware): do NOT plan illustrations of the product. Plan editorial typography treatments, abstract data representations, or styled placeholders instead.
   - For digital products: UI mockups, code blocks, and component compositions work. Plan those.
   - For every planned visual, specify: type, integration method, color treatment.
   - NO fake browser chrome. NO physical product renders. NO monospace unless showing code.
   - If a section is better served by typography alone, mark it "typography-driven, no illustration."

5. **ASCII wireframe** of complete page.

6. **Cognitive load check:** Nav 5 or fewer, forms 4 or fewer fields, 1 primary + max 2 secondary buttons, max 4 metrics per viewport.

7. **Interaction state inventory:** All 8 states for every interactive element (default, hover, focus, active, disabled, loading, error, success).

8. **Responsive spec:**
   | Element | 320px | 640px | 768px | 1024px | 1280px | 1536px |
   |---------|-------|-------|-------|--------|--------|--------|

9. **Animation plan.** Load `reference/animations.md`. For each section, define:
   - Entrance animation (scroll-triggered fade-up, staggered reveal, etc.)
   - Interactive animations (hover states, click feedback)
   - Which tier: Essential (required), Elevated (if time permits), Advanced (stretch)

### Output
Write the spec. Present. STOP. Wait for approval.

---

## Phase 5: Implementation

Load reference files: `reference/animations.md`, `reference/icon-system.md`, `reference/anti-patterns.md`

### Build Rules

**Color must be visible.** The accent color appears on:
- Primary CTA buttons (filled, not outlined)
- Hover/focus states on interactive elements
- Eyebrow pills and badges
- Icon accents or illustration highlights
- At least one section's accent-tinted background
If the page looks like a grayscale wireframe, the accent isn't working hard enough.

**Sections must look different from each other.** Each section uses a different combination of:
- Background shade (white, off-white, tinted, dark)
- Layout pattern (bento, zigzag, stat strip, timeline, etc.)
- Density (spacious hero vs compact stat strip)
- Typography scale (display in hero vs body in features)
Adjacent sections must differ in at least 2 of these dimensions.

**Illustrations must respect the medium.** Follow `reference/illustrations.md`. You are building with HTML/CSS, not Figma. NEVER attempt to render physical products (bottles, food, devices, packaging), landscapes, nature, buildings, or human figures in SVG/CSS. These always look amateur. When you can't illustrate well, lean on typography: oversized numbers, editorial pull quotes, data points as visual anchors, and generous spacing. A clean section with great type beats a section with a bad SVG every time.

**Animations are required, not optional.** At minimum, implement all Essential tier animations:
- Button hover: lift + layered shadow expansion (200-300ms, custom bezier)
- Scroll entrance: elements fade up 20-30px as they enter viewport (600ms ease-out)
- Staggered reveals: list items, cards, features enter sequentially (50-100ms stagger)
- Counter animation: stats count up on viewport entry (2000ms ease-out)
- Smooth transitions on all interactive state changes (150-200ms)

**No eyebrow/pill decoration spam.** Eyebrows are logical labels ("For teams", "Pricing", "How it works"). Never "Section 01", "--- Features ---", or decorative numbering.

### Pre-Output Checklist

Before presenting ANY screen:
- [ ] **ITALIC CHECK:** Grep for `<em>`, `<i>`, `.italic`, `font-style: italic`. If found, REMOVE.
- [ ] **MONO CHECK:** Grep for `monospace`, `mono`, `<code>`, `<pre>`. Remove unless product needs it.
- [ ] **GRADIENT CHECK:** Grep for `gradient`. Remove unless user requested.
- [ ] **SECTION NUMBER CHECK:** Grep for "Section", "01.", "02.", "---". Remove decorative numbering.
- [ ] **BROWSER CHROME CHECK:** Grep for mock window buttons (red/yellow/green dots). Remove unless showing real product UI.
- [ ] **ILLUSTRATION QUALITY CHECK:** Review every SVG and complex CSS visual. Does it look professional, or does it look like a child drew it in code? If the product is physical (food, bottle, device, clothing), did you attempt to render it? REMOVE any physical product illustrations. Use typography treatments or styled placeholders instead.
- [ ] Font matches DESIGN.md (no ad-hoc fonts)
- [ ] Type scale matches DESIGN.md (every element mapped)
- [ ] Color tokens used everywhere (no raw hex outside DESIGN.md)
- [ ] Accent color VISIBLE on CTAs, pills, icons, and at least one tinted section
- [ ] Spacing follows scale (no arbitrary values)
- [ ] Border radius uses the 4-32 system
- [ ] All transitions use custom cubic-bezier
- [ ] At least 3 different section layout patterns used
- [ ] No 2 consecutive sections with same background
- [ ] At least one dark-inverted section
- [ ] Essential animations implemented (hover lift, scroll entrance, stagger, counters)
- [ ] Icon stroke weight 0.8-1px, one family
- [ ] Responsive at all 6 breakpoints
- [ ] Touch targets 44px minimum
- [ ] **VARIANCE CHECK:** Does this look like it could be from a different designer than your last output? If same palette/font/layout as before, STOP and re-derive from the product.

### Output
Present. STOP. Wait for approval.

---

## Phase 6: Subtraction Pass

### Earn Your Pixel
Strip on sight:
- Fake metadata, doc IDs, version numbers
- Decorative timestamps, ETAs
- Redundant labels above clear data
- Section numbers ("01", "02") used as decoration
- Decorative footers and slogans
- Full prose where fragments work
- Any italic text
- Any monospace not displaying code/data
- Any gradient not requested
- Fake browser chrome (mac window buttons)
- Template duplication (identical layouts across sections)

### AI Slop Detection (27+ patterns from reference/anti-patterns.md)
Load `reference/anti-patterns.md`. Check against all patterns. Flag with confidence tier (Certain/Probable/Possible).

### UX Writing Audit
Load `reference/ux-writing.md`. Check all copy against:
- Banned word list
- Character limits per element
- Generic CTA check ("Get Started" on every button = failure)

### Output
List flags. Present. STOP. Wait for approval.

---

## Phase 7: Audit and Grade

### Responsive Verification
Check at 375px, 768px, 1024px, 1280px, 1536px.
- No horizontal overflow
- Grid collapses correctly
- Text readable, no overflow
- Touch targets 44px
- Nav adapts
- No orphaned words in headings
- Body text 65-75ch measure
- Section padding follows responsive rubric

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

### Animation Quality Check
- All Essential tier animations present
- Timing feels natural (200-400ms interactions, 600-800ms entrances)
- Custom easing, never linear
- No janky scroll-triggered animations
- Mobile: heavy animations disabled or simplified

### Illustration Quality Check
- Illustrations match design system (same accent, same radius, same line weight)
- No fake browser chrome on non-product illustrations
- No generic stock/placeholder visuals
- Each illustration type is appropriate for its section

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
F in Accessibility or Visual Design caps overall at D.

### Output
Audit report with scores, findings, priority fixes. Present. STOP. Wait for approval.

---

## Phase 8: Hardening

- Text overflow handling on every element
- i18n: 30-40% space budget, logical properties for RTL
- Error states: 400/401/403/404/429/500 each with specific UX
- Empty states: editorial copy, not illustrations
- Loading states: skeleton or spinner, never blank
- Focus management: `:focus-visible`, trapped in modals, returned on close
- `prefers-reduced-motion`: all animations suppressible
- Core function works without JS

### Output
List fixes. Present. STOP. Wait for approval.

---

## Phase 9: Handoff

- Design system summary (fonts, colors, spacing, radius, motion, icons)
- Route-to-component map with parity status (Aligned/Partial/Gap)
- Decisions log
- Known open items (honestly documented)
- What's working (don't touch)
- Grep entry points

### Output
Write handoff. Done.

---

## Design Laws (Always Active)

### Aesthetic
- Monochrome + one visible accent color. Accent must pop, not hide.
- Hairline borders only. No one-sided colorful strokes.
- Elevation through lightness, not heavy shadow.
- 64-120px between major sections.
- Typography carries hierarchy. Color and border are secondary.
- Sections must be visually distinct from each other.
- Color temperature is product-specific. Not always warm.

### Typography
- NO italics. Period. Unless user explicitly asks.
- NO monospace unless product needs it AND user confirms.
- NO gradients on text unless user asks.
- Font choice justified in one sentence tied to product.
- One family preferred. Two max.
- Every element maps to defined type scale.

### Animation
- Essential tier is mandatory on every page.
- Custom cubic-bezier. Never linear or default ease.
- GPU-safe: transform and opacity only.
- `prefers-reduced-motion` always respected.
- Timing: 150-200ms hover, 400-600ms reveal, 600-800ms entrance.

### Illustration
- 8 types available. Select based on product and section.
- No fake browser chrome unless showing actual product UI.
- No generic stock visuals.
- Illustrations match design system (accent color, radius, line weight).
- Modern, not template-looking.

### Layout
- 15 section layout patterns available. Use at least 3 per page.
- Never same layout pattern twice in a row.
- Never 2 consecutive sections with same background.
- At least one dark section per page.

### UX Writing
- Headline: 6-10 words. Subhead: 15-25 words. CTA: 2-5 words.
- No banned words. No section numbers as decoration.
- Every CTA is specific to the action. No "Get Started" on every button.

### Icons
- Outlined. Stroke 0.8-1px. One family. 16/20/24px sizing.

### Border Radius
- 4-32 system. No arbitrary values.
- xs(4), sm(8), md(12), lg(16), xl(24), 2xl(32), pill(9999).

### Responsive
- Mobile-first. 6 breakpoints.
- Audit at 375, 768, 1024, 1280, 1536.
- Fluid typography via clamp().
- No horizontal scroll ever.
- `min-h-[100dvh]` not `h-screen`.

### Accessibility
- WCAG AA minimum.
- 4.5:1 body text, 3:1 large text and UI.
- Keyboard nav on everything.
- No info by color alone.
- Skip link. Alt text. Heading hierarchy.

### Anti-Patterns (from reference/anti-patterns.md)
- Never: decorative motion without purpose, mixed icon families, display fonts in buttons, fake KPI cards, all-caps body, justified text, decorative empty-state illustrations.
- Check against 27+ deterministic anti-pattern rules before every output.
