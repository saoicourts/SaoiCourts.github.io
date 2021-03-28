---
layout: post
title: "Support in Representation Theory and Beyond"
description: "We talk about the idea of 'support' as it arises in different fields of math and the role it plays in modern representation theory."
tags: math rep-theory alg-geom
comments: False
---
For quite a while I have been planning on writing a blog post on something
that I know about more than the average Joe. My crippling case of impostor syndrome in math, however, has kept me from 
using this space to write anything related to my work in math (you'd
be forgiven if you thought from my previous blog posts that I only ever thought 
about issues of race and inequity). I have been feeling relatively good
about myself recently, however, so I figured I would give this a go.

In what follows, I am going to do the best to trace the idea of "support" 
through different subjects in math and to then talk about the role it plays
in modern representation theory. I will do my best to keep things as self-contained
as possible, but it is possible it will be necessary for the reader to hold their nose at certain 
points and be willing to accept results at face value. 

I will assume the reader is okay with (or willing to look up) the following concepts:
- **Basic set theory** -- Can you grasp the ideas of [functions](https://en.wikipedia.org/wiki/Function_(mathematics)) and
[sets](https://en.wikipedia.org/wiki/Set_(mathematics)) as well as some common examples
(e.g. [$\mathbb{R}$](https://en.wikipedia.org/wiki/Real_number) and [$\mathbb{Z}$](https://en.wikipedia.org/wiki/Integer))? Then you're probably fine here.
- **Basic category theory** -- If you're willing to just look up the definitions of 
a [category](https://en.wikipedia.org/wiki/Category_(mathematics)) and a 
[functor between categories](https://en.wikipedia.org/wiki/Functor) (perhaps several times),
I will try to keep the abstract nonsense to a minimum (at least as much as is possible for an article that discusses sheaves).
- **Abstract algebra** -- If you don't know exactly what I mean by "abstract," you probably
don't know it. That's okay! I will try to provide descriptions and links as I go in 
case you aren't familiar with them.

At the end of the day, I am writing about a topic in research-level math so it 
is not expected that everyone will understand 100% of what I am saying. That being said, don't
let that turn you off if you enjoy math and would like to try to learn more! I will do my best to leave
breadcrumbs whenever I can.

{% katexmm %}
# Motivation
We will start by giving some examples of support that many people will have seen before
and try to motivate why people care about them.
## First definitions
The first stop of our journey is the one where I (and likely many other math students)
first experienced the idea of support. Let's begin by giving a definition:

{% def Set support %}
Let $X$ be a set and $f:X\to \mathbb{R}$ be any function. Then <em>the support of $f$</em>
is defined to be the subset
$$\operatorname{supp}(f)=\{x\in X| f(x) \ne 0\}.$$
{% enddef %}

A very slight generalization of this (one many people see in calculus or analysis or topology)
is the following.

{% def Topological support %}
Let $X$ and $Y$ be topological spaces (or metric spaces or just $\mathbb{R}$ if you like). Let 
$f:X\to Y$ be a <b>continuous</b> map. Then the <em>(topological) support of $f$</em>
is defined to be the closed subset
$$\operatorname{supp}(f)=\overline{\{x\in X|f(x)\ne 0\}}.$$
{% enddef %}

Here the line over the top of the set denotes the [*closure* of the set](https://en.wikipedia.org/wiki/Closure_(topology)#Closure_of_a_set), which is (roughly)
the set along with all points that are arbitrarily close to the set. In a sense that 
can be made rigorous, one tends to like sets that are self-contained, and the closure 
ensures that one can take limits while staying in the set.

## Why support?

With these first definitions we can begin to build an intuition for what we are looking at. If we 
are interested in a function $f$ where $f(x)=0$ (or in fact any real number) represents
"$x$ is not interesting", a natural question to ask is "where is this function interesting?"

It is important to notice that there isn't anything *implicitly* unimportant about 
the points where a function is zero. In some ways, these are actually quite interesting!
There are some places where this comes up naturally, though. Let $X=\mathbb{Z}$ and
let $f$ and $g$ both be maps $\mathbb{Z}\to \mathbb{R}$. Then one can quite easily
consider the function $f\ast g$ where
$$(f\ast g)(x) = f(x)\cdot g(x).$$
Now on their face, both $f$ and $g$ are comprised of an infinite amount of data
(they give a real number $y=f(x)$ for all of the infinitely many integers $x\in\mathbb{Z}$),
but what if I told you that $f$ **was supported at finitely-many integers**? What could
you tell me about $f\ast g$?

Well the answer is, you could tell me everything! I mean that in a literal
"I give you a piece of paper and you can write down ALL the data of $f\ast g$"
kind of way! That is because the function $f\ast g$ is going to be *zero whenever
either $f$ or $g$ is*, so it suffices to write out the (now finitely many) values
of $f\ast g$ when $f(x)\ne 0$ and then finish up with saying "and everything else is zero."

If you have taken a calculus course, you may have seen the following:
{% thm Extreme value theorem %}
Let $f:[a,b]\to \mathbb R$ be a continuous function. Then $f$ attains a maximum 
and a minimum value on $[a,b]$.
{% endthm %}
It ends up that this theorem can be easily rephrased in terms of supports!
{% thm Extreme value theorem 2 %}
Let $f:\mathbb R\to \mathbb R$ be a continuous function <em>supported on $[a,b]$</em>.
Then $f$ attains its maximum and minimum values.
{% endthm %}
This indicates how a function *supported on $[a,b]$* can, in some ways, be treated
as if it were just *defined on $[a,b]$* (as long as one is careful about what happens
outside that interval).

A natural extension for people who have seen a bit more calculus would be the following:
{%thm%}
If $f:\mathbb R^n\to \mathbb R$ is a map between Euclidean spaces that is 
supported on a <a href='https://en.wikipedia.org/wiki/Compact_space#Euclidean_space'>compact</a> set
(we say that $f$ is <em>compactly supported</em>), $f$ attains its maximum and minimum values.
{%endthm%}

So support, usually in the form of *compact* or *finite* support, helps us to leverage
the tools we have in bounded intervals like $[a,b]$ with functions that are 
defined over much more unwieldy sets.


{% endkatexmm %}
