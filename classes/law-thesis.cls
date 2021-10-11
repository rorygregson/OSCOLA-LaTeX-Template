\ProvidesClass{classes/law-thesis}

\LoadClass[a4paper, oneside, 12pt]{book}

% ************************** GENERAL ******************************

\usepackage{verbatim} %For multi-line comments

% ************************** REFERENCING ******************************

\usepackage[style=oscola, indexing=cite, ibidtracker=false, citereset=chapter]{biblatex}
\usepackage[style=british]{csquotes} %Single quotes around article and chapter titles
\addbibresource{references/references.bib}

%Create indexes to print in table of cases and statutes
\usepackage[splitindex,noautomatic]{imakeidx}
\makeindex[name=casesen, title={England and Wales}, columns=1,intoc]
\makeindex[name=casesau, title={Australia}, columns=1,intoc]
\makeindex[name=casesca, title={Canada}, columns=1,intoc]
\makeindex[name=casesni, title={Northern Ireland}, columns=1,intoc]
\makeindex[name=casessc, title={Scotland}, columns=1,intoc]
\makeindex[name=casesus, title={The United States}, columns=1,intoc]
\makeindex[name=casesother, title={Other Jurisdictions}, columns=1,intoc]
\makeindex[name=legisen, title={England and Wales}, columns=1,intoc]
\makeindex[name=legiseu, title={European Union}, columns=1,intoc]

%Populate the indexes above using the virtual indexes created by bl-oscola
\DeclareIndexAssociation{gbcases}{casesen}% ENGLAND
\DeclareIndexAssociation{encases}{casesen}% ENGLAND
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
\DeclareIndexAssociation{enprimleg}{legisen}% LEGISLATION
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
%When printed, there is an extra 2mm on each side
%2mm + 1inch + 7mm oddsignmargin = 34mm left margin, compliant with Reg 10
%146mm text
%32mm remaining + 2mm = 34mm right margin

%HEADER AND FOOTER
\usepackage{fancyhdr}
\fancyhf{} %Delete default header and footer
\pagestyle{fancy} %Insert horizontal line under header
\fancyhead[R]{\bfseries\leftmark} %Insert chapter number and title into header
\fancyfoot[C]{\thepage} %Insert page no

%Format chapter titles
\usepackage{titlesec}
\titleformat{\chapter}{\Huge\bfseries\centering}{\thechapter}{20pt}{}

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
\setlength{\footnotesep}{20pt} %Double spacing footnotes, per Reg 14

%Make URLs appear between greater than and less than signs, as they do in OSCOLA, rather than angled brackets
\renewcommand{\legalstarturl}{\textless}
\renewcommand{\legalendurl}{\textgreater}

%TABLE OF CONTENTS
\usepackage{tocloft} %For customising table of contents appearance
%Format contents title
\renewcommand{\cfttoctitlefont}{\Huge\bfseries\hfill}
\renewcommand{\cftaftertoctitle}{\hfill}
%Depth of headings included in contents
\setcounter{tocdepth}{1}

%CONTENTS AT THE START OF EACH CHAPTER
\usepackage{titletoc}
\newcommand{\chaptoc}{\startcontents\printcontents{}{1}{\setcounter{tocdepth}{9}\singlespacing}} %Creates the \chaptoc command, which inserts a table of contents at the start of a chapter
\startcontents %Necessary for contents at the start of each chapter to work with \includeonly

% ************************** HYPERLINK CROSS-REFERENCES ******************************
%This should be the last package loaded
\usepackage[colorlinks=true, linktoc=all, hyperfootnotes=false]{hyperref}
