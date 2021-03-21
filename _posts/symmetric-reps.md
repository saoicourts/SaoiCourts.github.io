---
layout: post
title: "Specht modules and modular representations of the symmetric group"
description: "I take some time to develop the ideas of (modular) representation theory for symmetric groups in the hopes of tying it back in with my research in Schur algebras."
tags: math representations symmetric_groups
comments: true
---

If you've read my past couple posts, you'd be forgiven for thinking that my life was entirely about issues of race and diversity, but of course I am ostensibly a grad student in math and I spend time thinking about that kind of thing as well. I have reached a point in my research where I need to pick up a base level of familiarity with a well-understood subject (the representation theory of $\mathfrak{S}_n$) and I figured it would be a good chance for me to test out a new (for me) method of learning: *learning by teaching*.

I have always enjoyed how much I get out of teaching a subject to others (be it calculus or [quantum Grassmanians](https://github.com/NicoCourts/Grassmannian-Notes)) and I would like to continue doing that. What follows is my attempt to understand and explain the representation theory of $\mathfrak{S}_n$ to students who are at a graduate level of mathematical understanding. I will punt to Wikipedia and nLab as necessary or to any books that I have found useful.

I am learning from a couple different sources, including {% cite james-kerber %}. With that out of the way, let's jump right in!

### Prerequisites and conventions
We are beginning with the base assumption that the reader is familiar with the content of a graduate algebra sequence. In particular, one should understand the fundamentals of groups (symmetric groups in particular) and the ordinary representation theory of a finite group (over $\mathbb C$, say). Of course the fundamentals of linear algebra (and, more generally, modules over an algebra) are required before diving in to any representation theory, so make sure you know about that as well! :)

We will use the notation $\mathfrak S_n$ to denote the symmetric group on $n$ letters and $k$ will denote a field. In general, we will try to use lower-case greek letters (e.g. $\lambda,\alpha,\dots$) when talking about partitions of $n$ (or equivalently Young diagrams).

### Representation theory broadly

I will do my best to motivate what we are trying to do in this by appealing briefly to the primary goals of representation theory: of course, the most basic goal is to understand the representations of an object (in this case, the symmetric group)! By studying the action of a (possibly complex) algebraic structure on a vector space, we see shadows of the object that we can (often) assemble into information about the original object. So then if we are interested in symmetric groups and how they act on things, we can start by trying to completely understand the representation of the object.

From there, we begin to narrow our focus. Recall the theorems of [Maschke](https://en.wikipedia.org/wiki/Maschke%27s_theorem) and [Artin-Wedderburn](https://en.wikipedia.org/wiki/Artin%E2%80%93Wedderburn_theorem) which, for the *semisimple*[^1] case, give us that all representations decompose into direct sums of irreducible representations. Since we understand the direct sum of two representations, this reduces our job to understanding the irreducible (or *simple*[^2]) representations. This is the classical picture of representation theory that one usually sees upon first exposure. An even nicer picture emerges when $k$ is algebraically closed via the theory of [characters](https://en.wikipedia.org/wiki/Character_theory).

Of course, we are interested when things begin to fall apart. Many of the nice parts of the theory depend on handy combinatorial formulas or "dividing by $\|G\|$" to turn out nicely, but both of these break when the characteristic of $k$ is nonzero. For this reason the characterization of representations of (say) a group in positive characteristic turns into a problem of (elementary) number theory and perhaps dynamics where one tries to get a handle on just how badly things can go. The answer sometimes is: "very badly."

One of the main issues is that one no longer gets semisimplicity of their representations, so it is no longer sufficient to understand the simple representations. Now we get *indecomposable* representations that contain submodules, but can no longer be decomposed into a direct sum of smaller nontrivial modules. These modules now stand in as *ersatz-simples* in our new theory but their role is often more complicated than in the semisimple case.

### Ordinary representations
This section is reasonably well understood (both my myself and the math community at large) so I will breeze through most of this, highlighting the main points.

For this section, let $k=\mathbb C$, although for most of it we only require that the characteristic not divide $n!$. 

### References

{% bibliography --file symmetric-reps --cited %}

### Footnotes
[^1]: This is a term in the representation theory of algebras (literally meaning "Artin-Wedderburn applies") representation theorists use to differentiate from *modular* representation theory, which is more problematic---and more interesting!

[^2]: The term "simple" is reminiscent of module theory, and this is indeed the right way to think of these things. In our case, a representation is equivalent to an $A=k\mathfrak S_n$ module, in which case the irreducible representations are precisely the ones that correspond to simple $A$-modules.