\ProvidesClass{classes/law-article}

\LoadClass[a4paper, 12pt]{article} 

% ************************** GENERAL ******************************

\usepackage{verbatim} %For multi-line comments

% ************************** REFERENCING ******************************

\usepackage[style=oscola, indexing=cite, ibidtracker=false]{biblatex}
\addbibresource{references/articles.bib}
\addbibresource{references/books.bib}
\addbibresource{references/cases.bib}
\addbibresource{references/chapters.bib}
\addbibresource{references/legislation.bib}
\addbibresource{references/other.bib}

%Create indexes to print in table of cases and statutes
\usepackage[splitindex,noautomatic]{imakeidx}
\makeindex[name=casesgb, title={England and Wales}, columns=1,intoc]
\makeindex[name=casesau, title={Australia}, columns=1,intoc]
\makeindex[name=casesca, title={Canada}, columns=1,intoc]
\makeindex[name=casesni, title={Northern Ireland}, columns=1,intoc]
\makeindex[name=casessc, title={Scotland}, columns=1,intoc]
\makeindex[name=casesus, title={The United States}, columns=1,intoc]
\makeindex[name=casesother, title={Other Jurisdictions}, columns=1,intoc]
\makeindex[name=legisen, title={England and Wales}, columns=1,intoc]
\makeindex[name=legiseu, title={European Union}, columns=1,intoc]

%Populate the indexes above using the virtual indexes created by bl-oscola
\DeclareIndexAssociation{gbcases}{casesgb}% ENGLAND
\DeclareIndexAssociation{aucases}{casesau}% AUSTRALIA
\DeclareIndexAssociation{cacases}{casesca}% CANADA
\DeclareIndexAssociation{nicases}{casesni}% NORTHERN IRELAND
\DeclareIndexAssociation{sccases}{casessc}% SCOTLAND
\DeclareIndexAssociation{uscases}{casesus}% UNITED STATES
\DeclareIndexAssociation{eucases}{casesother}% EU
\DeclareIndexAssociation{echrcases}{casesother}% ECHR
\DeclareIndexAssociation{pilcases}{casesother}% PIL
\DeclareIndexAssociation{othercases}{casesother}% ANYTHING ELSE
\DeclareIndexAssociation{gbprimleg}{legisen}% LEGISLATION
\DeclareIndexAssociation{enroc}{legisen}% RULES OF COURT
\DeclareIndexAssociation{euregs}{legiseu}% EU REGS

%Formatting the table of cases and statutes
\indexsetup{level=\section*,toclevel=section,noclearpage}

% ************************** APPEARANCE ******************************

%MARGINS
%Using the wordlike package overrides this
\setlength{\hoffset}{0mm}
\setlength{\oddsidemargin}{7mm}
\setlength{\textwidth}{146mm}

%HEADER AND FOOTER
\usepackage{fancyhdr}
\fancyhf{} %Delete default header and footer
\pagestyle{fancy} %Insert horizontal line under header
\fancyhead[R]{\bfseries\rightmark} %Insert section number and title into header
\fancyfoot[C]{\thepage} %Insert page no

%Section numbering depth
\setcounter{secnumdepth}{4}

\frenchspacing %Removes double spacing for full stops, etc.
\usepackage{microtype} %Improves spacing between words
\usepackage{setspace} %Enables \singlespacing and \doublespacing commands 
\linespread{2} %Double spacing main text (8mm), per Reg 11.  \usepackage[doublespacing]{setspace} produces <8mm gaps

%Single spacing quotations, per Reg 13
\usepackage{quoting}
\quotingsetup{font=singlespace} 

%LISTS
\usepackage{enumitem}
\setlist[enumerate]{itemsep=0px, parsep=0px, leftmargin=1.75cm, rightmargin=1cm, label=(\arabic*)}
\setlist[itemize]{itemsep=0px, parsep=0px, leftmargin=1.75cm, rightmargin=1cm, labelsep=4mm}

%FOOTNOTES
\usepackage[bottom, hang]{footmisc}
\setlength{\footnotesep}{20pt} %set spacing between footnotes

%Make URLs appear between greater than and less than signs, as they do in OSCOLA, rather than angled brackets
\renewcommand{\legalstarturl}{\textless}
\renewcommand{\legalendurl}{\textgreater}

% ************************** HYPERLINK CROSS-REFERENCES ******************************
%This should be the last package loaded
\usepackage[colorlinks=true, linktoc=all, hyperfootnotes=false]{hyperref}
