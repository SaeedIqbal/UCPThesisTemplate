%
% UCP-FIT PhD Thesis Class v0.2
% Prepared By Saeed Iqbal Khattak <saeed.iqbal@ucp.edu.pk>
%
%MAy30-2023-14:02 PM....

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucpThesis}[2018/11/15 v0.2 UCP-FIT PhD Thesis Class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[12pt, oneside, a4paper]{book}
\RequirePackage[normalem]{ulem}
\RequirePackage{tabularx}
\RequirePackage{amssymb}
\RequirePackage{textcase}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage{tikz}
\RequirePackage{setspace}
\RequirePackage{times}
\RequirePackage{mathptmx}
\RequirePackage[square,sort,numbers, authoryear]{natbib}
\RequirePackage{emptypage}
\RequirePackage{graphics}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{eucal}
\RequirePackage{soul}
\RequirePackage{ragged2e}
\RequirePackage[english]{babel}
%\RequirePackage[usenames, dvipsnames]{color}
\RequirePackage{etoolbox}
\RequirePackage[perpage]{footmisc}
\RequirePackage{ifthen}
\RequirePackage{ifpdf}
\RequirePackage[utf8]{inputenc}
\RequirePackage{epsfig}
\RequirePackage{txfonts} %For specialized MathFonts
\RequirePackage{mathptmx}
%\RequirePackage[lmargin=3.175cm,rmargin=2.54cm,			tmargin=2.54cm,bmargin=2.54cm,				includefoot,bindingoffset=1cm]{geometry}
\RequirePackage[lmargin=3.175cm,rmargin=2.54cm,			tmargin=2.54cm,bmargin=2.54cm,includefoot]{geometry}
\RequirePackage[bookmarks,
bookmarksopen = true,
bookmarksnumbered = true,
breaklinks = true,
linktocpage,
pagebackref = false,
ocgcolorlinks,
colorlinks = true,
linkcolor = blue,
urlcolor  = blue,
citecolor = red,
anchorcolor = green,
hyperindex = true,
hyperfigures
]{hyperref}
% DELETE
%\RequirePackage{showframe}
% END DELETE

%Bibliography
\renewcommand{\bibname}{References}
\newcommand{\showuc}[1]{\MakeUppercase{#1}}
%%%%%%%%%%%%%%%%%% General Settings

%\pdfcompresslevel=9
\RequirePackage{tocloft}

%\RequirePackage{subcaption} % For Subfigure....
%\captionsetup{compatibility=false}
\RequirePackage{babel}
%......
%\usepackage{graphicx, caption, subcaption} % for subfigure and subcaptions
%\RequirePackage{titletoc} % For TOC
\RequirePackage{tocloft} % Modification of TOC
\RequirePackage{textcase}% Modification of TOC
\RequirePackage{etoolbox}% Modification of TOC
%Modification of TOC---------------
%\begin{center}
\addto\captionsenglish{\renewcommand{\contentsname}{\hfill TABLE OF CONTENTS\hfill} % ToC will show "Index" instead of "Content"
}	
%\end{center}

\addtocontents{toc}{~\hfill\textbf{}\par} % placing "Page" on the table of content (page number column -- Heading)
\setcounter{page}{1}

\renewcommand\cftchapfont{\MakeUppercase}
\renewcommand{\cftchapfont}{\scshape}
\RequirePackage{hyperref}
\let\Contentsline\contentsline
\renewcommand\contentsline[4]{\Contentsline{#1}{#2}{#3}{#4}}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % for chapters and Astract, dedication, acknowledgment, declaration, plagiarism  and research completion
%\renewcommand{\thesection}{\thechapter.\arabic{section}}% For removing zeroooooooo...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% User specified LaTeX commands.
\RequirePackage{caption}%----------------------- added newly
%\captionsetup{labelfont={sc,bf}}%----------------------- added newly
%\captionsetup[figure]{labelfont={bf,small,sc},textfont={it,small}}%----------------------- added newly
%\captionsetup[subfloat]{labelfont={bf,small},textfont={it,small}}%----------------------- added newly
%
%\usepackage{caption}
%\RequirePackage{subcaption} %subcaption or subfig
%\RequirePackage{subfig} %---------------- for subfigures
\RequirePackage{babel}
%.....
\RequirePackage{amssymb}
\RequirePackage{esdiff}

\RequirePackage{amstext}
\RequirePackage{longtable}
%\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{multirow}
\RequirePackage{rotating}
\RequirePackage{textcase}
\RequirePackage{setspace}
\RequirePackage{times}
%\RequirePackage{breqn}
\RequirePackage{subfig}
\RequirePackage{epsfig}
\RequirePackage{epstopdf}
\RequirePackage{pdfpages}
\RequirePackage{rotfloat}
\RequirePackage{amsmath,amssymb}
\RequirePackage[all]{xy}
\RequirePackage{esint}
\RequirePackage{multicol}
\RequirePackage{blindtext}
\RequirePackage{mathptmx}% Times Roman font
\RequirePackage[scaled=.90]{helvet}% Helvetica, served as a model for arial
\RequirePackage{xcolor}
\RequirePackage[T1]{fontenc}
\RequirePackage{chngcntr}
\RequirePackage{lipsum} 
\RequirePackage{rotating}
\RequirePackage{sectsty}
\RequirePackage{tikz-uml}
%\RequirePackage{titlesec}
\RequirePackage{xpatch}% http://ctan.org/pkg/etoolbox % 1 convert ONE
\RequirePackage{fmtcount}% http://ctan.org/pkg/fmtcount 1 convert ONE
\RequirePackage{epigraph,varwidth} % for qoutation
\setlength{\epigraphwidth}{0.8\textwidth}
\RequirePackage{babel}
\RequirePackage{tocloft}
%\usepackage[nottoc,notlot,notlof]{tocbibind}
\RequirePackage[nottoc]{tocbibind}
\setlength{\cftbeforesecskip}{5pt}%For Vertical space setting in LOT
\renewcommand{\cftchapafterpnum}{\vspace{-10pt}} %For Vertical space setting between chapters, abstract, acknowledgment,
%.....
%Chapters without sections, the whitespace after the previous and before the next chapter......
\RequirePackage{etoolbox}
\preto\section{%
	\ifnum\value{section}=0\addtocontents{toc}{\vskip10pt}\fi
}
\makeatletter
\patchcmd{\ttl@savel@part}{2.25em}{1em}{}{} % <--- adjust to suit

\def\@part[#1]#2{%
	\ifnum \c@secnumdepth >\m@ne
	\refstepcounter{part}%
	\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
	\else
	\addcontentsline{toc}{part}{#1}%
	\fi
	{\parindent \z@
		\interlinepenalty \@M
		\normalfont
		\ifnum \c@secnumdepth >\m@ne
		\Large\bfseries\hfil\partname~\thepart\hfil
		\par\nobreak
		\fi
		\huge\bfseries\sffamily\raggedleft #2%
		\markboth{}{}\par}%
	\nobreak
	\vskip 3ex
	\@afterheading}
\makeatother

\makeatletter
\@addtoreset{section}{chapter}
\@addtoreset{subsection}{section}
\@addtoreset{subsubsection}{subsection}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
%\RequirePackage{titlesec}%You can use the titlesec package to change the way \paragraph formats the titles and set the secnumdepth counter to four to obtain numbering for the paragraphs
\RequirePackage{datatool}% http://ctan.org/pkg/datatool
\RequirePackage{glossaries} %--alphabetical order acronyms
%\RequirePackage{natbib} %For citet.......
%\RequirePackage[square]{natbib} %For citet.......
\RequirePackage{verbatim} % for multiline comment
\RequirePackage{graphicx} %for scaling of figures
%\RequirePackage[margin=1.1in]{geometry} % for margins
\RequirePackage[charter]{mathdesign} % for good font faces
\RequirePackage{microtype}
\RequirePackage{comment}
\RequirePackage{color, colortbl}
\RequirePackage{float}
\RequirePackage{mathtools}
\RequirePackage{longtable}
\definecolor{Gray}{gray}{0.9}
\RequirePackage{palatino}
\RequirePackage{url} % for good font faces
%\RequirePackage{amsmath}
\RequirePackage{enumitem, array}
\RequirePackage{hyperref}
\hypersetup{colorlinks=true,linkcolor=blue,filecolor=magenta,urlcolor=blue}
\RequirePackage{amsfonts}
\RequirePackage{setspace} % For Line Spacing...
\RequirePackage{booktabs} 
%\RequirePackage{subfig}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{listings}
%\RequirePackage{algorithm}
%\RequirePackage{algorithmic}
\RequirePackage{algpseudocode}
\RequirePackage{hyphenat}
%\RequirePackage{amssymb}
%\RequirePackage{minted}
%\RequirePackage{pygmentex}
%\RequirePackage[table]{xcolor}  %For Table heading color.....
\linespread{1.5}
\RequirePackage{lineno,hyperref}
\RequirePackage{titlesec}%You can use the titlesec package to change the way \paragraph formats the titles and set the secnumdepth counter to four to obtain numbering for the paragraphs
\setcounter{secnumdepth}{4}


% For argmin Setting......
\RequirePackage{amsmath}
\RequirePackage{mathptmx}
\RequirePackage{mathptm}
\RequirePackage{mathtools}
%\RequirePackage{cleveref}
\RequirePackage[capitalise,noabbrev]{cleveref}

\RequirePackage{color}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\lstset{
	language=Python,% choose the language of the code
	numbers=left,% where to put the line-numbers
	aboveskip=1mm,
	belowskip=1mm,
	stepnumber=1,% the step between two line-numbers.        
	numbersep=5pt,% how far the line-numbers are from the code
	backgroundcolor=\color{blue!10},% choose the background color. You must add \usepackage{color}
	showspaces=false,               % show spaces adding particular underscores
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	showstringspaces=false,         % underline spaces within strings
	showtabs=false,                 % show tabs within strings adding particular underscores
	tabsize=4,        % sets default tabsize to 2 spaces
	captionpos=b,                   % sets the caption-position to bottom
	breaklines=true,                % sets automatic line breaking
	breakatwhitespace=true,         % sets if automatic breaks should only happen at whitespace
	title=\lstname,                 % show the filename of files included with \lstinputlisting;
	basicstyle=\linespread{0.0}
}



%\linespread{1}
\setlength{\parindent}{0cm}
\setlength{\parskip}{0.5em}
\setcounter{secnumdepth}{5} % For TOC
\setcounter{tocdepth}{3}
\setlength{\cftbeforetoctitleskip}{-3em}
%.................................
\RequirePackage{blindtext}
\RequirePackage{graphicx} %----------- remove [demo] in your file
%\RequirePackage{subfig} %---------------- for subfigures
%\RequirePackage[T1]{fontenc}
%\RequirePackage[utf8]{inputenc}
\pagestyle{plain}
\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0pt}
%new command for acronym
\newcommand*{\addacronym}[2]{%
	\DTLnewrow{acronyms}%
	\DTLnewdbentry{acronyms}{Acronym}{#1}%
	\DTLnewdbentry{acronyms}{Description}{#2}%
}
%new command for symbol
\newcommand*{\addsymbol}[2]{%
	\DTLnewrow{symbols}%
	\DTLnewdbentry{symbols}{Symbol}{#1}%
	\DTLnewdbentry{symbols}{Description}{#2}%
}
%Formatiing
\newcommand{\tocfill}{\cleaders\hbox{$\m@th \mkern\@dotsep mu . \mkern\@dotsep mu$}\hfill}
\newcommand{\abbrlabel}[1]{\makebox[3cm][l]{\textbf{#1}\ \tocfill}}
\newenvironment{abbreviations}{
	\begin{list}{}{\renewcommand{\makelabel}{\abbrlabel}%
			\setlength{\labelwidth}{3cm}\setlength{\leftmargin}{\labelwidth+\labelsep}%
			\setlength{\itemsep}{0pt}}}
	{\end{list}}

%..................new work
\newcommand{\sortitem}[1]{%
	\DTLnewrow{list}% Create a new entry
	\DTLnewdbentry{list}{description}{#1}% Add entry as description
}
\newenvironment{sortedlist}{%
	\DTLifdbexists{list}{\DTLcleardb{list}}{\DTLnewdb{list}}% Create new/discard old list
}{%
	\DTLsort{description}{list}% Sort list
	\begin{itemize}%
		\DTLforeach*{list}{\theDesc=description}{%
			\item \theDesc}% Print each item
	\end{itemize}%
}
%......end....



% limits underneath
\DeclareMathOperator*{\argmin}{\textit{argmin}} % Jan Hlavacek
\DeclareMathOperator*{\argminB}{argmin}   % Jan Hlavacek
\DeclareMathOperator*{\argminC}{\arg\min}   % rbp

\newcommand{\argminD}{\arg\!\min} % AlfC

\newcommand{\argminE}{\mathop{\mathrm{argmin}}}          % ASdeL
\newcommand{\argminF}{\mathop{\mathrm{argmin}}\limits}   % ASdeL

% limits on side
\DeclareMathOperator{\argminG}{arg\,min} % Jan Hlavacek
\DeclareMathOperator{\argminH}{argmin}   % Jan Hlavacek
\newcommand{\argminI}{\mathop{\mathrm{argmin}}\nolimits} % ASdeL
% argmin ending.........................
%\usepackage{caption}
%\usepackage{subcaption}
% For coding

\makeatletter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LyX specific LaTeX commands.
\pdfpageheight\paperheight
\pdfpagewidth\paperwidth

%.....For List of Graphs
\newcommand{\listexamplename}{List of Graphs}
\newlistof{example}{exp}{\listexamplename}
\newcommand{\example}[1]{%
	\refstepcounter{example}
	\par\noindent\textbf{Example \theexample. #1}
	\addcontentsline{exp}{example}
	{\protect\numberline{\thechapter.\theexample}#1}\par}
%Setting of TOC
%\setlength\cftbeforechapskip{0pt}
\setlength{\cftbeforetoctitleskip}{2cm}
\renewcommand\cftchapafterpnum{\vskip-13pt}
\renewcommand\cftsecafterpnum{\vskip-11pt}
\renewcommand\cftsubsecafterpnum{\vskip-9pt}
\renewcommand\cftsubsubsecafterpnum{\vskip-7pt}

% Setting for LoF

\renewcommand{\cftchapdotsep}{\cftdotsep}
\setlength{\cfttabindent}{0cm}
\setlength{\cftfigindent}{0cm}
\renewcommand*\cftfigpresnum{Fig~}
\renewcommand*\cfttabpresnum{Tab~}
\settowidth{\cftfignumwidth}{\cftfigpresnum}
\settowidth{\cfttabnumwidth}{\cfttabpresnum}
\renewcommand{\cftfigaftersnumb}{~~\quad\quad}
\renewcommand{\cfttabaftersnumb}{~~\quad\quad}
\newlength{\@tabprefixlen}
\newlength{\@figprefixlen}
%\addtolength{\cftfignumwidth}{\@figprefixlen}%For Horizontal Spacing between Figure Number and Caption of a Figure
\addtolength{\cfttabnumwidth}{\@tabprefixlen}
\addtolength{\cftfignumwidth}{\@figprefixlen}
\settowidth{\@figprefixlen}{\cftfigfont\cftfigpresnum}
\settowidth{\@tabprefixlen}{\cfttabfont\cfttabpresnum}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ENDNDDDDDDDDDDDDDDDDd
%Formating for Chapter, Section and subsections....

%\renewcommand{\thechapter}{\NUMBERstring{chapter}}%1 convert ONE
%\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}%1 convert ONE

\titleformat{\chapter}[display]{\bfseries\filcenter}{\huge\MakeUppercase{\chaptername{:}~\NUMBERstring{chapter}}}{0.5ex}{\huge}[\vskip0.5ex{\titlerule[0pt]}]

\titleformat{\section}[hang]{\Large\bfseries\filcenter}{\MakeUppercase{\thesection}}{1em}{}
\titleformat{\subsection}[hang]{\large\bfseries\italics}{\thesubsection}{1em}{}
\let\italics\itshape
%\titleformat{\subsubsection}[hang]{\large\italics\bfseries\filcenter}{\italics\itshape\textit{\thesubsubsection}}{1em}{}
%%%%%%%%%%%%%%ENDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDdd

\DeclareGraphicsExtensions{.png, .jpg, .jpeg, .pdf, .eps, .ps}
%%%%%%%%%%%%%%%%%%
\newcommand{\signedby}[1]{%
	\vspace{-0.5cm}
	\par\noindent\hspace{3.5cm}\hrulefill\par
	\par\noindent\hspace{3.5cm}{\large #1}\par
	\vspace{0cm}
	\par\noindent\hspace{3.5cm}{\large Dated: } \par
}
%Supervisor Sign for Research Completion.
\newcommand{\SupervisorSignedby}[1]{%
	\vspace{-0.5cm}
	\par\noindent\hspace{7.5cm}\hrulefill\par
	\vspace{-0.3cm}
	\begin{center}	
		\par\noindent\hspace{7.5cm}{\large #1}\par
		
		\par\noindent\hspace{5.5cm}{\large}\par
	\end{center}
}
\newcommand{\longsignedby}[1]{%
	\par\hspace{.2cm}\begin{minipage}[t]{.55\columnwidth}
		\noindent#1
	\end{minipage}
	\hfill
	\begin{minipage}[t]{.35\columnwidth}
		\raggedright{Signature: \hrulefill}
	\end{minipage}
}
\newcommand{\stsignedby}[1]{%
	\par\hspace{.1cm}\begin{minipage}[t]{.35\columnwidth}
		\noindent#1
	\end{minipage}
	%	\hfill
	\begin{minipage}[t]{.60\columnwidth}
		\raggedright{Signature of Student: \hrulefill}
	\end{minipage}
}
%Supervisor Signed for Research Completion
\newcommand{\supervisorSignedby}[1]{%
	\par\hspace{-0.5cm}\begin{minipage}[t]{.05\columnwidth}
		\noindent#1
	\end{minipage}
	%	\hfill
	\begin{minipage}[t]{.99\columnwidth}
		%	\begin{flushright}
			\textbf{Supervisor's Name: \@supervisor} \\
			\@designation \\
			\@faculty \\ 
			\@university \\
			\begin{flushright}
				\rule{7cm}{.1pt} \\
				\SupervisorSignedby{Signature}
				%\hspace{5cm}\raggedright{\hrulefill}
			\end{flushright} 
			
			%	\end{flushright}
	\end{minipage}
}
%CoSupervisor Signed for Research Completion
%\newcommand{\CoSupervisorSignedby}[1]{%
	%	\par\hspace{-0.5cm}\begin{minipage}[t]{.05\columnwidth}
		%		\noindent#1
		%	\end{minipage}
	%	%	\hfill
	%	\begin{minipage}[t]{.99\columnwidth}
		%		%	\begin{flushright}
			%		\textbf{Co-Supervisor's Name (If applicable): \@cosupervisor} \\
			%		\@codesignation \\
			%		\@codepartment \\ 
			%		\@couniversity \\
			%		\begin{flushright}
				%			\SupervisorSignedby{Signature}
				%			%\hspace{5cm}\raggedright{\hrulefill}
				%		\end{flushright} 
			%		
			%		%	\end{flushright}
		%	\end{minipage}
	%}
%Examiners fo Certificate of Examiners Page.
\newcommand{\examiners}[1]{%
	\par\hspace{-1.0cm}\begin{minipage}[t]{.05\columnwidth}
		\noindent#1
	\end{minipage}
	%	\hfill
	\begin{minipage}[t]{.99\columnwidth}
		\begin{tabular}{ll} %Dr. Iram Noreen Dr. Mubashar Mushtaq For external examiners
			\textbf{External Examiner} & 	\hspace{0.8in}\textbf{External Examiner} \\ ~ \\
			Signature: & \hspace{0.75in} Signature: \\ 
			%Name:\rule{4cm}{.1pt} & \hspace{0.8in}Name:\rule{4cm}{.1pt} \\ 
			Name:~\uline{\textsc{\@externalexaminerOne}} & \hspace{0.8in}Name:~\uline{\textsc{\@externalexaminerTwo}} \\
			Date:\rule{4.2cm}{.1pt} & \hspace{0.8in}Date:\rule{4.2cm}{.1pt} \\
		\end{tabular}
		
		\vspace{0.5in}
		\begin{tabular}{p{2.5in}p{5.8in}}
			\textbf{Internal Examiner} & \hspace{0.4cm}	\textbf{Dean} \\ 
			&  \hspace{0.5cm}\@department  \\ 
			&  \hspace{0.5cm}\@faculty  \\
			&  \hspace{0.5cm}\@university  \\ %\vspace{0.3in}
			Signature: & \hspace{0.5cm}Signature: \\ ~ \\ %\vspace{0.3in}
			Name:~\uline{\textsc{\@internalexaminer}} & \hspace{0.5cm} Name:~\uline{\textsc{\@deanname}} \\ 	Date:\rule{4.2cm}{.1pt} & \hspace{0.5cm} Date:\rule{4.2cm}{.1pt} \\
		\end{tabular}
		
		%	\begin{tabular}{ll}
			%	\textbf{Dean} & \\ 
			%	\@department & \\ 
			%	\@university & \\
			%	Signature: & \\ ~ \\
			%	Name:\rule{4cm}{.1pt} &  \\ ~ \\
			%	
			%	Date:\rule{4.2cm}{.1pt} &  \\
			%\end{tabular}
		\end{minipage}
	}
	%Dean Signature for Certificate of Examiners Page.
	\newcommand{\deanSig}[1]{%
		\par\hspace{-0.5cm}\begin{minipage}[t]{.05\columnwidth}
			\noindent#1
		\end{minipage}
		%	\hfill
		\begin{minipage}[t]{.99\columnwidth}
			%		\begin{tabular}{ll}
				\textbf{Dean}  \\ 
				\@department   \\ 
				\@university   \\ 
				Signature: \\ 
				Name:\rule{4cm}{.1pt} \\ 
				Date:\rule{4cm}{.1pt}  \\
				%		\end{tabular}
		\end{minipage}
	}
	%\newcommand{\examiners}[1]{%
		%	\par\hspace{-0.5cm}\begin{minipage}[t]{.05\columnwidth}
			%		\noindent#1
			%	\end{minipage}
		%	%	\hfill
		%	\begin{minipage}[t]{.99\columnwidth}
			%		\begin{tabular}{ll}
				%			\textbf{Internal Examiner} & 	\hspace{2in}\textbf{External Examiner} \\ ~ \\
				%			Signature: & \hspace{2in} Signature: \\ 
				%			Name:\rule{4cm}{.1pt} & \hspace{2in}Name:\rule{4cm}{.1pt} \\ 
				%			Date:\rule{4.2cm}{.1pt} & \hspace{2in}Date:\rule{4.2cm}{.1pt} \\
				%		\end{tabular}
			%		
			%		\vspace{0.5in}
			%		
			%		\begin{tabular}{ll}
				%			\textbf{Dean} & \\ 
				%			\@faculty & \\ 
				%			\@university & \\ \\ \\
				%			Signature: & \\ ~ \\
				%			Name:\rule{4cm}{.1pt} &  \\ ~ \\
				%			
				%			Date:\rule{4.2cm}{.1pt} &  \\
				%		\end{tabular}
			%	\end{minipage}
		%}
	%%Dean Signature for Certificate of Examiners Page.
	%\newcommand{\deanSig}[1]{%
		%	\par\hspace{-0.5cm}\begin{minipage}[t]{.05\columnwidth}
			%		\noindent#1
			%	\end{minipage}
		%	%	\hfill
		%	\begin{minipage}[t]{.99\columnwidth}
			%		%		\begin{tabular}{ll}
				%			\textbf{Dean}  \\ 
				%			\@department   \\ 
				%			\@university   \\ 
				%			%			\vspace{1cm}
				%			Signature: \\ 
				%			Name:\rule{4cm}{.1pt} \\ 
				%			Date:\rule{4cm}{.1pt}  \\
				%			%		\end{tabular}
			%	\end{minipage}
		%}
	\newcommand{\NameofStudent}[1]{%
		\par\hspace{.1cm}\begin{minipage}[t]{.35\columnwidth}
			\noindent#1
		\end{minipage}
		%	\hfill
		\begin{minipage}[t]{.60\columnwidth}
			%\raggedright{Name of Student: \underline{\@authoronename}}
			Name of Student: \uline{\hspace{1em}\textsc{\@authoronename}\hspace{6em}}
		\end{minipage}
	}
	\newcommand{\RegNumber}[1]{%
		\par\hspace{.1cm}\begin{minipage}[t]{.35\columnwidth}
			\noindent#1
		\end{minipage}
		%	\hfill
		\begin{minipage}[t]{.60\columnwidth}
			%\raggedright Registration Number: \underline{L1F16PHDC0002} \\
			Registration Number:\uline{\hspace{0.3em}\textsc{{\@authoroneroll}}\hspace{3em}}
		\end{minipage}
	}
	%Date for Declaration Page
	\newcommand{\datedec}[1]{%
		\par\hspace{.1cm}\begin{minipage}[t]{.35\columnwidth}
			\noindent#1
		\end{minipage}
		%	\hfill
		\begin{minipage}[t]{.60\columnwidth}
			\raggedright{Date: \hrulefill}
		\end{minipage}
	}
	%Date for Research Completion Page
	\newcommand{\datecom}[1]{%
		\par\hspace{.1cm}\begin{minipage}[t]{0\columnwidth}
			\noindent#1
		\end{minipage}
		%	\hfill
		\begin{minipage}[t]{.50\columnwidth}
			Date: \hrulefill
		\end{minipage}
	}
	%%%%%%%%%%%%%%%%%%
	\newcommand{\yellow}[1]{\hl{#1}}
	\newcommand{\comments}[1]{} 
	%%%%%%%%%%%%%%%%%%
	\AfterEndPreamble{\maketitle}
	%%%%%%%%%%%%%%%%%%
	
	\pagestyle{fancy}
	%..... Removing Header line and title form page-header
	%\renewcommand{\chaptermark}[1]{\markboth{\thechapter. #1 }{}}
	%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
	\renewcommand{\chaptermark}[1]{\markboth{}{}}
	\renewcommand{\sectionmark}[1]{\markright{}}
	\fancyhf{}
	\fancyhead[RO]{\footnotesize\rightmark}
	\fancyhead[LE]{\footnotesize\leftmark}
	\fancyfoot[C]{\thepage}
	\fancypagestyle{plain}{
		\fancyhead{}
		\renewcommand{\headrulewidth}{0pt}
	}
	%..... Removing Header line and title form page-header
	%\fancyhf{} % sets both header and footer to nothing
	\renewcommand{\headrulewidth}{0pt}
	
	\newcommand{\submittedtext}{{A thesis submitted for the degree of}}
	
	% Experiment With This:
	%\renewcommand{\@makechapterhead}[1]{%
		%  \vspace*{60\p@}%
		%  {\parindent \z@ \raggedright \normalfont
			%    \vspace{5pt}%                                 % add vertical space
			%    \ifnum \c@secnumdepth >\m@ne
			%        \Large\bfseries\scshape \@chapapp\space \thechapter % Chapter number
			%        \par\nobreak
			%        \vskip 20\p@
			%    \fi
			%    \interlinepenalty\@M
			%    \Huge\bfseries \scshape #1\par                         % chapter title
			%    \nobreak
			%    \vskip 40\p@
			%  }}
	
	% DECLARATIONS
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	% The Roll Number of Student
	\def\rollnumber#1{\gdef\@rollnumber{#1}}
	% The year and term the degree will be officially conferred
	\def\degreeyear#1{\gdef\@degreeyear{#1}}
	\def\degreemonth#1{\gdef\@degreemonth{#1}}
	% The full (unabbreviated) name of the degree
	\def\degree#1{\gdef\@degree{#1}}
	% The name of your college or department
	\def\department#1{\gdef\@department{#1}}
	\def\faculty#1{\gdef\@faculty{#1}}
	% The name of your CoSupverisor college or department.
	\def\codepartment#1{\gdef\@codepartment{#1}}
	\def\cofaculty#1{\gdef\@cofaculty{#1}}
	% The name of your University
	\def\university#1{\gdef\@university{#1}}
	% The name of your Co-Supervisor University
	\def\couniversity#1{\gdef\@couniversity{#1}}
	% Defining the crest
	\def\crest#1{\gdef\@crest{#1}}
	% Supervisor Name
	\def\supervisor#1{\gdef\@supervisor{#1}}
	% Supervisor Designation
	\def\designation#1{\gdef\@designation{#1}}
	% CoSupervisor Designation
	\def\codesignation#1{\gdef\@codesignation{#1}}
	\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
	\def\sessionduration#1{\gdef\@sessionduration{#1}}
	% Author Names
	\def\authorone#1#2{
		\gdef\@authoronename{#1}
		\gdef\@authoroneroll{#2}
	}
	\def\authortwo#1#2{
		\gdef\@authortwoname{#1}
		\gdef\@authortworoll{#2}
	}
	\def\authorthree#1#2{
		\gdef\@authorthreename{#1}
		\gdef\@authorthreeroll{#2}
	}
	\def\authorfour#1#2{
		\gdef\@authorfourname{#1}
		\gdef\@authorfourroll{#2}
	}
	% Degree Name
	\def\DegreeName#1{\gdef\@DegreeName{#1}}
	% Degree Name
	\def\ProgName#1{\gdef\@ProgName{#1}}
	% Campus City
	\def\campuscity#1{\gdef\@campuscity{#1}}
	% Committee Examination Names
	\def\internalexaminer#1{\gdef\@internalexaminer{#1}}
	\def\externalexaminerOne#1{\gdef\@externalexaminerOne{#1}}
	\def\externalexaminerTwo#1{\gdef\@externalexaminerTwo{#1}}
	%\def\externalexaminer#1#2{\gdef\@externalexaminer{#1\par\hspace{0cm}#2}}
	% Dean Names
	\def\deanname#1{\gdef\@deanname{#1}}
	% Director Name
	\def\directorname#1{\gdef\@directorname{#1}}
	% HoD Name
	\def\hodname#1{\gdef\@hodname{#1}}
	% GPC Coordinator Name
	\def\fypcoordinatorname#1{\gdef\@fypcoordinatorname{#1}}
	
	%%%%%%%%%%%%%%%%%%%%%%%%%
	% Some Important Environments
	\newenvironment{alwayssingle}{%
		\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
		\else\newpage\fi}
	{\if@restonecol\twocolumn\else\newpage\fi}
	\newenvironment{alwaysdouble}{%
		\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn\doublespace
		\else\newpage\fi}
	{\if@restonecol\twocolumn\doublespace\else\newpage\fi}
	\renewcommand{\maketitle}{%
		\begin{alwayssingle}
			\renewcommand{\footnotesize}{\small}
			\renewcommand{\footnoterule}{\relax}
			\thispagestyle{empty}
			% Outer Title Page............. Inner Title Page - Author:Saeed Iqbal
			\begin{center}
				\par{\fontsize{16}{16}\selectfont \@title}
				\vspace{1.5cm}
				\begin{figure}[h]\centering
					%		\includegraphics[width=.40\columnwidth]{ThesisFigs/mono}
					\includegraphics[width=4cm,height=4cm]{ThesisFigs/mono}
				\end{figure}
				\vspace{1cm}
				%		\par{\fontsize{12}{12}\selectfont A Thesis submitted in partial fulfillment \\ of the requirement for the degree of}\\~\\
				%		\vspace{0.5cm}
				\par{\fontsize{14}{14}\selectfont \MakeUppercase{\@DegreeName} \\ IN \\ \MakeUppercase{\@ProgName}} \\~\\
				\vspace{2.5cm}
				{\fontsize{14}{14}\selectfont Submitted By \\
					\vspace{0.1cm}
					%		\begin{tabular}{c}
						\@authoronename \\ 
						\vspace{0.1cm}
						\@authoroneroll \\
						%		\end{tabular}
				}\par
				%		\vspace{0.25cm}
				%		\par{\fontsize{16}{16}\selectfont Session
					%		}{\fontsize{16}{16}\selectfont\@sessionduration}\par
				%		\vspace{0.75cm}
				%		\ifx\@cosupervisor\undefined
				%		\vspace{1cm}
				%		\par{\fontsize{14}{14}\selectfont Supervised by}\\~\\
				%		{\fontsize{14}{14}\selectfont \@supervisor}\par
				%		\else
				%		\vspace{0.5cm}
				%		\par{\fontsize{14}{14}\selectfont Supervised by}\\~\\
				%		{\fontsize{14}{14}\selectfont \@supervisor}\par
				%		\vspace{0.5cm}
				%		\par{\fontsize{14}{14}\selectfont Co-Supervised by}\\~\\
				%		{\fontsize{14}{14}\selectfont \@cosupervisor}\par
				%		\fi
				\vspace{.5cm}
				%\par{\fontsize{21}{21}\selectfont \textbf{Bachelors of \@degreename}}\par
				%\vspace{1cm}
				%\par{\fontsize{16}{16}\selectfont A thesis submitted in partial fulfillment\\of the
					%	requirements for the degree of \emph{Bachelors of \@degreename}\\at
					%	the \emph{National University of Computer and Emerging
						%	Sciences}}\par
				%		\vspace{1cm}
				
				\vspace{3cm}
				\par{\fontsize{14}{14}\selectfont \MakeUppercase{\@department}}\\ \par%\vspace{0.5cm}
				\par{\fontsize{13.9}{13.9}\selectfont \MakeUppercase{\@faculty}} \\ \par
				\par{\fontsize{14}{14}\selectfont UNIVERSITY OF CENTRAL PUNJAB} \\ %\@campuscity, PAKISTAN}
			\par
			\vspace{0.5cm}
			\par{\fontsize{12}{12}\selectfont \@degreemonth, \@degreeyear}\par
		\end{center}
		\pagebreak
		%\renewcommand{\headrulewidth}{0pt}
		\thispagestyle{empty}
		%\end{alwayssingle}
		%}
	%%\newpage
	%% 	\null\vfill
	%%	\cleardoublepage
	%\renewcommand{\maketitle}{%
		%	\begin{alwayssingle}
			%		\renewcommand{\footnotesize}{\small}
			%		\renewcommand{\footnoterule}{\relax}
			%		\thispagestyle{empty}
			
			% Inner Title Page - Author:Saeed Iqbal
			\begin{center}
				\par{\fontsize{16}{16}\selectfont \@title}
				\vspace{1.5cm}
				\begin{figure}[h]\centering
					%	\includegraphics[width=.40\columnwidth]{ThesisFigs/mono}
					\includegraphics[width=4cm,height=4cm]{ThesisFigs/mono}
				\end{figure}
				\vspace{0.5cm}
				\par{\fontsize{12}{12}\selectfont A thesis submitted in partial fulfillment \\ of the requirement for the degree of}\\~\\
				\vspace{0.5cm}
				\par{\fontsize{14}{14}\selectfont \MakeUppercase{\@DegreeName} \\ IN \\ \MakeUppercase{\@ProgName}} \\~\\
				\vspace{0.5cm}
				{\fontsize{14}{14}\selectfont Submitted By \\
					\vspace{0.1cm}
					%		\begin{tabular}{c}
						\@authoronename \\ 
						\vspace{0.1cm}
						\@authoroneroll \\
						%		\end{tabular}
				}\par
				%		\vspace{0.25cm}
				%		\par{\fontsize{16}{16}\selectfont Session
					%		}{\fontsize{16}{16}\selectfont\@sessionduration}\par
				%		\vspace{0.75cm}
				\ifx\@cosupervisor\undefined
				\vspace{1cm}
				\par{\fontsize{14}{14}\selectfont Supervised by}\\
				{\fontsize{14}{14}\selectfont \@supervisor}\par
				\else
				\vspace{0.5cm}
				\par{\fontsize{14}{14}\selectfont Supervised by}\\
				{\fontsize{14}{14}\selectfont \@supervisor}\par
				\vspace{0.5cm}
				\par{\fontsize{14}{14}\selectfont Co-Supervised by}\\
				{\fontsize{14}{14}\selectfont \@cosupervisor}\par
				\fi
				%		\vspace{.5cm}
				%\par{\fontsize{21}{21}\selectfont \textbf{Bachelors of \@degreename}}\par
				%\vspace{1cm}
				%\par{\fontsize{16}{16}\selectfont A thesis submitted in partial fulfillment\\of the
					%	requirements for the degree of \emph{Bachelors of \@degreename}\\at
					%	the \emph{National University of Computer and Emerging
						%	Sciences}}\par
				%\vspace{1cm}
				
				\vspace{0.5cm}
				\par{\fontsize{14}{14}\selectfont \MakeUppercase{\@department}}\\ \par%\vspace{0.5cm}
				\par{\fontsize{13.9}{13.9}\selectfont \MakeUppercase{\@faculty}} \\ \par
				\par{\fontsize{14}{14}\selectfont UNIVERSITY OF CENTRAL PUNJAB} \\ %\@campuscity, PAKISTAN}
			\par
			\vspace{0.5cm}
			\par{\fontsize{12}{12}\selectfont \@degreemonth, \@degreeyear}\par
		\end{center}
		%  	\null\vfill
		%	\cleardoublepage
		
		%
		%	% Plagiarism Undertaking
		%	\thispagestyle{empty}
		%	\vspace{1.5cm}
		%	{\centering \Large \textbf{Student's Declaration}\par}
		%	\vspace{0.5cm}
		%	\ifx\@authortwoname\undefined I \else We \fi declare that this project
		%	titled ``\emph{\@title}'', submitted as requirement for the award of degree
		%	of Bachelors in \@ProgName, does not contain any material previously
		%	submitted for a degree in any university; and that to the best of
		%	\ifx\@authortwoname\undefined my \else our \fi knowledge, it does not
		%	contain any materials previously published or written by another person
		%	except where due reference is made in the text.
		%	\par
		%	\ifx\@authortwoname\undefined I \else We \fi
		%	understand that the management of {\@department}, National University of
		%	Computer and Emerging Sciences, has a zero tolerance policy towards
		%	plagiarism. Therefore, 
		%	\ifx\@authortwoname\undefined I, as an author \else We, as authors \fi
		%	of the above-mentioned thesis,
		%	solemnly declare that no portion of 
		%	\ifx\@authortwoname\undefined my \else our \fi thesis has been plagiarized
		%	and any material used in the thesis from other sources is properly
		%	referenced.
		%	\par 
		%	\ifx\@authortwoname\undefined I \else We \fi
		%	further understand that if 
		%	\ifx\@authortwoname\undefined I am \else We are \fi
		%	found guilty of any form of plagiarism in
		%	the thesis work even after graduation, the University reserves the right
		%	to revoke 
		%	\ifx\@authortwoname\undefined my \else our \fi
		%	BS degree. 
		%	\par
		%	\ifx\@authoronename\undefined \else
		%		\vspace{1cm}{\longsignedby{\@authoronename}}	\fi
		%	\ifx\@authortwoname\undefined \else
		%		\vspace{1cm}{\longsignedby{\@authortwoname}}	\fi
		%	\ifx\@authorthreename\undefined \else
		%		\vspace{1cm}{\longsignedby{\@authorthreename}}	\fi
		%	\ifx\@authorfourname\undefined \else
		%		\vspace{1cm}{\longsignedby{\@authorfourname}}	\fi
		%	\signedby{Verified by Plagiarism Cell Officer}
		%	\cleardoublepage
		%
		%	% Certificate of Approval
		%	\thispagestyle{empty}
		%	\vspace{1.5cm}
		%	{\centering \Large \textbf{Certificate of Approval}\par}
		%	\vspace{0.5cm}
		%	\begin{figure}[h]\centering
			%		\includegraphics[width=.30\columnwidth]{ThesisFigs/FASTLogo}
			%	\end{figure}
		%	\par The \@department, National University of Computer and Emerging
		%	Sciences, accepts this thesis titled \emph{\@title}, submitted by
		%	\@authoronename\xspace(\@authoroneroll)%
		%	\ifx\@authortwoname\undefined\else, 
		%		\ifx\@authorthreename\undefined and \else \fi  
		%		\@authortwoname\xspace(\@authortworoll)%
		%	\fi
		%	\ifx\@authorthreename\undefined\else,
		%		\ifx\@authorfourname\undefined and \else \fi  
		%		\@authorthreename\xspace(\@authorthreeroll)%
		%	\fi
		%	\ifx\@authorfourname\undefined\else, and  
		%		\@authorfourname\xspace(\@authorfourroll)%
		%	\fi, in its current form, and it is satisfying the dissertation requirements
		%	for the award of Bachelors Degree in \@ProgName.
		%	\par\vspace{.25cm}
		%	\par \textbf{Supervisor}
		%	\longsignedby{\@supervisor}
		%	\ifx\@cosupervisor\undefined\else
		%		\par \textbf{Co-Supervisor}
		%		\longsignedby{\@cosupervisor}
		%	\fi
		%	\par
		%	%\par \textbf{Internal Examiner}
		%	%\longsignedby{\@internalexaminer}
		%	%\par\vspace{.15cm}
		%	%\par\textbf{External Examiner}
		%	%\longsignedby{\@externalexaminer}
		%	%\par
		%	\vspace{1.5cm}
		%	\begin{center}
			%	\par \rule{0.5\textwidth}{.4pt}
			%	\par \@fypcoordinatorname
			%	\par FYP Coordinator\\National University of Computer and Emerging Sciences, \@campuscity
			%	\vspace{1.5cm}
			%	\par \rule{0.5\textwidth}{.4pt}
			%	\par \@hodname
			%	\par HoD of \@department \\National University of Computer and Emerging Sciences
			%	\end{center}
		%	\cleardoublepage
	\end{alwayssingle}
}

\newenvironment{declaration} {
	\clearpage\thispagestyle{empty}
	\thispagestyle{plain}
	\begin{alwaysdouble}\doublespacing 
		\vspace{1.5cm}
		{\centering \Large \textbf{\uppercase{Declaration}}\par}
		\vspace{0.5cm}
		\ifx\@authortwoname\undefined I, {\@authoronename}, \else We \fi S/O Muhammad Aslam, a student of ``{{\@DegreeName} in {\@ProgName}}'' at ``{{\@department}}'', ``{{\@faculty}}'', University of Central Punjab, hereby declare that this thesis 
		titled ``{\@title}'', is my own research work and has not been submitted, published, or printed elsewhere in Pakistan or abroad. Additionally, I will not use this thesis for obtaining any degree other than the one stated above.
		
		I fully understand that if my statement is found to be incorrect at any stage, including after the award of the degree, the University has the right to revoke my {\@DegreeName} in {\@ProgName} degree.
		\par 
		\vspace{2cm}
		\begin{flushright}
			\ifx\@authoronename\undefined \else
			\raggedleft{\stsignedby \\ } \\ 
			\NameofStudent \\ 
			\RegNumber \\ 
			\datedec 
			\fi
		\end{flushright}
		\ifx\@authortwoname\undefined \else
		\vspace{1cm}{\longsignedby{\@authortwoname}}	\fi
		\ifx\@authorthreename\undefined \else
		\vspace{1cm}{\longsignedby{\@authorthreename}}	\fi
		\ifx\@authorfourname\undefined \else
		\vspace{1cm}{\longsignedby{\@authorfourname}}	\fi
		%\signedby{Verified by Plagiarism Cell Officer}
	}
	{
	\end{alwaysdouble}
	%	\cleardoublepage
}
\newenvironment{plagiarism} {
	\clearpage\thispagestyle{empty}
	\thispagestyle{plain}
	\begin{alwaysdouble}\doublespacing 
		\vspace{1.5cm}
		{\centering \Large \textbf{\uppercase{Plagiarism Undertaking}}\par}
		\vspace{0.5cm}
		\ifx\@authortwoname\undefined I, {\@authoronename}, \else We \fi  solemnly declare that the research work presented in this thesis titled, ``{\@title}'' is	solely my research work, and that the entire thesis has been completed by me, with no significant contribution from any other person or institution. Any small contribution, wherever taken, has been duly acknowledged.
		
		
		I understand the zero tolerance policy of the HEC and University of Central Punjab towards plagiarism. Therefore, I as an author of the above titled thesis declare that no portion of my thesis has been plagiarized and that every material used from other sources has been properly acknowledged, cited, and referenced.
		
		
		I undertake that if I am found guilty of any formal plagiarism in the above titled thesis, even after the award of {\@DegreeName} degree, the University reserves the right to revoke my degree, and that HEC and the University have the right to publish my name on the HEC/University website for submitting a plagiarized thesis.
		\par 
		\vspace{2cm}
		\begin{flushright}
			\ifx\@authoronename\undefined \else
			\raggedleft{\stsignedby \\ } \\ 
			\NameofStudent \\ 
			%\RegNumber \\ 
			%\datedec 
			\fi
		\end{flushright}
		\ifx\@authortwoname\undefined \else
		\vspace{1cm}{\longsignedby{\@authortwoname}}	\fi
		\ifx\@authorthreename\undefined \else
		\vspace{1cm}{\longsignedby{\@authorthreename}}	\fi
		\ifx\@authorfourname\undefined \else
		\vspace{1cm}{\longsignedby{\@authorfourname}}	\fi
		%\signedby{Verified by Plagiarism Cell Officer}
	}
	{
	\end{alwaysdouble}
	%	\cleardoublepage
}
\newenvironment{Research Completion} {
	\clearpage\thispagestyle{empty}
	\thispagestyle{plain}
	\begin{alwaysdouble}\doublespacing 
		\vspace{1.5cm}
		{\centering \Large \textbf{\uppercase{Certificate of Research Completion}}\par}
		\vspace{0.5cm}
		It is certified that this thesis titled, ``{\@title}'', submitted by {\@authoronename}, Registration
		No. {\@authoroneroll}, for {\@DegreeName} degree at ``{{\@department}}'', ``{{\@faculty}}'', University of Central Punjab, is an original research work and contains satisfactory material to be eligible for evaluation by the Examiner(s) for the award of the above stated degree.
		\par 
		\vspace{1cm}
		%		\begin{flushright}
			\ifx\@supervisor\undefined \else
			{\supervisorSignedby \\ } 
			\fi
			%		\end{flushright}
		%		\ifx\@\@cosupervisor\undefined \else
		%		\vspace{1cm}{\longsignedby{\@cosupervisor}}
		%		\vspace{0.5cm}{\CoSupervisorSignedby \\ } 
		%		\begin{flushleft}
			\vspace{-0.5cm}
			\datecom
			%		\end{flushleft}
		\fi
		
	}
	{
	\end{alwaysdouble}
	%	\cleardoublepage
}
%Environment for Certificate of Examiners Page
\newenvironment{Certificate Of Examiners} {
	\clearpage\thispagestyle{empty}
	\thispagestyle{plain}
	\begin{alwaysdouble}\doublespacing 
		\vspace{1.5cm}
		{\centering \Large \textbf{{\space{\uppercase{Certificate of Examiners}}}}\par}
		\vspace{0.5cm}
		It is certified that the research work contained in this thesis titled ``{\@title}'' is up to the
		mark for the award of {\@DegreeName} in {\@ProgName}.
		\par 
		\vspace{1.5in}
		\examiners \\
		%		\deanSig
	}
	{
	\end{alwaysdouble}
	%	\cleardoublepage
}

%LIST OF ABBREVIATIONS AND ACRONYMS
\RequirePackage{datatool}

% Define a convenient command to add a line
% to the database
\newenvironment{listOfAbAc} {
	\clearpage\thispagestyle{empty}
	\thispagestyle{plain}
	\begin{alwayssingle} 
		\begin{center}
			\vspace*{1.5cm}
			{\Large \bfseries LIST OF ABBREVIATIONS AND ACRONYMS}
		\end{center}
		\vspace{0.5cm}
	}{
	\end{alwayssingle}
	%	\cleardoublepage
}

% List of Symbols
\newenvironment{listOfSymbol} {
	\clearpage\thispagestyle{empty}
	\thispagestyle{plain}
	\begin{alwayssingle} 
		\begin{center}
			\vspace*{1.5cm}
			{\Large \bfseries LIST OF SYMBOLS}
		\end{center}
		\vspace{0.5cm}
	}{
	\end{alwayssingle}
	%	\cleardoublepage
}

\newenvironment{abstract} {
	%	\pagestyle{empty}
	\thispagestyle{plain}
	\pagenumbering{Roman}
	\setcounter{page}{1}
	\begin{alwaysdouble}\doublespacing 
		\begin{center}
			\vspace*{1.5cm}
			{\Large \bfseries \uppercase{Abstract}}
		\end{center}
		\vspace{0.5cm}
	}{
	\end{alwaysdouble}
	%	\cleardoublepage
}

\newenvironment{dedication} {
	\thispagestyle{plain}
	%	\pagenumbering{roman}
	%	\setcounter{page}{2}
	\begin{alwaysdouble}\doublespacing 
		\begin{center}
			\vspace*{1.5cm}
			%		{\Large \bfseries \fontsize{20}{20} \selectfont Dedication}
			{\Large \bfseries \uppercase{Dedication}}
		\end{center}
		\vspace{0.5cm}
	}{
	\end{alwaysdouble}
	%	\cleardoublepage
}

\newenvironment{acknowledgements} {
	\thispagestyle{plain}
	%	\pagenumbering{roman}
	%	\setcounter{page}{1}
	\begin{alwaysdouble}\doublespacing 
		\begin{center}
			\vspace*{1.5cm}
			{\Large \bfseries \uppercase{Acknowledgements}}
		\end{center}
		\vspace{0.5cm}
	}
	{
		\begin{flushright}
			\par
			\ifx\@authoronename\undefined \else
			\@authoronename \\	\fi
			\ifx\@authortwoname\undefined \else
			\@authortwoname \\	\fi
			\ifx\@authorthreename\undefined \else
			\@authorthreename \\ \fi
			\ifx\@authorfourname\undefined \else
			\@authorfourname \fi
		\end{flushright}
	\end{alwaysdouble}
	%	\cleardoublepage
}



