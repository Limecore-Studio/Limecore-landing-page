# Limecore

Independent software studio landing page. Single `index.html`, deployed via Vercel from `Limekana/Limecore-landing-page` on GitHub.

## TODO before HN / Show HN launch

- [x] ~~Migrate to a real domain~~ — live on **`limecore.dev`** (bought via Vercel 2026-07-26). `limecore.vercel.app` is kept as a redirect so the X-posted blog links and the F-Droid `WebSite` metadata keep resolving.
- [x] ~~Add LimeLog hero screenshot~~ — Lock in + Phases shipped.
- [x] ~~Add StudyDesk hero screenshot~~ — Grades + Pomodoro shipped.
- [x] ~~Open-source LimeLog and Nexus repos; wire real GitHub URLs into the card link slots.~~ — live and linked.
- [ ] Flip on F-Droid links as submissions are accepted. StudyDesk live (com.StudyDesk.app); LimeLog + Nexus still pending.
- [ ] Add "Open in browser" links for the desktop web editions once `studydesk.limecore.dev` and `nexus.limecore.dev` are deployed and smoke-tested (see `docs/handoff-web-apps.md`). NCC's `vercel.json` market-data rewrites are committed in Nexus-Dashboard but not yet merged to its `main`; the Supabase redirect allowlist is an owner action. **No LimeLog web link** — it has no desktop shell.
- [x] ~~Ship `/blog`~~ — live at `/blog/`. Posts: 001 "Vibe coding through high school", 002 "The moment three apps became an OS".
- [x] ~~Replace footer X and Email placeholders with real handle / address.~~ — `x.com/l1m3core` and `l1m3core@gmail.com` live across landing + blog.

## Stack

- Plain HTML/CSS/JS — no framework, no build step.
- Hosted via Vercel (static), auto-deploys from `main`.
- Screenshots in repo root: `Nexus_HQ_*_Main.png` (priority), `Portfolio.png` / `Weekly_review.png` / `What_if.png` (secondary), `Limelog_*.png`, `StudyDesk_*.png`.
- Lightbox: click any screenshot to enlarge. ESC or click outside to close.
