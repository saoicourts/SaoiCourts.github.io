---
layout: publication
title: "Bundle Networks: Fiber Bundles, Local Trivializations, and a Generative Approach to Exploring Many-to-one Maps"
authors: Nico Courts and Henry Kvinge
publication: International Conference on Learning Representations (ICLR)
year: 2022
img: bundlenets.png
links:
    - text: arXiv
      icon: far fa-file-pdf
      url: https://arxiv.org/abs/2110.06983
    - text: OpenReview
      icon: fas fa-globe
      url: https://openreview.net/forum?id=aBXzcPPOuX
    - text: Code
      icon: fab fa-fw fa-github
      url: https://github.com/NicoCourts/bundle-networks
---

**Abstract:**

Many-to-one maps are ubiquitous in machine learning, from the image recognition model that assigns a multitude of distinct images to the concept of “cat” to the time series forecasting model which assigns a range of distinct time-series to a single scalar regression value. While the primary use of such models is naturally to associate correct output to each input, in many problems it is also useful to be able to explore, understand, and sample from a model's fibers, which are the set of input values {% katex %}x{% endkatex %} such that {% katex %}f(x)=y{% endkatex %} for fixed  in the output space. In this paper we show that popular generative architectures are ill-suited to such tasks. Motivated by this, we introduce a novel generative architecture, Bundle Networks, based on the concept of a fiber bundle from (differential) topology. BundleNets exploit the idea of a local trivialization wherein a space can be locally decomposed into a product space that cleanly encodes the many-to-one nature of the map. By enforcing this decomposition in BundleNets and by utilizing state-of-the-art invertible components, investigating a network's fibers becomes natural.

**Bibtex:**
```
@inproceedings{
  courts2022,
  title={Bundle Networks: Fiber Bundles, Local Trivializations, and a Generative Approach to Exploring Many-to-one Maps},
  author={Nico Courts and Henry Kvinge},
  booktitle={International Conference on Learning Representations},
  year={2022},
  url={https://openreview.net/forum?id=aBXzcPPOuX}
}
```