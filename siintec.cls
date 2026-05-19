%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% SIINTEC Article Class
% Simpósio Internacional de Inovação e Tecnologia
% International Symposium on Innovative Technologies
% 
% Author: Nelson Alves Ferreira Neto
% Email: nelsonafn@gmail.com
% Date: July 29, 2025
% Version: 1.0
% 
% Description: LaTeX document class for SIINTEC conference papers. This class 
%              provides formatting for academic articles with specific 
%              typography, layout, and styling requirements for the 
%              International Symposium on Innovative Technologies.
%
% Features:
%   - Two-column A4 layout with custom margins
%   - Times New Roman font family
%   - Custom header with conference logo
%   - Formatted sections, subsections, and subsubsections
%   - Abstract environment with keywords and abbreviations
%   - Bibliography formatting with square brackets
%   - Custom commands for title, author, and affiliation formatting
%   - ISSN: 2357-7592
%
% Usage:
%   \documentclass{siintec}
%   \siintectitle{Your Article Title}
%   \siintecauthor[1]{Author Name}
%   \siintecaffil[1]{Institution Name}
%   \siintecabstract{Abstract text}{keywords}{abbreviations}
%
% Requirements:
%   - siintec.png (conference header image)
%   - Standard LaTeX packages (see package list below)
%
% Conference Theme 2025: 
%   "Quantum Technologies: The information revolution that will change the future"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siintec}[2025/07/29 SIINTEC Article Class by Nelson Alves Ferreira Neto]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE CLASS CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the article class as base with 12pt font, two-column layout on A4 paper
\LoadClass[12pt,twocolumn,a4paper]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REQUIRED PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[utf8]{inputenc}      % UTF-8 input encoding
\RequirePackage[T1]{fontenc}         % T1 font encoding for better character support
\RequirePackage{graphicx}            % Graphics inclusion support
\RequirePackage{amsmath,amssymb}     % Advanced math symbols and environments
\RequirePackage{geometry}            % Page layout and margin control
\RequirePackage{setspace}            % Line spacing control
\RequirePackage{indentfirst}         % Indent first paragraph of sections
\RequirePackage{hyperref}            % Hyperlinks and PDF metadata
\RequirePackage{mathptmx}            % Times New Roman font family
\RequirePackage{fancyhdr}            % Custom headers and footers
\RequirePackage{tikz}                % Drawing and graphics
\RequirePackage{titlesec}            % Section title formatting
\RequirePackage{fullwidth}           % Full-width elements in two-column layout
\RequirePackage{blindtext}           % Dummy text for testing
\RequirePackage{lipsum}              % Lorem ipsum text generation
\RequirePackage{authblk}             % Author and affiliation management
\RequirePackage{caption}             % Caption formatting and types
\RequirePackage{xcolor}              % Color support
\RequirePackage{etoolbox}            % Programming tools for LaTeX
\RequirePackage{natbib}              % Bibliography management

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PAGE GEOMETRY AND LAYOUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set page margins: top=13mm, bottom=40mm, left=20mm, right=17.5mm
\geometry{a4paper,top=13mm,bottom=40mm,left=20mm,right=17.5mm}

% Configure header dimensions to accommodate the conference logo
\setlength{\headheight}{68.89616pt}  % Height for header content
\setlength{\headsep}{0pt}            % No separation between header and text
\setlength{\parindent}{0pt}          % No paragraph indentation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SECTION FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Main section formatting: bold, 12pt font with numbered sections
\titleformat{\section}
    {\siintecsectionfont}  % Use custom section font command
    {\thesection.}{0.3em}{}
\titlespacing*{\section}{0pt}{1.1ex}{0.5ex}

% Subsection formatting: same style as sections but with subsection numbering
\titleformat{\subsection}
    {\siintecsubsectionfont}  % Use custom subsection font command
    {\thesubsection.}{0.3em}{}
\titlespacing*{\subsection}{0pt}{1.0ex}{0.5ex}

% Subsubsection formatting: consistent with other heading levels
\titleformat{\subsubsection}
    {\siintecsubsubsectionfont}  % Use custom subsubsection font command
    {\thesubsubsection.}{0.3em}{}
\titlespacing*{\subsubsection}{0pt}{1.0ex}{0.5ex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER AND FOOTER CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}

% Left header: full-width conference logo
\fancyhead[l]{%
  \makebox[0pt][l]{\hspace*{-\oddsidemargin}\hspace*{-1in}%
    \includegraphics[width=\paperwidth]{siintec.png}}%
}

\fancyfoot{}

