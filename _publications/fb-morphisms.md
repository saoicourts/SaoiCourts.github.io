---
layout: publication
title: "Fiber Bundle Morphisms as a Framework for Modeling Many-to-Many Maps "
authors: Elizabeth Coda, Nico Courts, Colby Wight, Loc Truong, WoongJo Choi, Charles Godfrey, Tegan Emerson, Keerti Kappagantula, and Henry Kvinge
publication: ICLR Workshop on Geometrical and Topological Representation Learning
year: 2022
img: bundle-morphisms.png
links:
    - text: arXiv
      icon: far fa-file-pdf
      url: https://arxiv.org/abs/2203.08189
    - text: OpenReview
      icon: fas fa-globe
      url: https://openreview.net/forum?id=HcIgi4Zkpe9
    - text: Poster
      icon: far fa-file-pdf
      url: https://openreview.net/attachment?id=HcIgi4Zkpe9&name=Poster
---

**Abstract:**

While it is not generally reflected in the `nice' datasets used for benchmarking machine learning algorithms, the real-world is full of processes that would be best described as many-to-many. That is, a single input can potentially yield many different outputs (whether due to noise, imperfect measurement, or intrinsic stochasticity in the process) and many different inputs can yield the same output (that is, the map is not injective). For example, imagine a sentiment analysis task where, due to linguistic ambiguity, a single statement can have a range of different sentiment interpretations while at the same time many distinct statements can represent the same sentiment. When modeling such a multivalued function {% katex %}f:X\to Y{% endkatex %}, it is frequently useful to be able to model the distribution on {% katex %}f(x){% endkatex %} for specific input {% katex %}x{% endkatex %} as well as the distribution on fiber {% katex %}f^{−1}(y){% endkatex %} for specific output {% katex %}y{% endkatex %}. Such an analysis helps the user (i) better understand the variance intrinsic to the process they are studying and (ii) understand the range of specific input {% katex %}x {% endkatex %}that can be used to achieve output {% katex %}y{% endkatex %}. Following existing work which used a fiber bundle framework to better model many-to-one processes, we describe how morphisms of fiber bundles provide a template for building models which naturally capture the structure of many-to-many processes.

**Bibtex:**
```
@inproceedings{
  coda2022,
  title={Fiber Bundle Morphisms as a Framework for Modeling Many-to-Many Maps},
  author={Elizabeth Coda and Nico Courts and Colby Wight and Loc Truong and WoongJo Choi and Charles Godfrey and Tegan Emerson and Keerti Kappagantula and Henry Kvinge},
  booktitle={ICLR 2022 Workshop on Geometrical and Topological Representation Learning},
  year={2022},
  url={https://openreview.net/forum?id=HcIgi4Zkpe9}
}
```