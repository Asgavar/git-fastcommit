;;; magit-fastcommit.el --- Generate commit messages with Magit and two keystrokes -*- lexical-binding: t -*-

;; Author: Artur Juraszek
;; URL: https://github.com/Asgavar/magit-fastcommit
;;
;;; Commentary:
;;
;; A small package adding a "commit with an auto-generated message"
;; action to Magit's commit popup.

(require 'magit)

;;; Code:

(defun magit-fastcommit (&optional args)
  "Generate a UUIDv4 message and commit, passing ARGS down as in normal commit."
  (interactive (list (magit-commit-arguments)))
  (magit-start-git nil "commit" "-m" (uuidgen-4) args))

(magit-define-popup-action 'magit-commit-popup
  ?` "Commit with an auto-generated message" 'magit-fastcommit)

;;; magit-fastcommit.el ends here
