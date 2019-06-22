# OSCOLA-LaTeX-Template
A LaTeX template using the OSCOLA referencing system, intended for law theses, articles, and books.

## Introduction

This document briefly explains why and how to use LaTeX and this template. It is only really of relevance to those who have not used LaTeX before.

## Why write your thesis in LaTeX (and not Microsoft Word)?

- LaTeX is better at referencing.  It automatically generates and updates references, so you do not have to.  In addition, it automatically creates tables of authorities and a bibliography.  This is a big advantage: most people spend a lot of time on these tasks.
- LaTeX is more reliable when handling large documents like a thesis; it does not crash as often as MS Word, and it handles cross-references easily.

## Getting started

You can use this template to write your thesis in LaTeX.  To get the template to work, you need to do five things:

1. Download and install LaTeX.  It comes in different distibutions; I recommend [TeX Live](http://tug.org/texlive/).

2. Download and install a LaTeX editor.  I recommend [Texmaker](http://xm1math.net/texmaker/).

3. Set your LaTeX editor to use biber for references.  In Texmaker, click Options>Configure Texmaker. Then set the field “Bib(la)tex” to read “biber %” (without quotes).

4. Download and install Paul Stanley QC’s [BL-OSCOLA package](http://ctan.org/pkg/oscola).  This formats your references so that they are OSCOLA compliant.

5. Download this template (on the right of this page, click "Clone or download" then "Download ZIP") and unzip it.

Once you have done all this, open thesis.tex using your LaTeX editor and compile (in Texmaker, Ctrl+Shift+Q).  Your thesis will be produced as thesis.pdf.

## Guide to files

Neither of the following files can be deleted. Deleting them will prevent the thesis from working.
- thesis.tex: the master file which you use to compile the thesis. It should not be necessary to add much to this. 
- law.cls: the file containing most of the packages, commands and formatting for the thesis file. It is only if you want to tinker with the aesthetics of the thesis that you will have to open and engage with this file. 

When you compile the thesis for the first time, you will get a lot of new files (e.g. thesis.aux); and when you create a table of cases, you will get yet more. These can be deleted, but there is generally no need to do so (and they will simply reappear when you next compile the thesis). Just make sure you don’t delete the files I have just listed.

## Further instructions

Chapter 1 contains some more specific instructions on how to use this template. To understand these, you must read the original code (in chapters/chapter1.tex) against the compiled document.

One point worth appreciating is the function of commenting text out. For instance, if you look within thesis.tex, you will notice that line 1 reads:
%\includeonly{chapters/chapter1}
If you remove % and compile the thesis, only Chapter 1 will compile in thesis.pdf. You can do this for any chapter (e.g. ‘chapters/chapter2’, etc.). This is a helpful way of working on a particular chapter (or if you want to submit just one chapter to a supervisor) as it ensures that the cross-references remain. 

Commenting out text is useful when you are writing the thesis. It means that you can remove text from the main body (i.e. thesis.pdf) without deleting it entirely. So, if you are unsure about an argument but do not want to drop it entirely, you can keep it within your thesis files and return to it later. Similarly, I put in a number of notes to self as I went along (e.g. ‘%Argument very weak here: return to it later!’), which made later editing much easier.

LaTeX produces your thesis as a pdf file.  It is not possible to directly produce a docx file, but you can convert the pdf to docx: see line 5 of thesis.tex for instructions.

If you have any questions, do email me: rory (dot) gregson (at) law (dot) ox (dot) ac (dot) uk

## Acknowledgements

This template is adapted from one developed by Fred Wilmot-Smith.  He wrote the tutorial in chapters/chapter1.tex, as well as much of this readme.  In turn, Fred’s template was an adaptation of another.  He is not entirely sure who wrote the first instance of it, but clearly they deserve thanks too.

Paul Stanley QC also deserves thanks for his BL-OSCOLA package, which makes references OSCOLA compliant.  Without it, this template would have been worthless to lawyers.

