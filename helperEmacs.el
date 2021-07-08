(defun add-useEffect()
  (interactive)
  (insert "useEffect(()=>{
},[])")
  )

(defun toggle-music()
  (interactive)
  (shell-command "pp")
  )

(defun next-music()
  (interactive)
  (shell-command "next")
  )

(global-set-key (kbd "<f7>") 'toggle-music)
(global-set-key (kbd "<f8>") 'next-music)
(global-set-key (kbd "C-c C-s") 'add-useEffect)
