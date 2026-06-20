;;; config.el ---                                    -*- lexical-binding: t; -*-
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


;; variables

(defvar minuet-provider 'openai-fim-compatible
	"The minuet provider to use.")
(defvar minuet-end-point "http://localhost:11434/v1/completions"
	"The model to use.")
(defvar minuet-api-key "TERM"
	"The ENVIRONMENT_VARIABLE where to read the API KEY.")
(defvar minuet-model "qwen2.5-coder:3b"
	"The model to use.")

(defvar minuet-n-completions 3
	"Number of completions to generate. Recommended to keep low.")
(defvar minuet-context-window 512
	"Context window to use. It's recommended to be conservative and explore how large of a context you can use.")

;;; config.el ends here
