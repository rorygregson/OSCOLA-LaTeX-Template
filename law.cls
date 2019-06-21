\ProvidesClass{law}

\LoadClass[a4paper, oneside, 12pt]{book}
%\LoadClass[a4paper, 12pt]{article} %To produce an article rather than a thesis, uncomment this line and comment out the line above

% ************************** GENERAL ******************************

\usepackage{verbatim} %For multi-line comments

% ************************** REFERENCING ******************************

\usepackage[style=oscola, indexing=cite, ibidtracker=false, citereset=chapter]{biblatex}
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
\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}
\setlength{\oddsidemargin}{7mm}
\setlength{\topmargin}{1mm}
\setlength{\headheight}{1cm}
\setlength{\headsep}{1cm}
\setlength{\textheight}{21.4cm}
\setlength{\textwidth}{14.6cm}
\setlength{\footskip}{2.32cm}

%HEADER AND FOOTER
\usepackage{fancyhdr}
\fancyhf{} %Delete default header and footer
\pagestyle{fancy} %Insert aesthetically pleasing header
\fancyfoot[C]{\thepage} %Insert page no

%Format Chapter titles
\usepackage{titlesec}
\titleformat{\chapter}[hang]{\normalfont\huge\bfseries\centering}{\thechapter}{20pt}{\Huge}

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
\setlength\footnotemargin{14pt} %indent footnotes
\setlength{\footnotesep}{20pt} %set spacing between footnotes

%Make URLs appear between greater than and less than signs, as they do in OSCOLA, rather than angled brackets
\renewcommand{\legalstarturl}{\textless}
\renewcommand{\legalendurl}{\textgreater}

%TABLE OF CONTENTS
\usepackage{tocloft}
%Spacing
\setlength\cftparskip{-7pt}
\setlength\cftbeforesecskip{1pt}
\setlength\cftaftertoctitleskip{2pt}
%Centering
\renewcommand{\cfttoctitlefont}{\hfill\Huge\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
%Depth of headings included in ToC
\setcounter{tocdepth}{1} 

% ************************** HYPERLINK CROSS-REFERENCES ******************************
%This should be the last package loaded
\usepackage[colorlinks=true, linktoc=all, hyperfootnotes=false]{hyperref}