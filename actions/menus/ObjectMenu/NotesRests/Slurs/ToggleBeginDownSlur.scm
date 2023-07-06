;;ToggleNoteDownSlur
(let ((tag "Slur"))
	(if (d-IsSlurStart)
		(begin
			(d-ToggleBeginSlur)
			(d-DirectiveDelete-note tag)
			(d-DirectiveDelete-chord tag))
		(begin
			(d-ToggleBeginSlur)
			(d-DirectivePut-chord-postfix tag "_")
			
			;;for some reason we do not have ⏝ in the font
			(d-DirectivePut-note-graphic tag "\n_
			Denemo
			30")))
	(d-RefreshDisplay)
	(d-SetSaved #f))