% Left footer: conference information in gray text
\fancyfoot[L]{%
  {\siintecaffilfont\textcolor{gray}{
    %ISSN: 2357-7592 
    \\ \textit{XII INTERNATIONAL SYMPOSIUM ON INNOVATION AND TECHNOLOGY \\ Currents of the Future: Energy, Climate, and Global Sustainability -- 2026}}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom title layout that spans both columns
\renewcommand{\maketitle}{%
  \twocolumn[%
    \begin{center}
      {\vspace*{-1em}\siintecsectionfont\@title\vspace*{-0.0em}\par}
    \end{center}
    \@author
    \thispagestyle{fancy}
    \vspace*{-3.5em}
  ]%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT ENVIRONMENT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom abstract environment with specific width and font settings
\renewenvironment{abstract}
 {\begin{center}\begin{minipage}{0.928\textwidth}\setstretch{1}
        \siintecabstractfont}
 {\end{minipage}\end{center}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPTION CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareCaptionType{graphic}[Graphic][graph]

% Customize caption names to use bold formatting
\renewcommand{\figurename}{\textbf{Figure}}
\renewcommand{\tablename}{\textbf{Table}}
\renewcommand{\graphicname}{\textbf{Graphic}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DOCUMENT TEXT SPACING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument{%
  \setstretch{1.5}
  \setlength{\parskip}{0.4\baselineskip}
  \normalsize
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BIBLIOGRAPHY FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set default bibliography style for all documents using this class
\AtBeginDocument{%
  \bibliographystyle{unsrt}
}



\AtBeginEnvironment{thebibliography}{%
  \renewcommand{\refname}{} % Remove "References" title
  \siintecbibliographyfont % Apply custom bibliography font
  \setlength{\bibsep}{0.4em}
  \renewcommand{\@biblabel}[1]{[#1]}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CUSTOM COMMANDS FOR EASY FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Command for setting the document title with proper formatting
\newcommand{\siintectitle}[1]{%
  \title{\vspace*{-0.2em}  \setstretch{1.0}\siintecsectionfont #1\vspace*{-0.2em}}
}

% Command for setting author with optional affiliation number
\renewcommand\Authand{, }
\renewcommand\Authands{, }
\renewcommand{\Authfont}{\setstretch{2.0}\siintecauthorfont}
\newcommand{\siintecauthor}[2][]{%
    \author[#1]{\mbox{#2}}
}

% Command for setting affiliation with optional number
\setlength{\affilsep}{0.0em} % Reduce space between author and affiliation
\renewcommand{\Authfont}{\setstretch{1.0}\siintecauthorfont}
\newcommand{\siintecaffil}[2][]{%
  \affil[#1]{\siintecaffilfont #2}
}

% Command for setting empty date (removes default date)
\newcommand{\siintecdate}{%
  \date{\siintecaffilfont }
}

% Command for creating formatted abstract with keywords and abbreviations
% Parameters: #1 = abstract text, #2 = keywords, #3 = abbreviations
\newcommand{\siintecabstract}[3]{%
  \twocolumn[%
    \begin{center}
      {\vspace*{0.0em}\siintecsectionfont\@title\vspace*{0.8em}\par}
      \@author
      \vspace*{-0.5em}
    \end{center}

    \thispagestyle{fancy}
    \vspace*{-0.6em}

  \begin{abstract}
    \textbf{Abstract: #1}

    \textbf{Keywords: #2 }

    % Only print Abbreviations if #3 is not empty
    \ifstrempty{#3}{}{%
      \textbf{Abbreviations: #3}
    }
  \end{abstract}
  \vspace*{1em}
]
}

% Font style commands for SIINTEC template

% Main text: Times New Roman, 12pt
\newcommand{\siintecmainfont}{\normalfont\fontfamily{ptm}\selectfont\fontsize{12}{14}\selectfont}

% Section title: Times New Roman, 12pt, bold
\newcommand{\siintecsectionfont}{\normalfont\bfseries\fontfamily{ptm}\selectfont\fontsize{12}{14}\selectfont}

% Subsection title: Times New Roman, 12pt, bold
\newcommand{\siintecsubsectionfont}{\normalfont\bfseries\fontfamily{ptm}\selectfont\fontsize{12}{14}\selectfont}

% Subsubsection title: Times New Roman, 12pt, bold
\newcommand{\siintecsubsubsectionfont}{\normalfont\bfseries\fontfamily{ptm}\selectfont\fontsize{12}{14}\selectfont}

% Author name: Times New Roman, 10pt, bold
\newcommand{\siintecauthorfont}{\normalfont\bfseries\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont}

% Affiliation: Times New Roman, 10pt, italic
\newcommand{\siintecaffilfont}{\normalfont\itshape\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont}

% Abstract body: Times New Roman, 10pt, bold
\newcommand{\siintecabstractfont}{\normalfont\bfseries\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont}

% Bibliography: Times New Roman, 10pt, bold
\newcommand{\siintecbibliographyfont}{\setlength{\parskip}{0em}\setstretch{1.0}\normalfont\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont}

% Caption: Times New Roman, 12pt, regular
\newcommand{\siinteccaptionfont}{\normalfont\fontfamily{ptm}\selectfont\fontsize{12}{14}\selectfont}

% Table text: Times New Roman, 9pt, regular
\newcommand{\siintectablefont}{\normalfont\fontfamily{ptm}\selectfont\fontsize{9}{11}\selectfont}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END OF CLASS FILE