(require 'magit)

(defun magit-fastcommit (&optional args)
  (interactive (list (magit-commit-arguments)))
  (magit-start-git nil "commit" "-m" (uuidgen-4) args))

(magit-define-popup-action 'magit-commit-popup
  ?` "Commit with an auto-generated message" 'magit-fastcommit)
