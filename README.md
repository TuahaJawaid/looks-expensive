# /looks-expensive

An AI coding skill that makes any website look like a $150k agency build. One command. Nine phases. Zero design team required.

Works with **Claude Code**, **Cursor**, and **Codex**.

## What it does

`/looks-expensive` is a design methodology packaged as an AI skill. You run it, it walks you through nine gated phases, and the output is a production-grade website that looks like someone who knows what they're doing designed it.

It replaces the default AI behavior of producing generic SaaS templates with the same warm brown palette, three identical cards in a row, and "Get Started" on every button.

**v4.0** — tested against 50 generated sites. Fixes fake bento grids, animation monotony, template skeleton repetition, gradient placeholder blobs, reused AI testimonial names, invisible accent colors, browser chrome dots, and zero-padded decorative numbers. Adds 2 new reference files (bento grid patterns, CSS mockup library) and 10 new anti-pattern checks.

**Nine phases:**

1. **Position** - Product interview. Establishes the taste filter before any visual work.
2. **Research** - Competitive analysis. Steal/Avoid lists from 10+ real products.
3. **Contract** - Generates a complete design system (DESIGN.md) with fonts, colors, spacing, motion, and section rhythm.
4. **Specify** - Full-page specs with hero pattern selection, section layouts, illustration plans, and responsive behavior.
5. **Build** - Implementation with 37+ anti-pattern checks, mandatory animations, and a pre-output checklist.
6. **Subtract** - Strips AI slop, decorative garbage, and unnecessary elements.
7. **Audit** - 6-category weighted grading with accessibility review and responsive verification.
8. **Harden** - Production readiness: overflow, i18n, error states, focus management, reduced motion.
9. **Handoff** - Structured document so anyone can continue the work.

**Includes 8 reference files:**

| File | What it covers |
|------|---------------|
| `hero-patterns.md` | 12 distinct hero section patterns with product-type selection logic |
| `section-layouts.md` | 15 layout patterns beyond "3 cards in a row" (bento grids, zigzag, asymmetric splits, timelines, etc.) |
| `animations.md` | 3-tier animation system (Essential/Elevated/Advanced) with timing values and easing curves |
| `illustrations.md` | 8 illustration types with integration rules and anti-patterns |
| `ux-writing.md` | Banned words, character limits per element, headline formulas, CTA rules, testimonial name bans |
| `bento-grids.md` | 5 bento grid patterns with exact CSS — minimum spanning requirements and anti-patterns |
| `css-mockups.md` | 8 CSS mockup patterns for section visuals (dashboards, app screens, funnels, code blocks) |
| `anti-patterns.md` | 47 deterministic checks run before every output |
| `icon-system.md` | Outlined icons, 0.8-1px stroke, sizing tiers, library recommendations |
| `border-radius.md` | 4-32px system with element-to-token mappings |

## Before and After

### Tempo (Async Video Messaging)

<table><tr>
<td valign="top" width="50%"><strong>Without skill</strong><br><img src="screenshots/tempo-without.png" width="100%" /></td>
<td valign="top" width="50%"><strong>With /looks-expensive</strong><br><img src="screenshots/tempo-with.png" width="100%" /></td>
</tr></table>

### Vault (Cloud Security Platform)

<table><tr>
<td valign="top" width="50%"><strong>Without skill</strong><br><img src="screenshots/vault-without.png" width="100%" /></td>
<td valign="top" width="50%"><strong>With /looks-expensive</strong><br><img src="screenshots/vault-with.png" width="100%" /></td>
</tr></table>

### More designs using the skill

<table><tr>
<td valign="top" width="50%"><strong>Hale & Co</strong> (boutique real estate)<br><img src="screenshots/hale-1.png" width="100%" /></td>
<td valign="top" width="50%"><strong>Ferment</strong> (brand strategy studio)<br><img src="screenshots/hale-2.png" width="100%" /></td>
</tr></table>

## Who this is for

- Solo founders building landing pages without a designer
- Developers who can code but can't design
- Small teams that want agency-quality output from AI tools
- Anyone tired of AI producing the same generic SaaS template for every project

## Install

### Claude Code

```bash
# Clone the repo
git clone https://github.com/TuahaJawaid/looks-expensive.git

# Copy to Claude Code skills directory
cp -r looks-expensive/skills/looks-expensive ~/.claude/skills/looks-expensive
```

Then run `/looks-expensive` in any Claude Code session.

### Cursor

```bash
git clone https://github.com/TuahaJawaid/looks-expensive.git

cp -r looks-expensive/skills/looks-expensive ~/.cursor/skills-cursor/looks-expensive
```

### Codex (OpenAI)

```bash
git clone https://github.com/TuahaJawaid/looks-expensive.git

cp -r looks-expensive/skills/looks-expensive ~/.codex/skills/looks-expensive
```

### One-liner (Claude Code)

