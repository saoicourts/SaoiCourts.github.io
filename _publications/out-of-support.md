---
layout: publication
title: "One Representation to Rule Them All: Identifying Out-of-Support Examples in Few-shot Learning with Generic Representations"
authors: Henry Kvinge, Scott Howland, Nico Courts, Lauren A. Phillips, John Buckheit, Zachary New, Elliott Skomski, Jung H. Lee, Sandeep Tiwari, Jessica Hibler, Courtney D. Corley,and Nathan O. Hodas.
publication: arXiv preprint
year: 2021
img: out-of-support.png
links:
    - text: arXiv
      icon: far fa-file-pdf
      url: https://arxiv.org/abs/2106.01423
---

**Abstract:**

The field of few-shot learning has made remarkable strides in developing powerful models that can operate in the small data regime. Nearly all of these methods assume every unlabeled instance encountered will belong to a handful of known classes for which one has examples. This can be problematic for real-world use cases where one routinely finds 'none-of-the-above' examples. In this paper we describe this challenge of identifying what we term 'out-of-support' (OOS) examples. We describe how this problem is subtly different from out-of-distribution detection and describe a new method of identifying OOS examples within the Prototypical Networks framework using a fixed point which we call the generic representation. We show that our method outperforms other existing approaches in the literature as well as other approaches that we propose in this paper. Finally, we investigate how the use of such a generic point affects the geometry of a model's feature space.

**Bibtex:**
```
@misc{
  kvinge2021-OOS,
  doi = {10.48550/ARXIV.2106.01423},
  url = {https://arxiv.org/abs/2106.01423},
  author = {Kvinge, Henry and Howland, Scott and Courts, Nico and Phillips, Lauren A. and Buckheit, John and New, Zachary and Skomski, Elliott and Lee, Jung H. and Tiwari, Sandeep and Hibler, Jessica and Corley, Courtney D. and Hodas, Nathan O.},
  title = {One Representation to Rule Them All: Identifying Out-of-Support Examples in Few-shot Learning with Generic Representations},
  publisher = {arXiv},
  year = {2021}
}
```