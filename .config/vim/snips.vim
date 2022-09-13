"""     Luke's snippets 

"""Navigating with guides
	autocmd FileType tex inoremap <C-k>k <Esc>/<++><Enter>"_c4l
	autocmd FileType tex vnoremap <C-k>k <Esc>/<++><Enter>"_c4l
	autocmd FileType tex map <C-k>k <Esc>/<++><Enter>"_c4l
	autocmd FileType tex inoremap <C-k><C-k> <Esc>/<++><Enter>"_c4l
	autocmd FileType tex vnoremap <C-k><C-k> <Esc>/<++><Enter>"_c4l
	autocmd FileType tex map <C-k><C-k> <Esc>/<++><Enter>"_c4l

"""LATEX
	autocmd FileType tex inoremap <C-k>fr \begin{frame} \frametitle{}<return><++><return>\end{frame}<Esc>2k2f}i
	autocmd FileType tex inoremap <C-k>em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap <C-k>bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap <C-k> <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap <C-k>it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap <C-k>ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap <C-k>cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap <C-k>el \begin{enumerate}<Enter><Enter>\end{enumerate}<Esc>kA<tab>\item<Space>
	autocmd FileType tex inoremap <C-k>il \begin{itemize}<Enter><Enter>\end{itemize}<Esc>kA<tab>\item<Space>
	autocmd FileType tex inoremap <C-k>li <Enter>\item<Space>
	autocmd FileType tex inoremap <C-k>ref \ref{}<Space><++><esc>t{i
	autocmd FileType tex inoremap <C-k>tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Esc>2kA{}<Esc>i
	autocmd FileType tex inoremap <C-k>a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap <C-k>sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap <C-k>chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap <C-k>sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap <C-k>ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap <C-k>sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap <C-k>st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap <C-k>tt \texttt{}<Space><++><Esc>T{i
    autocmd FileType tex inoremap <C-k>col \begin{columns}[T]<Enter>\column{.5\textwidth}<Enter><Enter>\column{.5\textwidth}<Enter><++><Enter>\end{columns}<Esc>3kA
    autocmd FileType tex inoremap <C-k>rn (\ref{})<++><Esc>F}i
    autocmd FileType tex inoremap <C-k>img \includegraphics[width=\textwidth]{}<Esc>T{i
