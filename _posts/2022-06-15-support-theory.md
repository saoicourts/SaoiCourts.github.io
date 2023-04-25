---
title: "Support in Representation Theory and Beyond"
description: "We talk about the idea of 'support' as it arises in different fields of math and the role it plays in modern representation theory."
tags: math rep-theory alg-geom
draft: true
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

{% katexmm %}
I will assume the reader is okay with (or willing to look up) the following concepts:
- **Basic category theory** -- If you're willing to just look up the definitions of 
a [category](https://en.wikipedia.org/wiki/Category_(mathematics)) and a 
[functor between categories](https://en.wikipedia.org/wiki/Functor) (perhaps several times),
I will try to keep the abstract nonsense to a minimum (at least as much as is possible for an article that discusses sheaves).
- **Abstract algebra** -- If you don't know exactly what I mean by "abstract," you probably
don't know it. That's okay! I will try to provide descriptions and links as I go in 
case you aren't familiar with them.
- **Some light (algebraic) geometry** -- The idea of support (and a lot of interesting
math, really) includes geometry and I tend to be a visual reasoner so it appeals to me 
quite a bit to include some discussion towards the end about [sheaves](https://en.wikipedia.org/wiki/Sheaf_(mathematics)). 

At the end of the day, I am writing about a topic in research-level math so it 
is not expected that everyone will understand 100% of what I am saying. That being said, don't
let that turn you off if you enjoy math and would like to try to learn more! I will do my best to leave
breadcrumbs whenever I can.

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
and a minimum value.
{% endthm %}
As a reminder why this is a meaningful result, notice that if we let $[0,1]$ be our interval,
the function $f(x)=1/x$ doesn't attain its maximum value. As you move $x$ closer
to $0$, $f(x)$ gets arbitrarily large. Thus it has no maximum value on this interval.
The reason this example doesn't contradict our theorem is that $f$ is not continuous on $[0,1]$,
since it isn't even defined for $x=0$.

It ends up that this theorem can be easily rephrased in terms of supports!
{% thm Extreme value theorem 2 %}
Let $f:\mathbb R\to \mathbb R$ be a continuous function <em>supported on $[a,b]$</em>.
Then $f$ attains its maximum and minimum values (in $[a,b]$).
{% endthm %}
This indicates how a function *supported on $[a,b]$* can, in some ways, be treated
as if it were just *defined on $[a,b]$* (as long as one is careful about what happens
outside that interval).

Below we have an example of a (smooth!) function $f:\mathbb R\to \mathbb R$ that is 
supported on the compact set $[-2,2]$. The blue marks denote where the function is zero.
This example was constructed using [bump functions](https://en.wikipedia.org/wiki/Bump_function).
Its minimum value is $-1/e$, attained at $x=1$ and its maximum value
is $1/e$, attained at $x=-1$.
[Click here](https://www.desmos.com/calculator/grgcb4mzpz) or on the image below to 
play with it yourself.

[![A function with compact support](/assets/images/support1.png){: class="center-img" style="width: 50%;"}](https://www.desmos.com/calculator/grgcb4mzpz)

A natural extension for people who have seen a bit more calculus would be the following:
{% thm %}
If $f:\mathbb R^n\to \mathbb R$ is a continuous function that is 
supported on a <a href='https://en.wikipedia.org/wiki/Compact_space#Euclidean_space'>compact</a> set
(we say that $f$ is <em>compactly supported</em>), $f$ attains its maximum and minimum values.
{% endthm %}

So the takeaway is this: there are lots of nice results for functions on finite or 
compact sets that just don't generalize to more unwieldy ones. If our function is 
*compactly* or *finitely* supported, however, we can this gives us the ability to
think of it as a function on a compact or finite set (since everywhere else the 
function is constantly zero).

The role that support (whether compact or not) plays in all of this is it provides
a language to talk about this phenomenon.

# Adding depth: Sheaves
[Algebraic geometry](https://en.wikipedia.org/wiki/Algebraic_geometry) is pretty wonderful and interesting, but has a connotation
for being difficult to understand and full of strange and confusing notation and
techniques. It is, unfortunately, a necessary step along the way to understand
the *support of a module*, so we'll have to think about them for a bit.

In this part I am going to try to keep things as concrete as possible for people
who may not be familiar with the intricacies of topology and algebra. For any 
such neophytes, just keep in mind that you are just getting a (hopefully) illustrative
slice of a deep and interesting theory. For any professionals reading this, 
I apologize in advance for reducing your field to a caricature.

### The set-up
Throughout what follows I will let $X$ be a [topological space](https://en.wikipedia.org/wiki/Topological_space). 
If you are unfamiliar with topology, the idea is to be a more general version of 
a geometric space (one in which distances and angles make sense). It does away
with these notions, and just keeps the notion about whether two points are "near" one another. 
A good example to keep in mind is "the skin of a donut", what mathematicians
call a [torus](https://en.wikipedia.org/wiki/Torus).

![A torus](/assets/images/torus.png){: class="center-img" style="width:60%"}

When I say "open set" or "locally" or "in a neighborhood of a point", you should think
of little oval patches on the surface of this torus.

### Sheaves
If you look up the [dictionary definition](https://www.merriam-webster.com/dictionary/sheaf)
of "sheaf" you will see something like

> **sheaf** (*noun*): <br />
>     a quantity of the stalks and ears of a cereal grass or sometimes other plant material bound together

So... something like this:

![A sheaf of wheat](/assets/images/wheat_sheaf.jpg){: class="center-img" style="width:2in"}

What does this have to do with math, you ask? Well in my opinion the best math
terminology leverages our intuition about "everyday" things[^1]
to give us something tangible to remember when we're working with our abstract mathematical object.
In this case, we think of a (mathematical) sheaf as "bundle" of "stalks", where 
there is one stalk for each point in our space $X$.

"What are the stalks made of?", I hear you asking. Well they can be lots of things!
At their simplest they can be sets of things and that is how we will think of them.
The way that sheaves were first invented were as <span id="function-sheaf">*sheaves of functions*</span> on a space.
For instance, given an open set[^2] $U$ on $X$ (remember: oval on the torus), the continuous
functions on $U$ will be 
$$\mathcal O(U)=\{f:U\to \mathbb R|f\text{ is cts}\}.$$
These "local" pieces coalesce into the [sheaf](https://en.wikipedia.org/wiki/Sheaf_(mathematics))
$\mathcal O$, which becomes a functor
$$\mathcal O:\operatorname{Open}(X)^\text{op}\to \mathbf{Set}$$
which, for every open set of $X$ spits out some data in the form of a set $\mathcal O(U)$.

{% aside %}
There's a bit more to the story here than just a functor, though. Although what 
I have mentioned is true of sheaves (it is necessary), it does not fully define
a sheaf (it is not sufficient). In fact, this describes <a href="https://en.wikipedia.org/wiki/Sheaf_(mathematics)#Presheaves">presheaves</a>.

The <a href="https://en.wikipedia.org/wiki/Sheaf_(mathematics)#Sheaves">missing conditions</a> are related to compatibility of objects over these open sets.
For instance, if you have two objects (continuous functions in our analogy above) defined on open sets that agree
on their overlap, you can glue them together to get an object (function) defined on the 
union of both sets.
{% endaside %}

What's the reason to consider sheaves (instead of just single set)? Well let's 
stick with the idea of sheaves of functions. If we just look at $C^0(X)$, 
the collection of continuous functions on $X$, we completely erase the fact that 
there may be some functions that are defined on a part of $X$ but don't extend to
the whole space. The sheaf approach allows us to keep ALL the local data neatly organized
and coherent package that can be analyzed all together.

### Sheaf Support
Let $\mathcal F$ be a sheaf on $X$. As was hinted above, it makes some sense to think
of $\mathcal F$ as a collection of *things* over *points*. We won't go into how
one can go from the definition above to points, but it involves [colimits](https://en.wikipedia.org/wiki/Limit_(category_theory)#Colimits_2). 
Ignoring the details: given a point $x\in X$, we can denote the **stalk over $x$** as $\mathcal F_x$.

This gives us a way to start to think of $\mathcal F$ as a function, so we're 
starting to see how we can apply the idea of support to $\mathcal F$. But we still 
have a problem: what plays the role of zero? If we want there to be something
that acts like zero, we need another object:

{% def Abelian sheaf %}
A sheaf $\mathcal F$ on a topological space $X$ such that for every open set $U\subseteq X$,
$\mathcal F(U)$ is an <a href="https://en.wikipedia.org/wiki/Abelian_group">abelian (commutative) group</a> is called an <em>abelian sheaf.</em>
{% enddef %}

A large class of useful sheaves arise in this form.

{% aside %}
I am lying a bit in the above definition. But rather than have to dive too quickly into either
<a href="https://en.wikipedia.org/wiki/Sheaf_of_modules">$\mathcal O_X$-modules</a> or 
<a href="https://en.wikipedia.org/wiki/Category_(mathematics)#Small_and_large_categories">small categories</a> and 
<a href="https://en.wikipedia.org/wiki/Module_(mathematics)">$R$-modules</a> (for the 
<a href="https://en.wikipedia.org/wiki/Mitchell%27s_embedding_theorem">Freyd-Mitchell embedding</a>),
I am just giving the scent of things. :)
{% endaside %}

One of the properties of an abelian sheaf is that we have a zero object, which we
will denote $\{0\}$. This is the [trivial group](https://en.wikipedia.org/wiki/Trivial_group).
Using this object, we get the following:

{% def Sheaf support %}
Let $X$ be a topological space and $\mathcal F$ be an abelian sheaf on $X$. Then the
<em>(sheaf) support of $\mathcal F$</em> is defined to be
$$\operatorname{supp}(\mathcal F)=\{x\in X|\mathcal F_x \ne \{0\}\}.$$
{% enddef %}

Now that we have applied our simple idea to sheaves, let's see how to make it do work
with another object:

## Modules
If you haven't seen [modules](https://en.wikipedia.org/wiki/Module_(mathematics)) before,
it may take some time to digest them fully. They play a very important role in 
representation theory (and many other fields of algebra), so I will relegate a discussion
of modules to a later article.

For now, it suffices to think of modules as [vector spaces](https://en.wikipedia.org/wiki/Vector_space)
like $\mathbb R^n$. If you have taken a linear algebra or matrix algebra course, you've 
implicitly studied these objects already. The main way representation theorists think
of modules is as things that are acted upon. Our mantra is that *by studying 
how an object acts on things like modules, we can ascertain facts about the object itself.*

### The prime spectrum of a ring
I am going to throw a few more definitions out at this point, but hopefully we can
use our intuition to guide us through this part.

{% def Spectrum of a ring %}
The <em>spectrum</em> $\operatorname{Spec}(R)$ of a ring $R$ is the set of prime ideals of $R$. 
The <a href="https://en.wikipedia.org/wiki/Zariski_topology#Spectrum_of_a_ring">Zariski topology</a> makes
$\operatorname{Spec}(R)$ into a topological space.
{% enddef %}

The spectrum ends up (at least in the simple cases) telling us a lot about the structure
of $R$. The key example to keep in mind is $R=\mathbb{Z}$, the integers. Here the prime
ideals are the ones generated by the prime numbers, so an example is the ideal consisting of the multiples of 3: $(3)=\{3z | z\in\mathbb{Z}\}.$ You may recall that any number can be
*uniquely* written as a product of powers of primes, so that for instance
$$42 = 2\cdot 3\cdot 7\quad\text{and}\quad 100 = 2^2\cdot 5^2.$$
In fact, this can all be phrased in terms of ideals! The above factorizations correspond to 
*ideal* factorizations
$$(42) = (2) (3) (7)\quad\text{and}\quad(100)=(4)(25).$$
The picture for more complicated rings is less perfect but more interesting. In particular,
ideal factorizations no longer have to be unique.

Extracting a topological space from a ring in a canonical way is the first peek at the
connection between algebra and geometry (though at this point it is just topology).[^3] 
We won't go into a lot of details here, but the idea is that the open sets are connected
to how ideals intersect in the ring, which is related to ideal factorizations.

### The spectrum as a scheme
[Earlier](#function-sheaf) I described sheaves as naturally arising as the functions on a space.
It ends up that this way of phrasing things helps illustrate the algebro-geometric connection:
in some ways **we can treat every ring as the ring of functions on some part of an (affine) scheme.**

### Module sheaves

{% endkatexmm %}


[^1]: Sheaves might be "everyday things" if you're a farmer, I guess.
[^2]: Notice these aren't exactly the stalks I talked about earlier, but you can phrase those in terms of [germs](https://en.wikipedia.org/wiki/Germ_(mathematics)), which further extends the metaphor of sheaves.
[^3]: I am actually interested in doing a series on "Graduate math for non-graduate-students" where I think I could have a lot of fun describing why algebraic geometry is cool and alluring without requiring a lot of prerequisites.