---
title: "Prioritizing Technical Debt"
date: 2023-05-04T15:54:28-04:00
description: How can software engineering teams justify paying down technical debt when they simply don’t have the capacity to do so?
---

## Hypothetical

Software engineering teams are not able to take advantage of the _typical_
approach to prioritizing the reduction of technical debt, in which a
predetermined percentage of their overall capacity is "taken off the top" and
reserved for non-functional work.

In other words, 100% of each team's budgeted capacity for upcoming work has
been allocated for feature development with no room for anything else. In
addition to this, the work has already been planned, scoped, and started with
no buffer and no tolerance for missing deadlines.

All the while, the amount of technical debt is accumulating more and more with
each passing moment. Teams across the organization strongly believe that it is
critical to pay it down during this cycle, or they might not be able to produce
_anything_ during the next cycle. With leadership pressing forward with a blind
eye towards this issue, how can software engineering teams justify paying down
technical debt when they simply don't have the capacity to do so?

## Haycorn

### What is technical debt?

There are hundreds -- possibly thousands -- of articles about this. Some
notable articles I've read include Martin Fowler's "TechnicalDebt" [^fn1], the
report from Dagstuhl Seminar 16162 entitled "Managing Technical Debt in
Software Engineering" [^fn2], and the "Technical Debt" article in the C2 wiki
[^fn3].

However, among the vast sea of articles, one article _really_ caught my
attention. That is to say that one sentence of one article _really really_
caught my attention. That is to say that <mark>two words</mark> of one sentence
of one article _really really really_ caught my attention.

> Organizations that don’t pay down technical debt can find themselves so
> burdened with <mark>daily workarounds</mark> for problems left unfixed that
> they can no longer complete any new work. [^fn4]

### Daily Workarounds

If daily workarounds are symptoms of technical debt and the act of eliminating
daily workarounds pays down technical debt, then prioritization is just a
matter of cost/benefit analysis. Instead of looking at technical debt
holistically, look at how it directly affects the timelines of upcoming
projects across the organization. If the time invested in eliminating specific
workarounds produces an outcome that speeds up project deliveries, then you
would be foolish not to do it!

![Technical Debt Workaround Savings](/images/tech-debt-workaround-savings.png)

**In order for this to work, we need only need three pieces of information:**

