# Animation System

## Three Tiers

### Essential (Required on every page)

**1. Button Hover: Lift + Shadow Expansion**
```css
button {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05);
  transition: all 200ms cubic-bezier(0.34, 1.56, 0.64, 1);
}
button:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 16px rgba(0,0,0,0.1);
}
button:active {
  transform: translateY(0) scale(0.98);
}
```
Duration: 200-300ms. Easing: bouncy cubic-bezier. Movement: 2-4px translateY, never more.

**2. Scroll Entrance: Fade Up**
Elements fade in and slide up 20-30px as they enter viewport.
- Duration: 600ms ease-out
- Trigger: when element is 70% in viewport
- Implementation: IntersectionObserver + CSS classes or Framer Motion whileInView
- Apply to: headings, paragraphs, cards, images

**3. Staggered Reveal: Sequential Entry**
List items, cards, features enter one after another.
- Per-item duration: 300-400ms
- Stagger delay: 50-100ms between items
- Direction: fade up from below
- Implementation: CSS animation-delay or Framer Motion staggerChildren

**4. Counter Animation: Number Increment**
Stats count up from 0 to final value.
- Duration: 2000ms with ease-out (slows at end)
- Trigger: once, when 50% in viewport
- Integer-only display
- Implementation: JS with IntersectionObserver or GSAP

**5. Smooth State Transitions**
All interactive elements transition smoothly between states.
- Duration: 150-200ms
- Properties: color, background-color, border-color, box-shadow, transform
- Easing: ease-out
- Apply to: links, buttons, inputs, cards

### Elevated (Good to Great)

**6. Parallax Depth**
Background and foreground move at different scroll speeds.
- Background: 30% scroll speed. Foreground: 100%.
- Max 3 layers. Max 20% viewport height movement.
- DISABLE on mobile (touch parallax is janky).
- Implementation: GSAP ScrollTrigger or CSS scroll-driven animations

**7. Clip-Path Reveal**
Images or sections revealed by animating CSS clip-path.
- Duration: 600-1000ms ease-out
- Shape: circle expanding from center, or polygon wiping diagonally
- Combine with fade for layered effect
- Implementation: CSS animations on clip-path property

**8. Direction-Aware Hover**
Hover animation direction follows cursor entry direction.
- Duration: 300-400ms elastic easing
- Implementation: JS calculating mouse entry point + CSS animation
- Creates feeling of responsive, alive interface

**9. Scroll Progress Bar**
Bar fills as user scrolls down page.
- Position: top of viewport, 2-3px height
- Color: accent color at 60% opacity
- Implementation: CSS scroll-driven animation or JS scroll event

### Advanced (Wow Moments)

**10. Character-by-Character Text Reveal**
Headline text appears letter by letter.
- 20-30ms per character (500-1000ms total for 20-30 chars)
- Only on 1-3 lines max
- Implementation: JS splitting text into spans + staggered animation

**11. Viewport Pinning**
Element pins to viewport while surrounding content scrolls.
- Use for: feature showcases, comparison sections, storytelling
- Implementation: GSAP ScrollTrigger with pin: true
- Release when user scrolls past section

**12. Magnetic Cursor**
Buttons appear to pull toward cursor when nearby.
- Range: 100-150px from element center
- Spring-like physics, 200-400ms follow
- DISABLE on touch devices
- Implementation: JS mouse tracking + requestAnimationFrame

## Global Rules

- Custom cubic-bezier on everything. Never `linear` or default `ease-in-out`.
- GPU-safe: ONLY animate `transform` and `opacity`. Never top/left/width/height.
- `backdrop-blur` only on fixed/sticky elements. Never scrolling content.
- `prefers-reduced-motion`: suppress ALL animations. Non-negotiable.
- `will-change`: apply sparingly, only on elements actively animating. Remove after.
- Mobile: disable parallax, magnetic cursor, and heavy scroll effects. Keep fade-in and stagger.
- Performance budget: if animation causes frame drops below 50fps, simplify or remove it.

## Timing Reference

| Context | Duration | Easing |
|---------|----------|--------|
| Hover state | 150-200ms | cubic-bezier(0.34, 1.56, 0.64, 1) |
| Click/active | 100ms | ease-out |
| Scroll entrance | 600-800ms | cubic-bezier(0.16, 1, 0.3, 1) |
| Stagger delay | 50-100ms | (per item) |
| Counter | 2000ms | ease-out |
| Parallax | tied to scroll | linear (scroll-driven) |
| Page transition | 400-600ms | cubic-bezier(0.32, 0.72, 0, 1) |
