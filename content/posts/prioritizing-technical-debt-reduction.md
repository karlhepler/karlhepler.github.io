---
title: "Prioritizing Technical Debt Reduction"
date: 2023-04-20T11:01:39-04:00
description: How can software engineering teams justify paying down technical debt when they simply don’t have the capacity to do so?
draft: true
---

## Hypothetical

Software engineering teams are not able to take advantage of the _typical_
approach to prioritizing technical debt reduction, in which a predetermined
percentage of their overall capacity is "taken off the top" and reserved for
non-functional work.

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

I'm sure you've [read articles about technical debt](https://www.google.com/search?q=what+is+technical+debt&oq=what+is+technical+debt)
before, so I'll try not to repeat too much.

> Software systems are prone to the build up of **cruft** - deficiencies in
> internal quality that make it harder than it would ideally be to modify and
> extend the system further. Technical Debt is a metaphor, coined by Ward
> Cunningham, that frames how to think about dealing with this cruft, thinking
> of it like a financial debt. The extra effort that it takes to
> add new features is the interest paid on the debt. [^fn1]

The report from Dagstuhl Seminaro 16162, Managing Technical Debt in Software
Engineering, states that "the software engineering community is converging on
defining _technical debt_ as <mark>making technical compromises that are
expedient in the short term</mark>, but that create a technical context that increases
complexity and cost in the long term" [^fn2].

While explaining the idea of technical debt in the context of financial
software, Ward Cunningham said, "if we fail to make our program align with what
we then understood to be the proper way to think about our financial objects,
then we were going to <mark>continually stumble over that disagreement</mark>
and that would slow us down which is like paying interest on a loan" [^fn3].

Here's one more, which is probably my favorite...

> Organizations that don’t pay down technical debt can find themselves so
> burdened with <mark>daily workarounds</mark> for problems left unfixed that
> they can no longer complete any new work. [^fn4]

### Daily Workarounds

TODO

[^fn1]: Fowler, M. (2019, May 21) Technical Debt. Martin Fowler. https://martinfowler.com/bliki/TechnicalDebt.html
[^fn2]: Kazman, R., Ozkaya, I., & Seaman, C. (Eds.). (2016). Technical Debt in Software Engineering (Dagstuhl Seminar 16162) (Vol. 6, No. 4, pp. 110-157). Dagstuhl Reports. https://drops.dagstuhl.de/opus/volltexte/2016/6693/pdf/dagrep_v006_i004_p110_s16162.pdf
[^fn3]: Ward Cunningham. (2009, February 14). Debt Metaphor. YouTube. https://www.youtube.com/watch?v=pqeJFYwnkjE
[^fn4]: Kim, G., Humble, J., Debois, P., & Willis, J. (2016). The DevOps Handbook: How to Create World-Class Agility, Reliability, and Security in Technology Organizations. IT Revolution Press. p. 69.