```bash
git clone https://github.com/TuahaJawaid/looks-expensive.git /tmp/looks-expensive && cp -r /tmp/looks-expensive/skills/looks-expensive ~/.claude/skills/looks-expensive && rm -rf /tmp/looks-expensive && echo "Installed. Run /looks-expensive in Claude Code."
```

## How to use

1. Open a new session in Claude Code, Cursor, or Codex
2. Type `/looks-expensive`
3. Answer the positioning questions (product, audience, temperature, references)
4. The skill walks you through each phase with gates between them
5. Approve each phase's output before it moves to the next
6. End result: a production-grade website with a complete design system

You can also run it on an existing project to audit and improve the design.

## What makes it different from /impeccable

[Impeccable](https://impeccable.style/) is an excellent design skill that this project learned from. The key differences:

- **/looks-expensive** is a methodology (9 sequential phases with gates). Impeccable is a toolkit (23 independent commands).
- **/looks-expensive** derives the entire design from product positioning. Font, color temperature, section layouts, hero pattern, illustration types, and animation tiers are all selected based on the product interview, not defaults.
- **/looks-expensive** includes research and competitive analysis phases before any design work begins.
- **/looks-expensive** has an anti-repetition system that prevents the AI from producing the same palette, fonts, and layouts across different projects.
- **/looks-expensive** packages UX writing rules, 15 section layouts, 12 hero patterns, and an illustration system into reference files loaded per-phase.

The 47 anti-pattern rules are extracted from impeccable's detection system and expanded with additional checks found during a 50-site stress test.

## What inspired this

This skill was built by reverse-engineering how I actually design products. Over months of building [Verdikt](https://tryverdikt.app), I developed a specific process: competitive research before touching pixels, a design contract (DESIGN.md) as the single source of truth, full-page design passes instead of piecemeal patching, systematic audits with grading, and ruthless subtraction of AI slop.

The skills that shaped the methodology:
- [Impeccable](https://impeccable.style/) by Paul Bakaus - anti-pattern detection and the Brand/Product register concept
- [Lazyweb](https://github.com/lazyweb) - competitive research methodology and Steal/Avoid list format
- Linear, Eleven Labs, and Cursor's design systems - the "premium minimal" aesthetic standard
- Every time I told Claude "this looks like AI slop" and had to explain what to fix

## Design principles baked in

- **Color temperature is product-specific.** A security tool gets cool grays. A food brand gets warm tones. Not everything is cream and brown.
- **Sections must look different from each other.** Never two consecutive sections with the same background. At least 3 different layout patterns per page.
- **Animations are required, not optional.** Button hover lift, scroll entrance, staggered reveals, and counter animations at minimum.
- **No italics unless you ask.** No monospace unless the product needs it. No gradients unless you ask.
- **Accent color must be visible.** On CTAs, pills, icons, and at least one tinted section. Not buried in a hover state.
- **UX writing has rules.** Headline: 6-10 words. CTA: 2-5 words. No "Get Started" on every button. No "revolutionary" or "cutting-edge."
- **Typography is a product decision.** The font is derived from the product's emotional temperature and audience, not picked from a default.
- **Bento grids must actually be bento.** If all cards are the same size, it's a regular grid. Real bento has cards spanning multiple columns or rows.
- **No browser chrome dots.** Red/yellow/green fake macOS window buttons are the #1 AI design tell. Banned everywhere.
- **CSS mockups over gradient blobs.** Section visuals should be product-relevant mockups (dashboards, code blocks, funnels), not anonymous gradient rectangles.
- **Accent colors must be visible.** Gray, slate, and near-black are not accent colors. If you can't distinguish the accent from the ink, pick a real color.

## File structure

```
skills/looks-expensive/
  SKILL.md                  # Main skill (v4.0.0) - phases, gates, checklists, laws
  reference/
    animations.md           # 3-tier animation system with variety requirements
    anti-patterns.md        # 47 deterministic anti-pattern checks
    bento-grids.md          # 5 bento patterns with exact CSS and spanning rules
    border-radius.md        # 4-32px system with element mappings
    css-mockups.md          # 8 CSS mockup patterns for section visuals
    hero-patterns.md        # 12 hero patterns with product-type selection
    icon-system.md          # Outlined, 0.8-1px stroke, sizing tiers
    illustrations.md        # 8 illustration types with rules
    section-layouts.md      # 15 layouts beyond "3 cards in a row"
    ux-writing.md           # Banned words, char limits, testimonial name bans
```

## Contributing

Found a pattern that should be an anti-pattern? A section layout missing from the catalog? A hero pattern the skill doesn't cover? Open a PR.

The reference files are the easiest place to contribute. Each one is a self-contained guide that gets loaded during a specific phase.

## License

MIT. See [LICENSE](LICENSE).

---

Built by [Tuaha Jawaid](https://tuahajawaid.com)
