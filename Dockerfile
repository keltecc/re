FROM ubuntu:24.04

RUN apt update \
    && apt install -y texlive texlive-latex-extra texlive-fonts-extra \
    && mktexlsr

WORKDIR /tmp/cv

CMD ["pdflatex", "CV/cv.tex"]
