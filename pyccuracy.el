; pyccuracy major mode

;;; code:

(setq pyccuracy-mode-version "1")

(add-to-list 'auto-mode-alist '("\\.acc\\'" . pyccuracy-mode))

;(defgroup pyccuracy-mode nil
;  "Major mode for editing pyccuracy tests."
;  :group 'languages)


;;; TODO: indent, templates, syntax and etc.


;;; font-lock
(defvar pyccuracy-constants
  '("As a" "I want to" "So that" "Como um" "Eu quero" "Para") 
  "Pyccuracy constants in english and portuguese")

(defvar pyccuracy-entities
  '("Scenario" "Cenário" "Given" "When" "Then" "Dado que" "Quando" "Então")
  "Pyccuracy entities in english and portuguese")

(defvar pyccuracy-keywords
  '("I" "And I" "Eu" "E eu")
  "Pyccuracy keywords in english and portuguese")


(defvar pyccuracy-constants-regexp (regexp-opt pyccuracy-constants 'words))
(defvar pyccuracy-entities-regexp (regexp-opt pyccuracy-entities 'words))
(defvar pyccuracy-keywords-regexp (regexp-opt pyccuracy-keywords 'words))


"Major mode for editing pyccuracy tests in emacs"
(interactive)
(kill-all-local-variables)
(setq pyccuracy-mode
      `(
        (,pyccuracy-constants-regexp . font-lock-constant-face)
        (,pyccuracy-entities-regexp . font-lock-function-name-face)
        (,pyccuracy-keywords-regexp . font-lock-keyword-face)
))
  ;(set-syntax-table pyccuracy-mode-syntax-table)
  ;(set (make-local-variable 'font-lock-defaults) '(pyccuracy-font-lock-keywords))
  ;(setq major-mode 'pyccuracy)
  ;(setq mode-name "Pyccuracy")
  ;(run-hooks 'pyccuracy-mode-hook))

(provide 'pyccuracy-mode)
