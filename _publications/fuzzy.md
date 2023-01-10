---
layout: publication
title: "Fuzzy Simplicial Networks: A Topology-Inspired Model to Improve Task Generalization in Few-shot Learning"
authors: Henry Kvinge, Zachary New, Nico Courts, Jung H. Lee, Lauren A. Phillips, Courtney D. Corley, Aaron Tuor, Andrew Avila, and Nathan O. Hodas.
publication: AAAI Workshop on Meta-Learning and MetaDL Challenge
year: 2021
img: fuzzy-simplicial.png
links:
    - text: arXiv
      icon: far fa-file-pdf
      url: https://arxiv.org/abs/2009.11253
    - text: PMLR
      icon: fas fa-globe
      url: https://proceedings.mlr.press/v140/kvinge21a.html
---

**Abstract:**

Deep learning has shown great success in settings with massive amounts of data but has struggled when data is limited. Few-shot learning algorithms, which seek to address this limitation, are designed to generalize well to new tasks with limited data. Typically, models are evaluated on unseen classes and datasets that are defined by the same fundamental task as they are trained for (e.g. category membership). One can also ask how well a model can generalize to fundamentally different tasks within a fixed dataset (for example: moving from category membership to tasks that involve detecting object orientation or quantity). To formalize this kind of shift we define a notion of “independence of tasks” and identify three new sets of labels for established computer vision datasets that test a model’s ability to generalize to tasks which draw on orthogonal attributes in the data. We use these datasets to investigate the failure modes of metric-based few-shot models. Based on our findings, we introduce a new few-shot model called Fuzzy Simplicial Networks (FSN) which leverages a construction from topology to more flexibly represent each class from limited data. In particular, FSN models can not only form multiple representations for a given class but can also begin to capture the low-dimensional structure which characterizes class manifolds in the encoded space of deep networks. We show that FSN outperforms state-of-the-art models on the challenging tasks we introduce in this paper while remaining competitive on standard few-shot benchmarks.

**Bibtex:**
```
@InProceedings{kvinge2021,
  title = 	 {Fuzzy Simplicial Networks: A Topology-Inspired Model to Improve Task Generalization in Few-shot Learning},
  author =       {Kvinge, Henry and New, Zachary and Courts, Nico and Lee, Jung H. and Phillips, Lauren A. and Corley, Courtney D. and Tuor, Aaron and Avila, Andrew and Hodas, Nathan O.},
  booktitle = 	 {AAAI Workshop on Meta-Learning and MetaDL Challenge},
  pages = 	 {77--89},
  year = 	 {2021},
  editor = 	 {Guyon, Isabelle and van Rijn, Jan N. and Treguer, Sébastien and Vanschoren, Joaquin},
  volume = 	 {140},
  series = 	 {Proceedings of Machine Learning Research},
  month = 	 {09 Feb},
  publisher =    {PMLR},
  pdf = 	 {http://proceedings.mlr.press/v140/kvinge21a/kvinge21a.pdf},
  url = 	 {https://proceedings.mlr.press/v140/kvinge21a.html},
}
```