1. [How long does it take to perform a specific workaround](#1-how-long-does-it-take-to-perform-a-specific-workaround)?
2. [How many times do we expect to perform a specific workaround in upcoming projects](#2-how-many-times-do-we-expect-to-perform-a-specific-workaround-in-upcoming-projects)?
3. [How long will it take to eliminate a specific workaround](#3-how-long-will-it-take-to-eliminate-a-specific-workaround)?

Now hold on just a second! At first glance, it seems like collecting this
information is nearly impossible. Or if not impossible, then it will surely
take an unreasonable amount of time. In order to answer the first two
questions, you need to know that you are performing a workaround and you need
to take the time to record that somehow.

Yeah... but, as a developer, don't you know that already? After all, you
already retroactively create tasks in the backlog labeled "technical debt",
right? Doing that requires more effort than simply recording what kind of work
you're doing. Those "technical debt" tasks are usually posed as _solutions_,
which means you spent even more time coming up with _how_ to fix the situation.
Talk about a waste of time!

I only say it's a waste of time because tasks like that are rarely completed.
They usually sit in the backlog until they are removed during a purge. That
system does not work. It should... but it doesn't. So stop it. Try something
different.

### 1. How long does it take to perform a specific workaround?

While you are working on a task, you notice that you starting performing a
workaround. How do you know this? The same way you knew to create those
"technical debt" tickets of the past. You just know that you're doing something
the _wrong way_... whatever that means to you.

Create and start a task for the workaround. Once the workaround
is complete, then complete the task and continue working on your original
task.

You need some way to deliniate _workaround_ tasks from regular tasks. Many
ticketing systems have labels. If yours doesn't, then you can use a naming
convention. Do the simplest thing.

In addition to identifying a task as a _workaround_, you also need to connect
it to some specific technical debt. You need a centralized place to store a
list of technical debts. If the workaround is new and you can't find an
existing technical debt that it is related to, then create a new technical debt
entry. If you don't know what the actual technical debt is yet, then just name
it based on the workaround until you do it enough times that you have
identified a pattern.

Technical debt is usually related to some scoped domain in the system and
should be linked to that in some way. This will help when estimating
workarounds for upcoming projects.

At a minimum, people across the organization should be kept informed of new
additions to the centralized technical debt list. This can be done via weekly
email or presentation. Whatever the method, it should be periodic so that folks
aren't overwhelmed with notifications and ignore them.

### 2. How many times do we expect to perform a specific workaround in upcoming projects?

This requires some project planning. If you're not planning projects, then you
might have some deeper concerns that need to be addressed before you can hope
to tackle technical debt.

For greenfield projects, you don't know anything yet, so you can't expect to do
specific workarounds. These must be identified and cataloged as the project
progresses.

For brownfield projects, you are working in an existing system. You can either
go by your and your team's knowledge of the domain to identify which
workarounds you should expect to do, or you can also lean on the centralized
technical debt list. Each item in the technical debt list should be related to
some scoped domain in the system.

Plan the tasks you expect to complete while doing your work to complete the
project. Identify which of those will require workarounds. Count the number of
times each workaround needs to be done, and multiply that by the length of time
it takes to do it based on the metrics from past workaround tasks. Sum all of
those times together. Now you know how much of your project time will be spent
on workarounds.

### 3. How long will it take to eliminate a specific workaround?

This part requires some basic project planning. Using your centralized list of
technical debt, find one with a lot of occurrences of workarounds completed,
and work with a planning team to create a project to eliminate it. Scope it.
Size it. Done.

### OK... now what?

In one hand, we have a centralized list of technical debt, we have records of
completed workarounds and the amount of time taken for each, and we have a
scoped and sized project plan for how to eliminate the technical debt.

In the other hand, we have a list of upcoming projects for the organization.
Each project has its own expected completion date and a list of workarounds
expected to be encountered during its lifetime.

If the amount of time it takes to pay off technical debt results in a shorter
project timeline because of the elimination of workarounds, then pay off the
technical debt during the project. Although it's easy to default to paying off
the technical debt before starting the project, that will eat into delivery
time. You need to pay off the debt at the last possible moment that it is
beneficial to the project. Try to get some deliverables out. If you can do
things in parallel, even better.

If you notice that the cost/benefit makes sense when spread across multiple
projects, but doesn't make sense when the focus is on a single project, then
you should spread the work to pay off the technical debt accordingly.

### Is that it?

Yeah. This is Hypothetical Haycorns. This is where I think out loud. I might
come up with terrible ideas. I might come up with good ideas. Parts of an idea
might be good and parts of an idea might be bad. It doesn't matter to me. I
think it's fun to think about this stuff.

Anyway... until next time! Thanks for reading.

### One more thing

Regardless of how the daily workarounds are recognized and recorded, I think
just recognizing them as symptoms of technical debt could be a powerful thing.
What is and isn't technical debt is often nebulous and a great area of
contention among developers. You can prove this to yourself by searching for
"technical debt" online.

Treating and focusing on daily workarounds as symptoms of technical debt
solidifies its definition with real world context that applies to your
situation. It is real and measurable. The level of measurement is up to you,
but the fact is that you actually spent time working around a problem.

The time it takes to work around the problem is opportunity cost. If you end up
doing the same workaround enough times, that cost increases. Eventually, the time
to fix it saves more time than it takes.

If you find that it _was_ a problem, but it won't be a problem again for the
foreseeable future, then there is no reason to fix it. Fix things that are
current and near-future problems. If it's not a current or near-future problem,
then it's not a problem. If it was, then it would be! I'm going to stop before
I turn into Yogi Berra.

[^fn1]: Fowler, M. (2019, May 21) Technical Debt. Martin Fowler. https://martinfowler.com/bliki/TechnicalDebt.html
[^fn2]: Kazman, R., Ozkaya, I., & Seaman, C. (Eds.). (2016). Technical Debt in Software Engineering (Dagstuhl Seminar 16162) (Vol. 6, No. 4, pp. 110-157). Dagstuhl Reports. https://drops.dagstuhl.de/opus/volltexte/2016/6693/pdf/dagrep_v006_i004_p110_s16162.pdf
[^fn3]: Wiki.c2.com. (n.d.). Technical debt. https://wiki.c2.com/?TechnicalDebt
[^fn4]: Kim, G., Humble, J., Debois, P., & Willis, J. (2016). The DevOps Handbook: How to Create World-Class Agility, Reliability, and Security in Technology Organizations. IT Revolution Press. p. 69.
