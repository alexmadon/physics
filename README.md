# Alex's Physics

Well, I do own a PhD in physics. I uploaded that Physics related work to github as a backup and to share it with others.

## PhD Thesis

The directory `phd_thesis` contains my PhD thesis (in French, summary in French and English).

*Ph. D in Physics (European label)*

**Research Topic:** Instabilities and transition to the weak spatiotemporal turbulence.
**Host laboratory:** Centre de Physique Théorique, Marseille, France in collaboration with CEA CEN (Nuclear Studies Centre) Cadarache, France and Kiel University, Germany.
**Research Advisor:** Prof. R. Lima. 
**Mention:** Very honorable with the congratulations of the jury. 
**Presented:** September 1996

To compile the Thesis from TeX to PDF:

```bash
cd phd_thesis/source/
bibtex these96
makeindex these96
pdflatex these96
```

You should then have a PDF file these96.pdf



## Introduction to mathematical Physics

This is the LaTeX source code of my free book on mathematical Physics.

A HTML preview can be seen on wikibooks at:

https://en.wikibooks.org/wiki/Introduction_to_Mathematical_Physics


There are two versions of the book.
For the version in English:

```bash
cd resuengl/source/
bibtex resue
makeindex resue
pdflatex resue
```


For the version in French:

```bash
cd resu/source/
bibtex resu
makeindex resu
pdflatex resu
```


## Papers

In the `papers` directory can be found the preprints two papers I wrote duringt the PhD.

The final references of the publications are:


* Alex Madon, Thomas Klinger, *Spatiotemporal bifurcations in plasma drift-waves.* *Physica D* 91:301-316,1996.
* Alex Madon, Thomas Klinger, *A model for the bifurcations in plasma drift-waves.* *Physica D* 335-342, 1997.
