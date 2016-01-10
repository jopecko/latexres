My resume in Latex.

To build Docker image:

```
docker build -t jopecko/texlive .
```
To generate resume:
```
docker run -it --rm --volume `pwd`:/tmp jopecko/texlive pdflatex resume.tex
```
