;;; packages.el --- ai layer packages file for Spacemacs.
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

(defconst ai-packages '(
                        agent-shell
                        minuet
                        ))

;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ai/init-PACKAGE' to load and initialize the package.
(defun ai/init-agent-shell ()
  "Initialization for packages not referenced by another Spacemacs layer"
  (use-package agent-shell
    :config
    ))
(defun ai/init-minuet ()
  "Initialization for packages not referenced by another Spacemacs layer"
  (use-package minuet
    :config
    (setq minuet-provider 'openai-fim-compatible)
    (setq minuet-n-completions 1) ; recommended for Local LLM for resource saving
    ;; I recommend beginning with a small context window size and incrementally
    ;; expanding it, depending on your local computing power. A context window
    ;; of 512, serves as an good starting point to estimate your computing
    ;; power. Once you have a reliable estimate of your local computing power,
    ;; you should adjust the context window to a larger value.
    (setq minuet-context-window 512)

    (plist-put minuet-openai-fim-compatible-options :end-point minuet-end-point)
    (plist-put minuet-openai-fim-compatible-options :name "Ollama")
    (plist-put minuet-openai-fim-compatible-options :api-key minuet-api-key)
    (plist-put minuet-openai-fim-compatible-options :model minuet-model)

    (minuet-set-optional-options minuet-openai-fim-compatible-options :max_tokens 56))
  )

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ai/pre-init-PACKAGE' and/or
;;   `ai/post-init-PACKAGE' to customize the package as it is loaded.
(defun ai/post-init-agent-shell ()
  )
(defun ai/post-init-minuet ()
  (add-hook 'prog-mode-hook #'minuet-auto-suggestion-mode)
  )
