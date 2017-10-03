\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{az_article}
\LoadClass[11pt,a4paper]{article}
%Font settings
\RequirePackage[default]{sourcesanspro}
\RequirePackage[T1]{fontenc}

%Support for German
\RequirePackage[utf8]{inputenc}
\RequirePackage{ngerman}

%European style paragraphs
\setlength{\parskip}{\baselineskip}%
\setlength{\parindent}{0pt}%

%Make line spacing bigger
\linespread{1.25}

%Make whitespace in tables bigger
\renewcommand\arraystretch{1.5}

%Enable colours for tables
\RequirePackage[table]{xcolor}

%Needed to rotate graphics and tables
\RequirePackage{rotating}
\RequirePackage{pdflscape}

%Support for images
\RequirePackage{graphicx}

%Enable URL highlighting
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=blue,
}
\urlstyle{same}

%Material theme colours
\definecolor{red}{HTML}{F44336}
\definecolor{pink}{HTML}{E91E63}
\definecolor{purple}{HTML}{9C27B0}
%\definecolor{blue}{HTML}{2196F3}
\definecolor{brown}{HTML}{795548}
\definecolor{cyan}{HTML}{00BCD4}
\definecolor{darkgray}{HTML}{616161}
\definecolor{gray}{HTML}{9E9E9E}
\definecolor{lightgray}{HTML}{E0E0E0}
\definecolor{lime}{HTML}{CDDC39}
\definecolor{olive}{HTML}{827717}
\definecolor{orange}{HTML}{FF9800}
\definecolor{teal}{HTML}{009688}
\definecolor{yellow}{HTML}{FFEB3B}
\definecolor{green}{HTML}{388E3C}

%Support for Code Snippets and Syntax Highlighting
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{sourcecodepro}
\lstset{
  basicstyle=\ttfamily,
  language=bash,
  breaklines,
  literate={ö}{{\"o}}1
           {ä}{{\"a}}1
           {ü}{{\"u}}1,
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{green},    % comment style
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  keywordstyle=\color{blue},       % keyword style
  stringstyle=\color{purple},     % string literal style
  showstringspaces=false,          % Removes the strange symboles where spaces are
}

% Listing with a box around it
\RequirePackage[most]{tcolorbox}
\newtcblisting{sexylisting}[2][]{
  sharp corners, 
  fonttitle=\bfseries,
  colframe=gray,
  listing only, 
  listing options={basicstyle=\ttfamily,language=bash}, 
  title=\thetcbcounter #2, #1
}
