My resume in LaTeX.

## Contact details

The contact details are in `personal.tex`, which git ignores.
Copy the example file and put your values in it:

```
cp personal.example.tex personal.tex
```

If `personal.tex` does not exist, the build uses the placeholder values in `personal.example.tex`.

## Build with Docker

The command uses the TeX Live `basic` image (about 380 MB). The digest pins the image version:

```
docker run --rm -v "$PWD":/work -w /work \
  texlive/texlive:latest-basic@sha256:952fa741fe2119ec3edd2cef2f0abb196f53f0c61072b31e057c2bbae324f639 \
  pdflatex resume.tex
```

## Build with Tectonic

[Tectonic](https://tectonic-typesetting.github.io/) is one binary with no container.
It downloads only the packages that the resume uses, and it caches them.

```
brew install tectonic
tectonic resume.tex
```
