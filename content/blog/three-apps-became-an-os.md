# The moment three apps became an OS

I'd just gotten back from the gym. Mid-afternoon, after school. Claude Code was open on my main monitor, Spotify was on the second.

I'd been testing the latest version of Limelog — my workout tracker — and I wanted to see how the same data would look in Nexus, the third app I'd been building. I opened Nexus and realized I'd have to create every exercise from scratch, then log the entire workout for a second time, just to test it. StudyDesk wasn't physically open on my desk. Neither was Limelog. They existed in my head as three separate apps, and I was about to log the same set of squats into two of them.

That's when I asked Claude the wrong question and got the right answer.

## Three apps, three reasons

StudyDesk came first. It was my first real playaround with Claude, before I had Pro — I was just messing around in the Claude.ai desktop app, chatting with Sonnet. I asked it to brainstorm app ideas that would be genuinely useful in my day-to-day life, and a study planner came up near the top. I had about two months of school left before high school started, so I had a real testbed for it.

Limelog came two months later. I'd had back stress injuries during basketball season and just got cleared to lift again. I asked Claude if there was a good tracker for my exact case — build muscle and size, train vertical, work around the back restrictions. Claude said it'd be easier to build one. So we did.

Nexus Command Center came in less than two weeks after Limelog. I'd been investing for about a year and was getting into finance. The original plan for Nexus was monolithic: one app that held everything. Finance, studies, fitness, todos, reading. All the threads of my life in one place.

That monolith plan is what set up the realization.

## The friction that broke it

When I opened Nexus that afternoon to test the workout module, I hit the obvious problem. I'd already logged the workout in Limelog. Now I was supposed to recreate every exercise in Nexus's separate database and log the same sets again. For a personal app I was the only user of. Testing alone, before any other human had even seen it.

It was dumb the moment I looked at it.

I typed something like this into Claude Code:

> Can you have Nexus dashboard pull like workouts and grades from StudyDesk and Limelog maybe like by a custom API or something that would fit?

I was thinking like a person who'd built three separate things. Each app had its own data, its own logic, its own backend. To share data, I'd need a bridge — a custom API, some scraper, some scheduled job between three things that didn't know about each other.

Claude pushed back.

## The right answer

Claude said something close to: "There's actually a much easier way to do this. Add StudyDesk and Limelog to the same Supabase project and have Nexus pull the data straight from there. No need for a custom API. About 1.5 seconds for realtime sync."

I leaned back in my chair and admired for a second how far the model had come from the autocomplete-grade stuff I'd been using a year before. Then I committed and we got to work.

The migration was clean. Nexus already had a Supabase project. I pointed StudyDesk and Limelog at the same project, added the rows needed for studies and workouts, set up RLS so user data stays isolated per account. Limelog still writes to its own concern (workouts). StudyDesk still writes to its (grades, exams, study sessions). Nexus reads from both. Local-first cache so the apps work without signal, with manual sync buttons as backup for when realtime hiccups.

Three apps. One database. Zero scrapers.

## What it unlocked

At first it just meant I could see everything in Nexus that I'd logged elsewhere. Workout volume, GPA, exam dates, weekly study time, all on one screen. And the double-logging problem disappeared.

The real unlock came later. Once the data was actually flowing into Nexus I realized I didn't really want to look at raw numbers in a dashboard. So Nexus evolved. It stopped being a viewer and became a synthesizer. Now it computes a daily Life Score from what the other apps are feeding it, and writes an AI-generated weekly and monthly summary of how things are going across all the domains.

That synthesis would not exist if Nexus had stayed monolithic. The only reason it can summarize my month is that StudyDesk and Limelog are doing the dedicated work of accurate logging.

The dashboard got smarter because the loggers got dedicated.

## What it didn't solve

UX is still the hard part. Deciding what shows where, when to surface a study session vs. a workout, how to navigate from one app's data into another app's context — none of that has a tidy answer. Shared schema solves the data problem, not the design problem.

The three-app install is also a real friction I suspect I'll feel once anyone other than me uses Limecore. Install one app, get one experience. Install three, get one — but only if all three sync correctly. I don't have users yet, so I don't have evidence for how painful this is in practice. I'm being honest that it's a known unsolved problem, not a hidden one.

## The actual lesson

I still have basically zero real coding skill. I don't write the actual function bodies. Claude does, and I read them. I ship things I partially understand, I verify behavior over implementation, and most of the time it works.

The lesson from this specific story isn't "Claude wrote a good function for me." Claude didn't write a function in this moment at all. Claude looked at the question I'd asked — *how do I build a bridge between my three apps?* — and gave a different question back: *why are they three apps?*

The wrong question would have produced a working answer. I'd have a scheduled scraper running between Nexus and the other two, fragile and slow, every schema change rippling through three places. That future is real. That's what I was about to build.

The biggest unlocks from AI coding aren't lines of code. They're the moments where you ask the wrong question and the model, calmly, hands you a different one.

Three weeks before this I had three apps. One realtime conversation later, I had a studio.
