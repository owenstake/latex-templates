\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[10pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
\RequirePackage{fontawesome}
% use xcolor for customizing color
\RequirePackage[usenames,dvipsnames]{xcolor}
% loading fonts
\RequirePackage{fontspec}
% Main document font
\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-regular ,
  BoldFont = *-bold ,
  ItalicFont = *-italic ,
  BoldItalicFont = *-bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{texgyretermes}

\RequirePackage[
	a4paper,
	left=0.7in,
	right=0.7in,
	top=0.50in,
	bottom=0.5in,
	nohead
]{geometry}

% \RequirePackage[
% 	a4paper,
% 	left=1in,
% 	right=1in,
% 	top=1in,
% 	bottom=1in,
% 	nohead
% ]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [{\titlerule[2pt]}]          % Inserts a horizontal line after the heading

\titlespacing*{\section}{0cm}{*1}{*1}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing{\subsection}{0cm}{*1}{*0.5}

\titleformat{\subsubsection}
  {\large\centering}
  {}{0em}
  {}
\titlespacing*{\subsubsection}{0cm}{*1}{*0.5}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\projsssec}[2]{%
  \subsubsection{\centering #1}%
}

\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \centerline{\Huge\scshape{#1}} 
  \vspace{1.2ex}
}
\newcommand{\contactInfo}[2]{
  \centerline{\sffamily\large{\ 手机：{#1} \textperiodcentered\ \ �?箱：{#2}}} 
  \vspace{1.2ex}
}
\newcommand{\otherInfo}[4]{
  \centerline{\sffamily\large{\ {#1}}
    \ifthenelse{\isempty{#2}}%
      { } % if {#2} is empty
      {\textperiodcentered\ \ {#2} } % homepage, no space before \text...
    \ifthenelse{\isempty{#3}}%
      { } % if {#3} is empty
      {\textperiodcentered\ \ {#3} } % homepage, no space before \text...
    \ifthenelse{\isempty{#4}}%
      { } % if {#3} is empty
      {\textperiodcentered\ \ {#4} }
  }
  \vspace{0.7ex}
}

\newcommand{\yourphoto}[1]{
  \hfill \smash{\includegraphics[width={#1}\paperwidth]{images/you.jpg}}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}

% add
\newcommand{\sepspace}{\vspace*{1em}}		        % Vertical space macro

\newcommand{\MyName}[1]{
    \noindent
	\Huge \usefont{OT1}{phv}{m}{n} #1 \hfill        % Name
	\par \normalsize \normalfont
}

\newcommand{\SimpleEntry}[1]{
	\noindent\hangindent=1em\hangafter=0          % Indentation
	#1 \par                                         % Entry 
}

\newcommand{\Content}[3]{
    \begin{itemize}[parsep=0.5ex]
    \item \textit{描述}�?#1
    \item \textit{我的职责}�?#2
    \item \textit{成果}�?#3
    \end{itemize}
	\normalsize \par
}

% Link images
\newcommand{\pdf}{\includegraphics{}[height=.85em]{cv/pdf.png}}
\newcommand{\yt}{\includegraphics[height=.85em]{cv/yt.png}}
\newcommand{\gh}{\includegraphics[height=.85em]{cv/gh.png}}
\newcommand{\www}{\includegraphics[height=.85em]{cv/www.png}}
\newcommand{\email}{\includegraphics[height=.85em]{cv/email.png}}
\newcommand{\ruijie}{\href{https://www.ruijie.com.cn}{\textbf{锐捷网络}\includegraphics[height=.85em]{cv/ruijie.png}}}
\newcommand{\fzu}{\href{https://www.fzu.edu.cn}{\textbf{福州大学}\includegraphics[height=.85em]{cv/fzu.png}}}
\newcommand{\phone}{\includegraphics[height=.85em]{cv/phone.png}}

% Making the \entry command
\newcommand{\entry}[3]{
\noindent
\begin{minipage}[t]{.10\linewidth}
    \hfill\textsc{#1}\\
\end{minipage}
\hfill\vline\hfill
\begin{minipage}[t]{.85\linewidth}
    {\bf#2} {#3}
\end{minipage}
\vspace{.2cm}
}

% Making the \myproject command
\newcommand{\myproject}[3]{
\noindent
\begin{minipage}[t]{.25\linewidth}
    \hfill\textsc{#1}
\end{minipage}
\hfill\vline\hfill
\begin{minipage}[t]{.70\linewidth}
    {\bf#2}
\end{minipage}
\vspace{0.3cm}
}
