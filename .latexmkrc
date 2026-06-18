#`-file-line-error` is similar to `--interaction nonstopmode`, but shows the concrete line number
$pdflatex = 'lualatex -shell-escape -file-line-error -interaction=nonstopmode -synctex=1 %O %S';

#automatically call lualatex/pdflatex (instead of latex)
$pdf_mode = 1;

@default_files = ('thesis.tex');

# Tell latexmk it is allowed to delete bbl files during a clean
$bibtex_use = 2;

#remove more files than in the default configuration
@generated_exts = qw(blg brf acn acr alg aux code ist fls glg glo gz gls glsdefs idx ind lof lot log out thm toc tpt wrt ilg run.xml synctex synctex.gz mw bcf synctex(busy) lol *-SAVE-ERROR *-blx.aux *-blx.bib);
$clean_ext .= ' %R.bbl %R.ist %R.xdy';
