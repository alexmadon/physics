# physics

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