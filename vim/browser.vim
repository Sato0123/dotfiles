function! GotoWeb(app_name = "Google Chrome")
	let focus = expand('<cfile>')
	echo focus
	if focus =~# '\v^https?://.*$'
		echo "nice"
	"	call job_start(["open", "-a", a:app_name, focus])
	"else
	"	normal! gf
	endif
endfunction

nnoremap gf :call GotoWeb()<CR>
