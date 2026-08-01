# Remote Work Handoff — v1.9 (SEC-1) + v1.10 (features) — limecore-site

**Committed 2026-08-01.** You (a remote Claude Code instance, or Emil working
from elsewhere) don't have `Projects/CLAUDE.md` — that root sits above any
single repo, so a clone of just this one doesn't carry it. Everything
load-bearing from it is restated below. Read this whole file before touching
anything.

---

## Read this before you do anything else in this repo

**This repo is different from the other three.** There is no `develop`
branch here — `git status` confirms this repo lives on `main` only, and
**pushing `main` is a live deploy** (`CLAUDE.md` §1: "Pushing main = live
deploy"). Per `CLAUDE.md` §5 (Hard Forbidden Actions), that means:

> Do not deploy/push `limecore-site` without explicit user confirmation.

**This handoff bundle itself follows that rule.** It's committed locally to
`main` but **deliberately not pushed** — Emil said "ill do that later,"
meaning he will push it himself when ready. If you're a remote agent picking
this up: do not run `git push` on this repo unless Emil explicitly says so in
that session. Committing more local work on top is fine; pushing is not,
without a fresh explicit yes.

---

## What this handoff covers

This repo's actual scope from the two milestones below is small — one item.
Read the two snapshot build plans for full suite context (NCC/LimeLog/
StudyDesk work doesn't touch this repo), but the one thing that **does**
touch `limecore-site`:

- **Item 9 — Ko-fi support link (`NEXUS_V110_BUILD_PLAN_SNAPSHOT.md`).**
  Emil connected a Ko-fi account to Stripe (verified live this session,
  account `acct_1TyCLYV05PaRYRXK`, display name "Limecore Studio"). Smallest
  useful version: a "Support the project" link/button to the Ko-fi page,
  placed in the footer or an about page — plain link, no API integration, no
  build step needed since this repo has none anyway. **Confirmed 2026-08-01:
  this now extends suite-wide** — each of NCC, LimeLog, and StudyDesk also
  gets an in-app settings-page link to the same Ko-fi page, so the site's
  link and the apps' links should point at the same destination and ideally
  match in tone/copy.
- **v1.9 (SEC-1)** doesn't touch this repo at all — it's a Supabase/RLS
  decision affecting the three apps' shared backend, not the static site.
  Included here (`NEXUS_V19_BUILD_PLAN_SNAPSHOT.md`) for context only.

Nothing else in either milestone has site-side scope. If that changes later
(e.g. a legal-pages relocation — see `Suite home` in Open Blockers, currently
undecided whether legal pages stay on NCC's `gh-pages` or move to a
`limecore-suite` Vercel project) it isn't part of this handoff.

---

## Standing priorities (P1–P4 from the registry — these do not expire)

Mostly not applicable to a static site with no database or build step, but
worth knowing:

- **P1/P2** — schema/RLS discipline. Not relevant here; this repo has no
  backend of its own.
- **P3 — activation.** Real signups, real activation tracking across the
  three apps — see the snapshot for current numbers if curious, not
  actionable from this repo.
- **P4 — StudyDesk is the flagship product** (owner call, 2026-08-01). Not
  directly actionable here either, but if the Ko-fi link copy ever
  differentiates by app, StudyDesk's framing takes precedence.

## Git flow — this repo is the exception

- Other three repos: `main` (sacred) ← `develop` ← `feature/*`, PR-only
  promotion to `main` as of 2026-07-30.
- **This repo has no `develop`.** It is small, static, and hand-pushed
  deliberately. Per `CLAUDE.md` §1: "Static HTML/CSS/JS only. NO build
  step/npm/frameworks. Pushing main = live deploy." There is nothing to
  branch-protect a build against because there is no build — the discipline
  instead is: **never push `main` without saying so out loud first.**
- Commits: Conventional (`feat:`, `fix:`, `chore:`) same as the other repos.

## Build gate (restated from `CLAUDE.md` §1)

- **limecore-site: Static HTML/CSS/JS only. NO build step, no npm, no
  frameworks.** Don't introduce one. Edit the HTML/CSS/JS directly.
- No lint/build command to run before committing — there isn't one by
  design. The only gate is the human one: confirm before pushing.

## Hard forbidden actions (restated from `CLAUDE.md` §5, this repo's version)

- **Do not deploy/push `limecore-site` without explicit user confirmation.**
  This is the one that matters most in this repo specifically — everything
  else below is suite-wide boilerplate for consistency with the other three
  handoffs.
- Do not run git commits inside a sandboxed execution shell (causes blob
  truncation) — commit from a real machine shell.
- Do not read, print, or commit `.env` or secret keys (not that this repo
  has any known ones, but the rule is suite-wide).
- Do not force-push, `git reset --hard`, or rewrite branch history.

---

*This bundle: `README.md` (this file) + three snapshot files, taken
2026-08-01 from `D:\emilh\Projects\limecore\`. They will drift from the live
registry over time — treat them as a starting point, not a live source, if
this handoff is still in use more than a couple of weeks out. Unlike the
other three repos, this bundle is committed to `main` (there is no
`develop`) and is sitting locally, unpushed, until Emil pushes it himself.*
