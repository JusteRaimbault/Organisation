% This style file needs LaTeX version 2e
\NeedsTeXFormat{LaTeX2e}

% Style name
\ProvidesPackage{frccs2024}[2024/02/12]

\LoadClass[12pt,a4paper]{article}

%% Fonts
\RequirePackage{lmodern}
\RequirePackage{amsmath, amsfonts, amssymb, bm}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

%% Bibliography
\bibliographystyle{plain}
\RequirePackage[makeindex]{imakeidx}

%% graphics
\RequirePackage{tikz}
\RequirePackage{graphicx}

%%% geometry
\RequirePackage[a4paper,%
% showframe,%
includeheadfoot,%
textwidth=17cm,% 
textheight=25cm,% 
nomarginpar,% We don't want any margin paragraphs
% top=2cm,left=2cm,right=2cm, bottom=2cm,% mieux vaut utiliser textwidth et textheight avec includeheadfoot
headheight=0.6cm,%
footskip=1cm,
headsep=0.4cm,
]{geometry}

\makeatletter

%% Headers and footers
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\lhead{\textit{\@authorsrunning}}\chead{}\rhead{\textit{\@titlerunning}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\lfoot{\textbf{\small{French Regional Conference on Complex Systems\\%
May 29-31, 2024, Montpellier, France}}}\cfoot{}\rfoot{\thepage}

\fancypagestyle{firststyle}
{
    \lhead{}
    \chead{}
    \rhead{}
    \renewcommand{\headrulewidth}{0pt} % removes horizontal header line
}

% Running title and authors, address
\renewcommand{\title}[1]{\def\@title{#1}}
\newcommand{\titlerunning}[1]{\def\@titlerunning{#1}}
\newcommand{\authors}[1]{\def\@authors{#1}}
\newcommand{\authorsrunning}[1]{\def\@authorsrunning{#1}}
\newcommand{\addresses}[1]{\def\@addresses{#1}}
\newcommand{\speaker}[1]{#1\textsuperscript{\checkmark}}

% Abstract and keywords
\def\@abstract{\normalsize\textbf{Abstract. }} \def\end@abstract{\par}
\def\@keywords{\normalsize\textbf{Keywords. }} \def\end@keywords{\par}
\newtoks\abstract
\newtoks\keywords
\def\cleararticleinfo{\global\abstract={}}
\def\cleararticleinfo{\global\keywords={}}

% Make title
\renewcommand{\maketitle}{
\newsavebox{\foo}
\savebox{\foo}{% <- ce '%' est important
\thispagestyle{firststyle}%
\begin{minipage}[t]{\textwidth}
  % Logo
  \definecolor{c1d2279}{RGB}{29,34,121}
\definecolor{c5e63b5}{RGB}{94,99,181}
\def \globalscale {1.000000}
\vspace{-1cm}
\begin{tikzpicture}[y=0.80pt, x=0.80pt, yscale=-\globalscale, xscale=\globalscale, inner sep=0pt, outer sep=0pt]
\begin{scope}[scale=0.42,shift={(-95.7324,-58.661)}]
  \path[fill=c5e63b5] (153.8945,156.7724) .. controls (148.8649,154.9266) and
    (147.3882,146.9178) .. (151.2992,142.6977) .. controls (152.9541,140.9120) and
    (153.4206,139.5399) .. (152.9636,137.8016) .. controls (152.6144,136.4733) and
    (152.0348,133.8934) .. (151.6757,132.0685) .. controls (151.0816,129.0493) and
    (151.2244,128.7791) .. (153.2614,129.0685) .. controls (155.1029,129.3301) and
    (155.6528,130.2867) .. (156.3614,134.4611) .. controls (157.1304,138.9911) and
    (157.5596,139.6350) .. (160.3614,140.4611) .. controls (162.4385,141.0736) and
    (164.1530,142.6062) .. (165.4309,144.9928) .. controls (167.1481,148.1999) and
    (167.2120,148.9605) .. (166.0086,151.8658) .. controls (165.1460,153.9483) and
    (163.4607,155.6317) .. (161.3598,156.5095) .. controls (157.6188,158.0726) and
    (157.4532,158.0785) .. (153.8945,156.7724) -- cycle(154.9963,145.3905) ..
    controls (156.2860,144.0177) and (157.0535,142.6067) .. (156.7018,142.2550) ..
    controls (155.7291,141.2823) and (151.0000,144.7280) .. (151.0000,146.4096) ..
    controls (151.0000,148.5640) and (152.3347,148.2236) .. (154.9963,145.3905) --
    cycle(98.4545,128.4320) .. controls (94.8735,124.8510) and (94.8200,119.7209)
    .. (98.3272,116.2137) .. controls (101.6049,112.9361) and (108.0133,112.7113)
    .. (110.6424,115.7819) .. controls (112.2308,117.6370) and (112.4149,117.6263)
    .. (119.3208,115.2774) .. controls (124.7959,113.4152) and (126.5549,113.1587)
    .. (127.1729,114.1321) .. controls (128.4783,116.1882) and (128.2836,116.3363)
    .. (121.0293,118.8060) .. controls (114.8284,120.9171) and (113.9364,121.5493)
    .. (112.9527,124.5298) .. controls (110.8011,131.0494) and (103.1352,133.1127)
    .. (98.4545,128.4320) -- cycle(102.5000,118.8865) .. controls
    (104.9520,116.3272) and (105.1012,115.8865) .. (103.5158,115.8865) .. controls
    (101.2885,115.8865) and (98.0000,118.6618) .. (98.0000,120.5415) .. controls
    (98.0000,122.6488) and (99.3827,122.1402) .. (102.5000,118.8865) --
    cycle(139.8585,121.7290) .. controls (130.5733,116.3448) and
    (129.2692,101.5395) .. (137.5094,95.0578) .. controls (143.9833,89.9654) and
    (152.8355,90.0472) .. (158.7659,95.2541) .. controls (165.0692,100.7885) and
    (166.5904,107.8488) .. (162.9970,114.8923) .. controls (158.6858,123.3430) and
    (148.0575,126.4833) .. (139.8585,121.7290) -- cycle(142.7936,100.8323) ..
    controls (146.1303,97.7977) and (146.3628,95.4687) .. (143.2180,96.5822) ..
    controls (140.3830,97.5861) and (138.0000,100.0793) .. (138.0000,102.0415) ..
    controls (138.0000,104.5688) and (138.9485,104.3295) .. (142.7936,100.8323) --
    cycle(186.2702,119.6750) .. controls (185.0437,119.0832) and
    (183.4861,117.3468) .. (182.8086,115.8164) .. controls (181.7293,113.3780) and
    (180.8610,112.9507) .. (175.7885,112.3620) .. controls (170.9192,111.7969) and
    (170.0000,111.3767) .. (170.0000,109.7164) .. controls (170.0000,107.9077) and
    (170.4592,107.8000) .. (175.4921,108.4288) .. controls (180.7389,109.0844) and
    (181.1141,108.9759) .. (183.8933,106.0008) .. controls (190.5860,98.8362) and
    (201.4046,105.1513) .. (198.8084,114.7072) .. controls (198.1474,117.1401) and
    (196.9917,118.4099) .. (194.4852,119.4572) .. controls (190.5179,121.1148) and
    (189.3194,121.1466) .. (186.2702,119.6750) -- cycle(188.4167,107.8588) ..
    controls (190.8636,105.3652) and (191.0374,104.8865) .. (189.4954,104.8865) ..
    controls (187.2851,104.8865) and (184.0000,107.6693) .. (184.0000,109.5415) ..
    controls (184.0000,111.5879) and (185.2094,111.1272) .. (188.4167,107.8588) --
    cycle(127.5411,90.9295) .. controls (125.1814,88.4665) and (124.3737,88.1514)
    .. (122.7066,89.0436) .. controls (121.2778,89.8082) and (119.6529,89.7995) ..
    (117.0282,89.0131) .. controls (109.6712,86.8089) and (108.4608,76.7681) ..
    (115.1360,73.3162) .. controls (121.8275,69.8559) and (129.0387,74.1893) ..
    (128.2731,81.7582) .. controls (127.7555,86.8759) and (128.1035,85.2633) ..
    (130.7082,88.0768) .. controls (132.2033,89.6918) and (133.0165,91.4011) ..
    (132.6613,92.3268) .. controls (131.8027,94.5644) and (130.7477,94.2764) ..
    (127.5411,90.9295) -- cycle(117.5000,76.8865) .. controls (119.9520,74.3272)
    and (120.1012,73.8865) .. (118.5158,73.8865) .. controls (116.2885,73.8865)
    and (113.0000,76.6618) .. (113.0000,78.5415) .. controls (113.0000,80.6488)
    and (114.3828,80.1403) .. (117.5000,76.8865) -- cycle(159.2031,88.6255) ..
    controls (158.4696,87.7376) and (159.2853,85.5012) .. (162.0819,80.7324) ..
    controls (165.7710,74.4417) and (165.9111,73.9047) .. (164.6469,70.8980) ..
    controls (162.9851,66.9459) and (163.5572,63.6425) .. (166.3515,61.0549) ..
    controls (171.9987,55.8255) and (181.0000,59.7162) .. (181.0000,67.3865) ..
    controls (181.0000,72.1403) and (177.3654,75.8865) .. (172.7532,75.8865) ..
    controls (169.7020,75.8865) and (169.0892,76.4443) .. (165.6137,82.3856) ..
    controls (161.3261,89.7153) and (160.6483,90.3750) .. (159.2031,88.6255) --
    cycle(170.0012,63.7275) .. controls (172.7080,61.7263) and (173.1582,59.8865)
    .. (170.9410,59.8865) .. controls (169.6896,59.8865) and (166.0000,63.6202) ..
    (166.0000,64.8865) .. controls (166.0000,66.3506) and (166.7453,66.1347) ..
    (170.0012,63.7275) -- cycle;



  \path[fill=black,line width=0.921pt] (214.2629,126.9899) .. controls
    (214.2629,126.9899) and (214.2835,120.9444) .. (214.2835,115.3502) --
    (214.2835,105.1791) -- (226.9495,105.1791) -- (241.0449,105.2415) --
    (241.0449,108.6958) -- (241.0449,112.1502) -- (230.4588,112.0878) --
    (221.3021,112.0878) .. controls (221.1955,116.5148) and (221.0923,122.6101) ..
    (221.1101,126.9706) -- cycle(301.2466,125.7186) .. controls
    (295.0701,122.4785) and (292.5822,116.3707) .. (292.5822,108.9250) .. controls
    (292.5822,101.1597) and (295.1256,95.5668) .. (300.0373,92.5312) .. controls
    (302.7327,90.8654) and (306.2874,89.8424) .. (307.4921,90.0117) --
    (307.5512,96.4102) .. controls (307.5512,96.4102) and (305.6267,97.1825) ..
    (303.7358,98.1398) .. controls (301.1308,99.4585) and (299.4910,103.9225) ..
    (299.4910,108.0577) .. controls (299.4910,111.9808) and (300.5270,120.4610) ..
    (307.5541,120.4145) -- (307.6394,126.7307) .. controls (307.6394,126.7307) and
    (304.4456,127.3969) .. (301.2466,125.7186) -- cycle(311.7731,126.9948) --
    (311.8671,120.9132) .. controls (313.6350,120.6028) and (319.0947,118.2504) ..
    (319.8660,115.1773) -- (324.7437,118.6827) .. controls (323.6849,121.7482) and
    (321.0449,123.3792) .. (319.0878,124.7424) .. controls (316.7138,126.3960) and
    (311.7731,126.9948) .. (311.7731,126.9948) -- cycle(392.3731,127.1640) ..
    controls (387.8657,126.2029) and (386.5628,125.2692) .. (384.0583,123.0962) ..
    controls (382.6339,121.8604) and (380.2743,119.8562) .. (379.8369,118.2681) --
    (385.1440,115.0199) .. controls (385.1440,115.9993) and (386.7276,117.2887) ..
    (388.2771,118.8504) .. controls (389.4667,120.0494) and (391.5056,120.6377) ..
    (392.5023,121.1314) -- cycle(396.4776,127.0431) .. controls
    (396.4776,124.8170) and (396.7991,120.9420) .. (396.7991,120.9420) .. controls
    (397.7038,120.9420) and (400.9525,120.9039) .. (401.3519,118.2988) .. controls
    (401.9434,114.4415) and (401.8734,113.6508) .. (392.5556,110.8759) .. controls
    (388.1578,109.5661) and (383.5545,107.4895) .. (382.3261,106.2611) .. controls
    (379.8659,103.8009) and (379.3950,98.2709) .. (381.3367,94.6428) .. controls
    (382.7121,92.0729) and (389.7484,89.0359) .. (392.8047,89.2246) --
    (392.7977,95.0058) .. controls (383.1264,97.8513) and (386.7009,102.0293) ..
    (395.0692,104.2877) .. controls (399.1754,105.3959) and (403.8329,107.2685) ..
    (405.4192,108.4492) .. controls (412.1680,113.4724) and (410.3196,120.8506) ..
    (402.9930,125.2466) .. controls (401.6664,126.0426) and (396.4775,127.0431) ..
    (396.4775,127.0431) -- cycle(252.2814,116.1179) -- (252.2814,106.3305) --
    (262.4142,106.3305) .. controls (273.2296,106.3305) and (275.3105,105.4527) ..
    (275.3105,100.8902) .. controls (275.3105,97.2682) and (271.4672,95.9674) ..
    (260.7659,95.9674) -- (252.1285,95.9674) -- (252.1809,89.7441) .. controls
    (252.1809,89.7441) and (253.0519,89.6266) .. (261.1842,89.2966) .. controls
    (265.7641,89.1107) and (271.6170,89.5257) .. (274.1906,90.2187) .. controls
    (283.2648,92.6621) and (285.9133,102.9244) .. (279.2615,109.8673) --
    (276.0303,112.4832) -- (279.7940,118.2431) .. controls (281.9417,121.5297) and
    (283.9419,126.7182) .. (283.9419,126.7182) -- (276.5958,126.7509) .. controls
    (276.5958,126.7509) and (275.6969,124.9768) .. (272.2806,119.5722) .. controls
    (269.3285,114.9020) and (268.3118,113.1145) .. (268.3118,113.1145) --
    (259.1901,113.2392) -- (259.1901,119.5722) .. controls (259.1901,123.7201) and
    (259.1412,126.8757) .. (259.1412,126.8757) -- (252.1933,126.8757) --
    cycle(319.1502,100.7312) .. controls (318.5188,99.5514) and (317.4220,98.5162)
    .. (315.5626,97.3136) .. controls (313.8158,96.1838) and (311.2702,96.1050) ..
    (311.2702,96.1050) -- (311.2827,89.8057) .. controls (311.2827,89.8057) and
    (314.8028,89.6522) .. (317.0536,90.5927) .. controls (321.2098,92.3293) and
    (324.3908,95.5818) .. (325.5377,98.5905) .. controls (325.5377,98.5532) and
    (319.1501,100.7312) .. (319.1501,100.7312) -- cycle(403.3496,98.5196) ..
    controls (401.2701,96.4353) and (399.0593,96.0122) .. (396.4639,95.1397) --
    (396.6215,89.5926) .. controls (400.2181,89.5926) and (405.6145,91.0095) ..
    (407.2908,95.1866) -- cycle(214.2978,89.8840) -- (228.0386,89.7592) --
    (241.3427,89.6345) .. controls (241.3357,91.9326) and (241.2671,93.6693) ..
    (241.2604,95.8427) -- (228.1010,95.9674) -- (214.1306,95.9674) .. controls
    (214.1300,93.9264) and (214.2495,92.0640) .. (214.2978,89.8840) --
    cycle(343.6474,125.5932) .. controls (337.4710,122.3531) and
    (334.9831,116.2452) .. (334.9831,108.7996) .. controls (334.9831,101.0343) and
    (337.5265,95.4414) .. (342.4382,92.4058) .. controls (345.1335,90.7400) and
    (348.6883,89.7170) .. (349.8929,89.8862) -- (349.9520,96.2848) .. controls
    (349.9520,96.2848) and (348.0276,97.0571) .. (346.1366,98.0143) .. controls
    (343.5316,99.3331) and (341.8918,103.7971) .. (341.8918,107.9323) .. controls
    (341.8918,111.8553) and (342.9279,120.3356) .. (349.9549,120.2891) --
    (350.0402,126.6053) .. controls (350.0402,126.6053) and (346.8464,127.2714) ..
    (343.6474,125.5932) -- cycle(354.1740,126.8694) -- (354.2680,120.7878) ..
    controls (356.0359,120.4774) and (361.4956,118.1249) .. (362.2669,115.0519) --
    (367.1445,118.5573) .. controls (366.0858,121.6227) and (363.4458,123.2538) ..
    (361.4886,124.6170) .. controls (359.1147,126.2706) and (354.1740,126.8694) ..
    (354.1740,126.8694) -- cycle(361.5510,100.6058) .. controls (360.9196,99.4260)
    and (359.8229,98.3908) .. (357.9634,97.1882) .. controls (356.2166,96.0584)
    and (353.6710,95.9796) .. (353.6710,95.9796) -- (353.6835,89.6803) .. controls
    (353.6835,89.6803) and (357.2036,89.5268) .. (359.4545,90.4673) .. controls
    (363.6107,92.2039) and (366.7916,95.4564) .. (367.9386,98.4651) .. controls
    (367.9386,98.4278) and (361.5510,100.6057) .. (361.5510,100.6057) -- cycle;
    \end{scope}
\end{tikzpicture}

	% Title and authors
  \begin{minipage}[c][][c]{\textwidth}
		%\begin{center}
    \par\vspace{1cm}
		\Large\bfseries\@title
		\par\vspace{0.8cm}
		\normalfont\normalsize\noindent\@authors
		% \par\vspace{1cm}
		%\end{center}
	\end{minipage}
	% Affiliations
	\par\vspace{1cm}\itshape\small
	\@addresses\\
    \textsuperscript{\checkmark} Presenting author
	\par\vspace{1em}\noindent\rule{\linewidth}{.5pt}
	% Abstract
	\normalfont
	\par\vspace{1em}
	\begin{@abstract}\the\abstract\end{@abstract}
	% Keywords
        \par\vspace{1em}
	\itshape
	\begin{@keywords}\the\keywords\end{@keywords}
	\par\vspace{1em}\noindent\rule{\textwidth}{.5pt}
\end{minipage}
}
\par\noindent\usebox{\foo}\vspace{-0.25cm}}




%% Space between sections
\usepackage{titlesec}
\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.2\baselineskip}
\titlespacing*{\subsection}{0pt}{0.4\baselineskip}{0.1\baselineskip}
\titlespacing*{\subsubsection}{0pt}{0.1\baselineskip}{0\baselineskip}

% Space between paragraphs
\setlength{\parskip}{0.5\baselineskip}

% Do not indent the 1st line of a paragraph.
\setlength{\parindent}{0mm}

% For making the biblipgraphy more compact
\renewcommand{\itemsep}{\skip0}
\renewcommand{\parsep}{\skip0}



\makeatother

\endinput
