command! Pdf silent execute 'write !pdflatex '
            \ . shellescape(@%, 1) . ' >/dev/null 2>/dev/null &'
nnoremap <Leader>r :Pdf<return>
nnoremap <Leader>c :!pdflatex "%"<return>
nnoremap <Leader>p :!zathura  "./%:r.pdf" >/dev/null 2>/dev/null &<return>

"""     Luke's snippets

"""Navigating with guides
    inoremap <C-k>k <Esc>/<++><Enter>"_c4l
    vnoremap <C-k>k <Esc>/<++><Enter>"_c4l
    map <C-k>k <Esc>/<++><Enter>"_c4l
    inoremap <C-k><C-k> <Esc>/<++><Enter>"_c4l
    vnoremap <C-k><C-k> <Esc>/<++><Enter>"_c4l
    map <C-k><C-k> <Esc>/<++><Enter>"_c4l

"""LATEX
    inoremap <C-k>fr \begin{frame}
                \ \frametitle{}<return><++><return>\end{frame}<Esc>2k2f}i
    inoremap <C-k>em \emph{}<++><Esc>T{i
    inoremap <C-k>bf \textbf{}<++><Esc>T{i
    vnoremap <C-k> <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
    inoremap <C-k>it \textit{}<++><Esc>T{i
    inoremap <C-k>ct \textcite{}<++><Esc>T{i
    inoremap <C-k>cp \parencite{}<++><Esc>T{i
    inoremap <C-k>el
                \ \begin{enumerate}<Enter><Enter>
                \\end{enumerate}<Esc>kA<tab>\item<Space>
    inoremap <C-k>il
                \ \begin{itemize}<Enter><Enter>
                \\end{itemize}<Esc>kA<tab>\item<Space>
    inoremap <C-k>li <Enter>\item<Space>
    inoremap <C-k>ref \ref{}<Space><++><esc>t{i
    inoremap <C-k>tab
                \ \begin{tabular}<Enter><++><Enter>\end{tabular}<Esc>2kA{}<Esc>i
    inoremap <C-k>a \href{}{<++>}<Space><++><Esc>2T{i
    inoremap <C-k>sc \textsc{}<Space><++><Esc>T{i
    inoremap <C-k>chap \chapter{}<Enter><Enter><++><Esc>2kf}i
    inoremap <C-k>sec \section{}<Enter><Enter><++><Esc>2kf}i
    inoremap <C-k>ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
    inoremap <C-k>sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
    inoremap <C-k>st <Esc>F{i*<Esc>f}i
    inoremap <C-k>tt \texttt{}<Space><++><Esc>T{i
    inoremap <C-k>col
                \ \begin{columns}[T]<Enter>\column{.5\textwidth}<Enter><Enter>
                \\column{.5\textwidth}<Enter><++><Enter>
                \\end{columns}<Esc>3kA
    inoremap <C-k>rn (\ref{})<++><Esc>F}i
    inoremap <C-k>img \includegraphics[width=\textwidth]{}<Esc>T{i

	inoremap <C-k>vr \verb$$<Space><++><Esc>2T$i
    inoremap <C-k>code
                \ \begin{cverbatim}<Enter><Enter>
                \\end{cverbatim}<Esc>kA
