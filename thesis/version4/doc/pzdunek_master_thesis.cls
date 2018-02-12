% Klasa dokumentow do skladu prac inzynierskich na wydziale
% EITI PW, powstala w wyniku modyfikacji analogicznego
% dokumentu z wydzialu MIM UW
%
%
% Copyright (c) 2001 by Wydzial Matematyki, Informatyki i Mechaniki.
%
% Zmiany 05.05.2006 by Seweryn Karlowicz
% Zmiany 28.10.2010 by Tomasz Kuzma mapedd@gmail.com
% Zmiany 2011/2013 by Krzysztof Sielewicz, krzysiek.sielewicz@gmail.com, k.sielewicz@stud.elka.pw.edu.pl
% Zmiany 2014 by Piotr Zdunek, p.zdunek90@gmail.com, p.zdunek@stud.elka.pw.edu.pl
%\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{pracainz_pw_mac}[2010/10/29 v0.5.0 Praca In/zynierska]


\def\@baseclass{report}
\def\@rodzajpracy{in{\.z}ynierska}
\def\@rodzajpracy{magisterska}
\DeclareOption{licencjacka}{\def\@rodzajpracy{licencjacka}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{a4paper,twoside,openright,12pt}{\@baseclass}
\ProcessOptions

\LoadClass{\@baseclass}

\textwidth\paperwidth
\advance\textwidth -55mm


\oddsidemargin-1in
\advance\oddsidemargin 30mm

\evensidemargin-1in
\advance\evensidemargin 25mm

\topmargin -1in
%\advance\topmargin 1cm

%\setlength\textheight{48\baselineskip}
\setlength\textheight{50\baselineskip}
%\setlength\textheight{55\baselineskip}
\addtolength\textheight{\topskip}
\marginparwidth20mm

\renewcommand\maketitle{
    \begin{titlepage}
    
\begin{figure}
 \vspace{1.5cm plus 1fill}
\centering
\begin{minipage}{.2\textwidth}
  \centering
  \includegraphics[scale=0.65]{./img/titlepage/pw_logo.jpg}
\end{minipage}%
\begin{minipage}{1.4\textwidth}
  \centering
  \includegraphics[scale=0.35]{./img/titlepage/logo_WEiTI.jpg}
\end{minipage}
 \vspace{2cm plus 2fill}
\end{figure}



    \begin{center}%
       \vspace{3cm plus 3fill}

       % {\Large Politechnika Warszawska\\Wydzia\l{} Elektroniki i Technik Informacyjnych\\Instytut System\'ow Elektronicznych\par}
        {\Large Warsaw University of Technology \\ Faculty of Electronics and Information Technology\\Institute of
        Electronics Systems\par}

        %\vspace{1cm plus 1fill}
        \vspace{1cm plus 0.5fill}

        {\Huge\textbf{Piotr Zdunek}\par}

        \vspace{0.1cm}

        {\normalsize Index no: \@nralbumu\par}

        \vspace{1.5cm}

		{\large Master Thesis}

        \vspace{1.5cm}

        {\LARGE \@title \par}



        \vspace{3cm}

        \begin{flushright}\large
            \begin{tabular}{l}
%            	\large {Opiekunowie pracy:}\\ \\
				Supervisor:\\ 
                %Opiekun pracy:\\
                %\bfseries\@opiekunPracy\\ \\
				Dr in\.z. Grzegorz Kasprowicz\\
				%\bfseries Instytut System\'ow Elektronicznych\\
				%\bfseries Politechnika Warszawska\\ \\

               % Opiekun merytoryczny pracy:\\
                %\bfseries\@opiekunMerPracy
%                \bfseries Dr Marcin Lewandowski\\
%                \bfseries Instytut Podstawowych Problem\'ow Techniki\\
%                \bfseries Polska Akademia Nauk
            \end{tabular}
        \end{flushright}

        %\vspace{1.5cm}
        \vfill
        \large\textbf \\Warsaw, 2015
%        \LARGE\textbf{\@date\par}
    \end{center}
    %\@thanks
    \end{titlepage}

%------------------------------------------------------------------------------------
%
  \begin{titlepage}
    \c@page=2
    \large
    \null
    \vfill
%
%   \textbf{\Large O\'swiadczenie kieruj�cego prac� }
%      \vspace{10mm}
%
%   Potwierdzam, {\.z}e niniejsza praca zosta{\l}a przygotowana pod moim
%   kierunkiem i kwalifikuje si� do przedstawienia jej w post�powaniu
%   o nadanie tytu{\l}u zawodowego.
%   \vspace{15mm}
%
%   Data \hfill Podpis kieruj�cego prac�
%
%   \vspace{3cm}
%   \textbf{\Large O\'swiadczenie autora (autor\'ow) pracy}
%    \vspace{10mm}
%
%   \'{S}wiadom odpowiedzialno\'sci prawnej o\'swiadczam, {\.z}e niniejsza praca dyplomowa zosta{\l}a
%   napisana przeze mnie samodzielnie i nie zawiera tre\'sci uzyskanych w spos\'ob niezgodny
%   z obowi�zuj�cymi przepisami.
%
%   O\'swiadczam r\'ownie{\.z}, {\.z}e przedstawiona praca nie by{\l}a
%   wcze\'sniej przedmiotem procedur zwi�zanych z uzyskaniem tytu{\l}u zawodowego w wy{\.z}szej uczelni.
%
%   O\'swiadczam ponadto, {\.z}e niniejsza wersja pracy jest identyczna z za{\l}�czon� wersj� elektroniczn�.
%   \vspace{15mm}
%
%   Data \hfill Podpis autora (autor\'ow) pracy
%    \vspace{4cm}
  \end{titlepage}
  
%------------------------------------------------------------  
\begin{abstract}

\begin{center}
    \bfseries\large{\@titlepl\par}
\end{center}

\@abs_text\par
\end{abstract}  
%------------------------------------------------------------
% 	
%\begin{titlepage}
%		\c@page=3
%		\large
%		\null
%		\vfill
%	\begin{flushleft}\large
%            \begin{tabular}{l}
%				%\textit{Sk{\l}adam serdeczne podzi\k{e}kowania:}\\
%			%	\textit{Pragn\k{e} z{\l}o\.zy\'c serdeczne podzi\k{e}kowania:}\\
%				\textit{I would like to thank }\\
%				\\
%				\textit{Rodzicom za wiar\k{e},}\\
%				%\textit{Dr hab. in\.z. Krzysztofowi Po\'zniakowi i dr Marcinowi Lewandowskiemu,}\\
%				\textit{Dr in\.z. Grzegorzowi Kasprowiczowi za cenne uwagi,}\\
%				%\textit{Micha{\l}owi Mieszkowskiemu za wytrwa{\l}o\'s\'c}\\
%				\textit{Kole\.zankom i kolegom, za atmosfer\k{e} i wsp\'o{\l}prac\k{e} w laboratoriach}\\
%				\textit{PERG/ELHEP ISE PW}
%            \end{tabular}
%        \end{flushleft}
%  \end{titlepage}

%\begin{titlepage}
%	\c@page=3
%	\large
%	\null
%	\vfill
%\end{titlepage}

\nobreak%\vfil\null\endtitlepage\cleardoublepage

%%--------------------------------------------------------------------------------------------------------
 
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
%TOD: poprawic na angielsk
\def\nralbumu#1{\gdef\@nralbumu{#1}}
\def\@nralbumu{???\ClassError{pracamgr}{Brak numeru albumu}\@ehc}
\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{???\ClassError{pracamgr}{Nie podano kierunku studiow}\@ehc}
%----zakres nie konieczny-----
%\def\zakres#1{\gdef\@zakres{w zakresie \MakeUppercase{#1}}}
%\def\@zakres{}

\def\opiekunPracy#1{\gdef\@opiekunPracy{#1}}
\def\@opiekunPracy{???\ClassError{pracamgr}{Brak danych opiekuna pracy}\@ehc}

\def\opiekunMerPracy#1{\gdef\@opiekunMerPracy{#1}}
\def\@opiekunMerPracy{???\ClassError{pracamgr}{Brak danych opiekuna pracy}\@ehc}

\def\titlepl#1{\gdef\@titlepl{#1}}
\def\abs_text#1{\gdef\@abs_text{#1}}

\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{pracamgr}{Brak slow kluczowych}\@ehc}
\def\dziedzina#1{\gdef\@dziedzina{#1}}
\def\@dziedzina{???\ClassError{pracamgr}{Brak dziedziny Socrates-Erasmus}\@ehc}
\def\klasyfikacja#1{\gdef\@klasyfikacja{#1}}
\def\@klasyfikacja{???\ClassError{pracamgr}{Brak klasyfikacji tematycznej}\@ehc}
%-------------------nowe------------
\def\tytulang#1{\gdef\@tytulang{#1}}
\def\@tytulang{???\ClassError{pracamgr}{Brak tytulu po angielsku}\@ehc}


%\renewenvironment{abstract}{%
%  \titlepage
%  \null\nobreak\vfil
%  \@beginparpenalty\@lowpenalty
%  \begin{center}%
%    \bfseries\large \
%    \@endparpenalty\@M
%  \end{center}}%abstractname
%{\par
%  \vspace*{26pt}%
%  \begin{center}%
%    \bfseries\large S{\l}owa kluczowe
%    \@endparpenalty\@M
%  \end{center}
%  \@keywords\par
%  \vspace*{26pt}%

  %\begin{center}%
%    \bfseries\large Dziedzina pracy (kody wg programu Socrates-Erasmus)
%    \@endparpenalty\@M
%  \end{center}
%   \@dziedzina\par
  
  
  %\vspace*{26pt}%mnsdpnfisdfsdfsdfsdohfosdhnfsdhnfgiodfgdjfjngj


%  \begin{center}%
%    \bfseries\large Klasyfikacja tematyczna
%    \@endparpenalty\@M
%  \end{center}
%  \@klasyfikacja\par
%  \vspace*{26pt}%

%-------------------nowosc----------------
%	\begin{center}%
%		\bfseries\large Reconfigurable high performance processing AMC module with DSP processors and FPGA
%		\@endparpenalty\@M
%	\end{center}
%	\@tytulang\par
%	\vspace*{26pt}
%	\begin{center}%
%		\bfseries\large Keywords
%		\@endparpenalty\@M
%	\end{center}
%	%\@keywords\par
%	FPGA, DSP, PCB, AMC, PERG, MTCA
	
	
%	\nobreak\vfil\null\endtitlepage\cleardoublepage
%
%
%	}

%---------------------------------------------------------------  
%\begin{center}%
%    \bfseries\large Key words
%    \@endparpenalty\@M
%  \end{center}
%  \@keywords\par
%Kamera termowizyjna, czujnik bolometryczny, czujnik pirometryczny, PIR, ADC, LPC, CPLD, VHDL, Quartus, LPCXpresso, PCB, Altium %Designer, PWM, filtr aktywny  
%---------------------------------------------------------------  

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\renewcommand*\@seccntformat[1]{\csname the#1\endcsname.\enspace}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\mdseries
      \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\endinput
