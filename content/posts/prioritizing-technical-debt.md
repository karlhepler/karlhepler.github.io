---
title: "Prioritizing Technical Debt"
date: 2023-04-20T11:01:39-04:00
description: How can software engineering teams justify paying down technical debt when they simply don’t have the capacity to do so?
draft: true
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
attention. That is to say that one sentence _really really_ caught my
attention. That is to say that <mark>two words</mark> _really really really_
caught my attention.

> Organizations that don’t pay down technical debt can find themselves so
> burdened with <mark>daily workarounds</mark> for problems left unfixed that
> they can no longer complete any new work. [^fn4]

### Daily Workarounds

Daily workarounds are symptoms of technical debt.
The time it takes to work around problems left unfixed is measurable.

[^fn1]: Fowler, M. (2019, May 21) Technical Debt. Martin Fowler. https://martinfowler.com/bliki/TechnicalDebt.html
[^fn2]: Kazman, R., Ozkaya, I., & Seaman, C. (Eds.). (2016). Technical Debt in Software Engineering (Dagstuhl Seminar 16162) (Vol. 6, No. 4, pp. 110-157). Dagstuhl Reports. https://drops.dagstuhl.de/opus/volltexte/2016/6693/pdf/dagrep_v006_i004_p110_s16162.pdf
[^fn3]: Wiki.c2.com. (n.d.). Technical debt. https://wiki.c2.com/?TechnicalDebt
[^fn4]: Kim, G., Humble, J., Debois, P., & Willis, J. (2016). The DevOps Handbook: How to Create World-Class Agility, Reliability, and Security in Technology Organizations. IT Revolution Press. p. 69.
