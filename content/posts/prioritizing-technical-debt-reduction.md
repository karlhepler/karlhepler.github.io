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

I'm sure you've read articles about technical debt before, so I'll try not to
repeat too much. I will, like so many others, quote Martin Fowler.

> Software systems are prone to the build up of **cruft** - deficiencies in
> internal quality that make it harder than it would ideally be to modify and
> extend the system further. Technical Debt is a metaphor, coined by Ward
> Cunningham, that frames how to think about dealing with this cruft, thinking
> of it like a financial debt. The extra effort that it takes to add new
> features is the interest paid on the debt. [^fn1]

Dave Smith suggests that "technical debt includes those _internal_ things that
you choose not to do now, but which will impede future development if left
undone" [^fn2]. He ges on to say that it "is a measure of how untidy or
out-of-date the development work area for a product is" [^fn2].

It was important to me that we accumulate the learnings we did about the
application over time by modifying the program to look as if we had known what
we were doing all along and to look as if it had been easy to do. The
explanation I gave to my boss was a financial analagy that I called "the
debt metaphor".

If we fail to make our program align with what we then understood to be the
proper way to think about our financial objects, then we were going to
continually stumble over that disagreement and that would slow us down which is
like paying interest on a loan.

### What isn't technical debt?

Given that, it seems to me that technical debt is a metaphor used to explain an
idea. It's intangible and abstract; it's not something that can be
deconstructed or specifically pinpointed.

Why, then, do I often hear software engineers say things like...

* _This ticket is tech debt._
* _Let's work on (prioritize) tech debt._

### What is most commonly done address it?

Ward Cunningham says that "an excellent time to refactor code is right
**before** you extend it" [^fn2].

[^fn1]: Fowler, M. (2019, May 21) Technical Debt. Martin Fowler. https://martinfowler.com/bliki/TechnicalDebt.html
[^fn2]: C2 Wiki. (n.d.). Technical Debt. https://wiki.c2.com/?TechnicalDebt
