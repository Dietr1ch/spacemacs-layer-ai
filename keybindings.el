;;; keybindings.el ---                               -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026  Dietrich Daroch
;;
;; Author: Dietrich Daroch <Dietrich@Daroch.me>
;; URL: https://github.com/Dietr1ch/spacemacs-layer-ai
;; Keywords: tools,llm
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(spacemacs/declare-prefix "$" "AI")


(spacemacs/declare-prefix "$$" "agent-shell")
(spacemacs/set-leader-keys
	"$$$" 'agent-shell
	"$$n" 'agent-shell-new-shell
	"$$t" 'agent-shell-toggle
	"$$c" 'agent-shell-prompt-compose
	)
(spacemacs/declare-prefix "$$s" "send")
(spacemacs/set-leader-keys
	"$$sd" 'agent-shell-send-dwim
	"$$sf" 'agent-shell-send-current-file
	"$$si" 'agent-shell-send-clipboard-image
	"$$sr" 'agent-shell-send-region
	"$$ss" 'agent-shell-send-screenshot
	)


(spacemacs/declare-prefix "$m" "minuet")
(spacemacs/set-leader-keys
	"$mm" 'minuet-active-mode
	"$ms" 'minuet-show-suggestion
	"$mc" 'minuet-complete-with-minibuffer
	"$mC" 'minuet-configure-provider
	)
(define-key evil-insert-state-map (kbd "<right>") #'minuet-accept-suggestion)
(define-key evil-insert-state-map (kbd "C-<return>") #'minuet-accept-suggestion)
(define-key evil-insert-state-map (kbd "C-DEL") #'minuet-dismiss-suggestion)
(define-key evil-insert-state-map (kbd "C-<tab>") #'minuet-next-suggestion)
(define-key evil-insert-state-map (kbd "C-<iso-lefttab>") #'minuet-previous-suggestion)
(define-key evil-insert-state-map (kbd "C-<left>") #'minuet-dismiss-suggestion)
(define-key evil-insert-state-map (kbd "C-<right>") #'minuet-accept-suggestion-line)
