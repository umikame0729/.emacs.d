;;; package --- Summary

;;; Commentary:

;;; Code:

;;; Custom File
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Basic Settings
(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

;; Package Settings
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://melpa.org/packages/") t)
(package-initialize)

;; Use-package Init
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; Time Evaluation
;; (require 'eva-time)

;; General Settings
(require 'init-general)
(require 'init-key)
(require 'init-theme)

;; Package Settings
(require 'plug-helm)
(require 'plug-flycheck)
(require 'plug-trim-space)
(require 'plug-anzu)
(require 'plug-jump)
(require 'plug-yasnippet)
(require 'plug-doxy)
(require 'plug-company)
(require 'plug-git)

;; Language Support
(require 'sup-common)
(require 'sup-elisp)
(require 'sup-elixir)
(require 'sup-rust)
(require 'sup-c)
(require 'sup-python)
(require 'sup-go)
(require 'sup-cmake)

;; Provide
(provide 'init)
;;; init.el ends here
