#!/bin/bash
# CQU-Beamer-LaTeXPPT Build Script
# Compiles the LaTeX presentation and cleans up intermediate files

set -e

BASEDIR="$(cd "$(dirname "$0")" && pwd)"
cd "$BASEDIR"

TEXFILE="slide"
AUX_FILES=("$TEXFILE.aux" "$TEXFILE.bbl" "$TEXFILE.bcf" "$TEXFILE.blg" \
    "$TEXFILE.fls" "$TEXFILE.ilg" "$TEXFILE.ind" "$TEXFILE.log" \
    "$TEXFILE.nav" "$TEXFILE.ntc" "$TEXFILE.ntg" "$TEXFILE.out" \
    "$TEXFILE.snm" "$TEXFILE.synctex.gz" "$TEXFILE.toc" "$TEXFILE.xref" \
    "$TEXFILE.run.xml" "$TEXFILE.pyg" "$TEXFILE.vrb")

echo "==> Compiling $TEXFILE.tex with XeLaTeX..."
xelatex -shell-escape "$TEXFILE.tex" 2>&1 | tail -20

echo "==> Running BibTeX..."
bibtex "$TEXFILE.aux" 2>&1 | tail -10

echo "==> Second XeLaTeX pass..."
xelatex -shell-escape "$TEXFILE.tex" 2>&1 | tail -20

echo "==> Third XeLaTeX pass..."
xelatex -shell-escape "$TEXFILE.tex" 2>&1 | tail -20

echo "==> Cleaning up intermediate files..."
for f in "${AUX_FILES[@]}"; do
    rm -f "$BASEDIR/$f"
done

if [ -f "$BASEDIR/$TEXFILE.pdf" ]; then
    echo "==> Build successful: $BASEDIR/$TEXFILE.pdf"
    ls -lh "$BASEDIR/$TEXFILE.pdf"
else
    echo "ERROR: PDF was not generated"
    exit 1
fi
