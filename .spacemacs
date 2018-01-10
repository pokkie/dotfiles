;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.





(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
    asciidoc
    auto-completion
    better-defaults
    bibtex
    csv
    deft

    (elfeed :variables rmh-elfeed-org-files (list "~/.emacs.d/private/elfeed.org")
	    :bind (:map elfeed-search-mode-map
             ("q" . bjm/elfeed-save-db-and-bury)
             ("Q" . bjm/elfeed-save-db-and-bury)
             ("*" . bjm/elfeed-star)
             ("M" . bjm/elfeed-unstar)
             ))
    emacs-lisp
    (erc :variables
                   erc-server-list
                   '(("irc.freenode.net"
                      :port "6697"
                      :ssl t
                      :nick "perrier-jouet")
                     ("irc.oftc.net"
                      :port "6697"
                      :ssl t
                      :nick "perrier-jouet")
                   erc-prompt-for-nickserv-password nil
                   erc-auto-join-channels-alist '(("freenode.net" "#archlinux" "#archlinux-fr" "#freebsd" "##linux" "##c" "##c++" "#postgresql" "#R" "#scala" "#haskell" "#erlang" "##javascript" "#python" "#go-nuts" "##networking" "#zsh" "#git" "#Node.js" "#emacs"))
                                                  ("oftc.net" "#debian-quebec" "#kernelnewbies" "#suckless")))

    ess
    evil-commentary
    finance
    git
    (version-control :variables
                     version-control-diff-tool 'git-gutter
                     version-control-diff-side 'left)
    graphviz
    helm
    (ranger :variables
             ranger-show-preview t)
    (pdf-tools)

    ;; languages
    (c-c++ :variables c-c++-enable-clang-support t)

    elixir
    elm
    erlang
    go
    haskell
    java
    javascript
    python
    rust
    scala
    scheme

    (latex :variables
           latex-enable-folding t
           latex-enable-auto-fill t)
    (markdown :variables markdown-live-preview-engine 'vmd)

    (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t)
    pandoc 
    prodigy
    shell
    (shell :variables
            shell-default-shell 'multi-term
            shell-default-height 30
            shell-default-term-shell "/usr/bin/zsh"
            shell-default-position 'bottom)

    shell-scripts
    spacemacs-layouts
    spell-checking
    syntax-checking
    sql
    (themes-megapack :packages
                     gruvbox-theme)
    vimscript
    yaml
    )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(base16-theme
                                      all-the-icons
                                      spaceline-all-the-icons
                                      multiple-cursors
                                      outshine
                                      autothemer)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(exec-path-from-shell-copy-env
                                    ess-R-object-popup)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         base16-ocean
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code"
                               :size 17
                               :weight normal
                               :width normal
                               :antialias 1
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (server-start)
  (setq powerline-default-separator 'wave)
  (setq all-the-icons-color-icons t)
  (setq all-th-icons-for-buffer t)
  
 


;; A secure Emacs environment

  (require 'cl)
  (setq tls-checktrust t)

  (setq python (or (executable-find "py.exe")
                 (executable-find "python")
                 ))


  (let ((trustfile
       (replace-regexp-in-string
        "\\\\" "/"
        (replace-regexp-in-string
         "\n" ""
         (shell-command-to-string (concat python " -m certifi"))))))
  (setq tls-program
        (list
         (format "gnutls-cli%s --x509cafile %s -p %%p %%h"
                 (if (eq window-system 'w32) ".exe" "") trustfile)))
  (setq gnutls-verify-error t)
  (setq gnutls-trustfiles (list trustfile))) 


  (require 'package)


 

;; package-archives setting
  (add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)


;; deft setting
  (setq deft-extensions '("org" "md" "txt"))
  (setq deft-directory "~/Dropbox/notes")

;; elfeed

  (defun elfeed-mark-all-as-read ()
   (interactive)
   (mark-whole-buffer)
   (elfeed-search-untag-all-unread))

;; code to add and remove a starred tag to elfeed article
;; based on http://matt.hackinghistory.ca/2015/11/22/elfeed/

;; add a star
  (defun bjm/elfeed-star ()
   "Apply starred to all selected entries."
   (interactive )
   (let* ((entries (elfeed-search-selected))
          (tag (intern "starred")))

    (cl-loop for entry in entries do (elfeed-tag entry tag))
    (mapc #'elfeed-search-update-entry entries)
    (unless (use-region-p) (forward-line))))

;; remove a start
  (defun bjm/elfeed-unstar ()
   "Remove starred tag from all selected entries."
   (interactive )
   (let* ((entries (elfeed-search-selected))
          (tag (intern "starred")))

    (cl-loop for entry in entries do (elfeed-untag entry tag))
    (mapc #'elfeed-search-update-entry entries)
    (unless (use-region-p) (forward-line))))

;; face for starred articles
;; (defface elfeed-search-starred-title-face
;;  '((t :foreground "#f77"))
;;  "Marks a starred Elfeed entry.")

;;(push '(starred elfeed-search-starred-title-face) elfeed-search-face-alist) 


;;functions to support syncing .elfeed between machines
;;makes sure elfeed reads index from disk before launching
  (defun bjm/elfeed-load-db-and-open ()
   "Wrapper to load the elfeed db from disk before opening"
   (interactive)
   (elfeed-db-load)
   (elfeed)
   (elfeed-search-update--force))

;;write to disk when quiting
  (defun bjm/elfeed-save-db-and-bury ()
   "Wrapper to save the elfeed db to disk before burying buffer"
   (interactive)
   (elfeed-db-save)
   (quit-window))

  



;; erc configuration

  (setq erc-prompt-for-nickserv-password nil)
                                     





;; PDF tools
  (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
   TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
   TeX-source-correlate-start-server t)


) ;; **** user-config() end ****

;; Writing

;; Publishing

;; Org-Mode

; (add-to-list 'load-path (expand-file-name (concat init-dir "ox-ghost")))
  (load-file "~/.emacs.d/external-apps/ox-leanpub.el") 



;; Setting up the to-do workflow

  (setq org-todo-keywords
       '((sequence "TODO(t)" "SUBTREE(s)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELLED(c@/!)")
	(sequence "CRASH(c)" "BUG(b)" "REQUEST(r)" "TEST(e)" "|" "FIXED(f)")))

  (setq org-todo-keyword-faces
       '(("WAIT" . "white")
	 ("CRASH" . "red")
	 ("BUG" . "red")
	 ("SUBTREE" . "grey")
	 ("TEST" . "turquoise1")
	 )) 

;; Making piority displayed with different color 

  (setq org-priority-faces
       '((?A . (:foreground "red1" :weight 'bold))
	 (?B . (:foreground "VioletRed1"))
	 (?C . (:foreground "DeepSkyBlue3"))
	 (?D . (:foreground "DeepSkyBlue4"))
	 (?E . (:foreground "gray40"))))

  (setq org-highest-priority 65)
  (setq org-default-priority 67)
  (setq org-lowest-priority 69) 

  (setq-default
  org-return-follows-link t
  org-image-actual-width '(400)
  org-highlight-latex-and-related '(latex script entities))


;; Agenda view customization

  (setq org-agenda-time-grid
       '((daily today today)
	 #("----------------" 0 16 (org-heading t))
	 (800 1000 1200 1400 1600 1800 2000 2200 2359))) ;; show default time lines
  (setq org-agenda-prefix-format '((agenda  . "%-10:T% s%?-2t") ; (agenda . " %s %-12t ")
				 (timeline . "%-9:T%?-2t% s")
				 (todo . "%i%-8:T")
				 (tags . "%i%-8:T")
				 (search . "%i%-8:T")))
  (setq org-agenda-remove-tags t) 
 
;; Setup agenda files
  (setq org-agenda-files (list "/data/org-mode/org")) 

;; Tag completion though out all agenda files
  (setq org-complete-tags-always-offer-all-agenda-tags t) 

;; Very important if your config file is a .org document… Also, add native <tab> behavior in source blocks.

  (setq
  org-src-fontify-natively t
  org-src-tab-acts-natively t)

;; We also want this in LaTeX output!

  (setq org-latex-listings 'minted)

;; For HTML output, we want to be able to set a custom stylesheet.

  (setq org-html-htmlize-output-type 'css)




;; Default Applications

;; Org opens PDFs by default in gv… change that to evince. Also open HTML in Chrome.

  (setq org-file-apps '((auto-mode . emacs)
                      ("\\.x?html?\\'" . "firefox %s")
                      ("\\.pdf\\'" . "zathura \"%s\"")
                      ("\\.pdf::\\([0-9]+\\)\\'" . "evince \"%s\" -p %1")
                      ("\\.pdf.xoj" . "xournal %s")))

;; org-babel

  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
    (C .t)
    (ditaa .t)
    (emacs-lisp .t)
    (haskell .t)
    (js .t)
    (python .t)
    (latex .t)
    (lisp .t)
    (R .t)
    (sql .t)
    ))
  

;; org-babel settings

  (setq org-babel-matlab-with-emacs-link nil)
  (setq org-confirm-babel-evaluate nil)
  (setq org-export-babel-evaluate nil)
  ;; can be bad for long simulations
  ;;; display/update images in the buffer after I evaluate
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)

 
;; ditaa

;; Ditaa is a small tool that takes ASCII art and renders it as neat diagrams. Combined with org, I can sketch out ideas directly in an org buffer using the emacs Artist mode.

  (setq org-ditaa-jar-path "~/.emacs.d/external-apps/ditaa0_9.jar")
  (setq org-ditaa-eps-ijar-path "~/.emacs.d/external-apps/ditaa0_9.jar")

  (setq ditaa-cmd "java -jar ~/.emacs.d/external-apps/ditaa0_9.jar")
  (defun djcb-ditaa-generate ()
    (interactive)
    (shell-command
     (concat ditaa-cmd " " buffer-file-name)))
 


;; org-present

;; Use with M-x org-present. We configure this by adding functionality to the hooks. For this, we first need a few helper functions. Some of them are similar to the ones in the "writing font" subsection.

;; This snippet adds some code to replace the plain old "-" or "+" bullets with a nicer unicode symbol, although I do have a feeling that the teardown function is a little too dirty. It works for now. 
  (setq my-org-present-prettify-bullets-keywords
       '(;; the regular "- " bullet
         ("^ *\\- " ;; match line start followed by 0 or more spaces followed by "-" followed by a space
          (0 (progn (put-text-property
                     (match-beginning 0) (match-end 0)
                      'display (concat ;; add spaces if necessary
                               (make-string (- (match-end 0) (match-beginning 0) 2) 32)
                               (char-to-string #x25B8) " ") ;; triangle
                    nil))))
        ;; the "+" bullet. add more as needed.
         ("^ *\\+ "
          (0 (progn (put-text-property
                     (match-beginning 0) (match-end 0)
                     'display (concat
                               (make-string (- (match-end 0) (match-beginning 0) 2) 32)
                               (char-to-string #x2022) " ") ;; bullet
                     nil))))))

  (defun my-org-present-prettify-bullets-setup ()
   (font-lock-add-keywords nil
                          my-org-present-prettify-bullets-keywords))
  (defun my-org-present-prettify-bullets-teardown ()
   (font-lock-remove-keywords nil
                             my-org-present-prettify-bullets-keywords)
   (remove-text-properties (point-min) (point-max) '(display nil))
   (revert-buffer t t))  



;; Next, we mess with some faces. TODO: maybe change face in code blocks to monospace (as of right now, I do not see an easy way to do this, since all of the font-lock faces inherit from default. Maybe I can make the font-lock faces inherit from a different font, of course buffer locally)

  (defun my-org-present-faces-setup ()
   (let ((heading-height 450)
         (heading-fam "Fira Sans")
         (text-fam "Fira Sans")
         (spacing 0.4))
     (make-local-variable 'org-present-face-cookie-list)
     (setq org-present-face-cookie-list nil)
     ;; remap the heading face
     (add-to-list 'org-present-face-cookie-list
                  (face-remap-add-relative 'org-level-1
                                           :family heading-fam
                                           :height heading-height
                                           :weight 'bold))
     ;; remap the default face
     (add-to-list 'org-present-face-cookie-list
                  (face-remap-add-relative 'default
                                           :family text-fam))
     ;; disable grey bars in code blocks
     (add-to-list 'org-present-face-cookie-list
                  (face-remap-add-relative 'org-block-begin-line
                                           :background (face-attribute 'default :background)))
     (add-to-list 'org-present-face-cookie-list
                  (face-remap-add-relative 'org-block-end-line
                                           :background (face-attribute 'default :background)))
     ;; add some spacing between lines
     (setq-local line-spacing spacing)))

  (defun my-org-present-faces-teardown ()
   ;; restore the modified faces
   (dolist (cookie org-present-face-cookie-list)
     (face-remap-remove-relative cookie))
   ;; restore the spacing
   (setq-local line-spacing nil))


;; The following snippet finally defines the setup and teardown hooks for org-present-mode. 

  (defun my-org-present-setup ()
   ;; do not want cursor or hl-line
   (make-variable-buffer-local 'post-command-hook)
   (remove-hook 'post-command-hook 'dennis-set-cursor)
   (setq global-hl-line-mode nil)
   ;; make it work with wireless presenter
   (buffer-local-set-key (kbd "<next>") 'org-present-next)
   (buffer-local-set-key (kbd "<prior>") 'org-present-prev)
   ;; change other things to make it look like a presentation
   (org-display-inline-images)
   (org-present-hide-cursor)
   (org-indent-mode)
   (my-org-present-faces-setup)
   (hidden-mode-line-mode)
   (org-present-big)
   (fringe-mode '(0 . 0))
   (my-org-present-prettify-bullets-setup)
   (org-present-read-only))

  (defun my-org-present-teardown ()
   (add-hook 'post-command-hook 'dennis-set-cursor)
   (setq global-hl-line-mode t)
   (buffer-local-set-key (kbd "<next>") nil)
   (buffer-local-set-key (kbd "<prior>") nil)
   (org-remove-inline-images)
   (org-present-show-cursor)
   (org-indent-mode -1)
   (my-org-present-faces-teardown)
   (hidden-mode-line-mode -1)
   (org-present-small)
   (fringe-mode '(4 . 4))
   (org-present-read-write)
   (my-org-present-prettify-bullets-teardown))

  (add-hook 'org-present-mode-hook 'my-org-present-setup)
  (add-hook 'org-present-mode-quit-hook 'my-org-present-teardown)



;; Windmove and org-mode clashes

;; Make windmove (and framemove) play nice with org.

  (add-hook 'org-shiftup-final-hook 'windmove-up)
  (add-hook 'org-shiftleft-final-hook 'windmove-left)
  (add-hook 'org-shiftdown-final-hook 'windmove-down)
  (add-hook 'org-shiftright-final-hook 'windmove-right)
 



;; YaSnippet and org

;; backtab is already used in org-mode. Let's use C-<tab> instead.

  (define-key org-mode-map (kbd "C-<tab>") 'yas-expand)



  (require 'dash)


  (provide 'pretty-fonts)



;;; API

;;;###autoload
  (defun pretty-fonts-set-fontsets (CODE-FONT-ALIST)
   "Utility to associate many unicode points with specified fonts."
   (--each CODE-FONT-ALIST
     (-let (((font . codes) it))
       (--each codes
         (set-fontset-font t `(,it . ,it) font)))))

;;;###autoload
  (defun pretty-fonts--add-kwds (FONT-LOCK-ALIST)
   "Exploits `font-lock-add-keywords' to apply regex-unicode replacements."
   (font-lock-add-keywords
    nil (--map (-let (((rgx uni-point) it))
                `(,rgx (0 (progn
                            (compose-region
                             (match-beginning 1) (match-end 1)
                             ,(concat "\t" (list uni-point)))
                            nil))))
              FONT-LOCK-ALIST)))

;;;###autoload
  (defmacro pretty-fonts-set-kwds (FONT-LOCK-HOOKS-ALIST)
   "Set regex-unicode replacements to many modes."
   `(--each ,FONT-LOCK-HOOKS-ALIST
      (-let (((font-locks . mode-hooks) it))
        (--each mode-hooks
          (add-hook it (-partial 'pretty-fonts--add-kwds
                                 (symbol-value font-locks)))))))

;;;Fira Font

  (defconst pretty-fonts-fira-font
   '(;; OPERATORS
     ;; Pipes
     ("\\(<|\\)" #Xe14d) ("\\(<>\\)" #Xe15b) ("\\(<|>\\)" #Xe14e) ("\\(|>\\)" #Xe135)

     ;; Brackets
     ("\\(<\\*\\)" #Xe14b) ("\\(<\\*>\\)" #Xe14c) ("\\(\\*>\\)" #Xe104)
     ("\\(<\\$\\)" #Xe14f) ("\\(<\\$>\\)" #Xe150) ("\\(\\$>\\)" #Xe137)
     ("\\(<\\+\\)" #Xe155) ("\\(<\\+>\\)" #Xe156) ("\\(\\+>\\)" #Xe13a)

     ;; Equality
     ("\\(!=\\)" #Xe10e) ("\\(!==\\)"         #Xe10f) ("\\(=/=\\)" #Xe143)
     ("\\(/=\\)" #Xe12c) ("\\(/==\\)"         #Xe12d)
     ("\\(===\\)"#Xe13d) ("[^!/]\\(==\\)[^>]" #Xe13c)
 
     ;; Equality Special
     ("\\(||=\\)"  #Xe133) ("[^|]\\(|=\\)" #Xe134)
     ("\\(~=\\)"   #Xe166)
     ("\\(\\^=\\)" #Xe136)
     ("\\(=:=\\)"  #Xe13b)

     ;; Comparisons
     ("\\(<=\\)" #Xe141) ("\\(>=\\)" #Xe145)
     ("\\(</\\)" #Xe162) ("\\(</>\\)" #Xe163)

     ;; Shifts
     ("[^-=]\\(>>\\)" #Xe147) ("\\(>>>\\)" #Xe14a)
     ("[^-=]\\(<<\\)" #Xe15c) ("\\(<<<\\)" #Xe15f)

     ;; Dots
     ("\\(\\.-\\)"    #Xe122) ("\\(\\.=\\)" #Xe123)
     ("\\(\\.\\.<\\)" #Xe125)

     ;; Hashes
     ("\\(#{\\)"  #Xe119) ("\\(#(\\)"   #Xe11e) ("\\(#_\\)"   #Xe120)
     ("\\(#_(\\)" #Xe121) ("\\(#\\?\\)" #Xe11f) ("\\(#\\[\\)" #Xe11a)

     ;; REPEATED CHARACTERS
     ;; 2-Repeats
     ("\\(||\\)" #Xe132)
     ("\\(!!\\)" #Xe10d)
     ("\\(%%\\)" #Xe16a)
     ("\\(&&\\)" #Xe131)

     ;; 2+3-Repeats
     ("\\(##\\)"       #Xe11b) ("\\(###\\)"         #Xe11c) ("\\(####\\)" #Xe11d)
     ("\\(--\\)"       #Xe111) ("\\(---\\)"         #Xe112)
     ("\\({-\\)"       #Xe108) ("\\(-}\\)"          #Xe110)
     ("\\(\\\\\\\\\\)" #Xe106) ("\\(\\\\\\\\\\\\\\)" #Xe107)
     ("\\(\\.\\.\\)"   #Xe124) ("\\(\\.\\.\\.\\)"   #Xe126)
     ("\\(\\+\\+\\)"   #Xe138) ("\\(\\+\\+\\+\\)"   #Xe139)
     ("\\(//\\)"       #Xe12f) ("\\(///\\)"         #Xe130)
     ("\\(::\\)"       #Xe10a) ("\\(:::\\)"         #Xe10b)

     ;; ARROWS
     ;; Direct
     ("[^-]\\(->\\)" #Xe114) ("[^=]\\(=>\\)" #Xe13f)
     ("\\(<-\\)"     #Xe152)
     ("\\(-->\\)"    #Xe113) ("\\(->>\\)"    #Xe115)
     ("\\(==>\\)"    #Xe13e) ("\\(=>>\\)"    #Xe140)
     ("\\(<--\\)"    #Xe153) ("\\(<<-\\)"    #Xe15d)
     ("\\(<==\\)"    #Xe158) ("\\(<<=\\)"    #Xe15e)
     ("\\(<->\\)"    #Xe154) ("\\(<=>\\)"    #Xe159)

     ;; Branches
     ("\\(-<\\)"  #Xe116) ("\\(-<<\\)" #Xe117)
     ("\\(>-\\)"  #Xe144) ("\\(>>-\\)" #Xe148)
     ("\\(=<<\\)" #Xe142) ("\\(>>=\\)" #Xe149)
     ("\\(>=>\\)" #Xe146) ("\\(<=<\\)" #Xe15a)

     ;; Squiggly
     ("\\(<~\\)" #Xe160) ("\\(<~~\\)" #Xe161)
     ("\\(~>\\)" #Xe167) ("\\(~~>\\)" #Xe169)
     ("\\(-~\\)" #Xe118) ("\\(~-\\)"  #Xe165)

     ;; MISC
     ("\\(www\\)"                   #Xe100)
     ("\\(<!--\\)"                  #Xe151)
     ("\\(~@\\)"                    #Xe164)
     ("[^<]\\(~~\\)"                #Xe168)
     ("\\(\\?=\\)"                  #Xe127)
     ("[^=]\\(:=\\)"                #Xe10c)
     ("\\(/>\\)"                    #Xe12e)
     ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
     ("[^:=]\\(:\\)[^:=]"           #Xe16c)
     ("\\(<=\\)"                    #Xe157))
   "Fira font ligatures and their regexes")

  (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")

;;; Display Layer
  (setq neo-theme 'icons)

  (setq display-packages
       '(
         ;; Owned Display Packages
         all-the-icons
         all-the-icons-ivy
         all-the-icons-dired
         spaceline-all-the-icons
         (prettify-utils :location (recipe :fetcher github
                                           :repo "Ilazki/prettify-utils.el"))

         ;; Owned Local Display Packages
         (pretty-code :location local)
         (pretty-eshell :location local)
         (pretty-fonts :location local)
         (pretty-magit :location local)
         (pretty-outlines :location local)
         (windows-frame-size-fix :location local)
         ))

;;; Locals
;;;; Pretty-code

  (defun display/init-pretty-code ()
   (use-package pretty-code
     :after prettify-utils macros
     :config
      (progn
       (global-prettify-symbols-mode 1)

       (setq hy-pretty-pairs
             (pretty-code-get-pairs
              '(;; Functional
                :lambda
                "fn"
                :def "defn" :composition "comp"

                ;; Types
                :null "None"
                :true "True" :false "False"

                ;; Flow
                :not "not"
                :in "in" :not-in "not-in"
                :and "and" :or "or"
                :some "some"

                ;; Other
                :tuple "#t"  ; Tag macro for tuple casting
                )))

       (setq python-pretty-pairs
             (pretty-code-get-pairs
              '(;; Functional
                :lambda
                "lambda"
                :def "def"

                ;; Types
                :null "None"
                :true "True" :false "False"
                :int "int" :float "float"
                :str "str" :bool "bool"

                ;; Flow
                :not "not"
                :in "in" :not-in "not in"
                :and "and" :or "or"
                :for "for"
                :return "return" :yield "yield"

                ;; Other
                :tuple "Tuple" :pipe "tz-pipe"
                )))

       (pretty-code-set-pairs `((hy-mode-hook     ,hy-pretty-pairs)
                                (python-mode-hook ,python-pretty-pairs))))))

;;;; Pretty-eshell

  (defun display/init-pretty-eshell ()
   (use-package pretty-eshell
     :after macros
     :config
     (progn
       ;; Directory
       (pretty-eshell-section
        esh-dir
        "\xf07c"  ; 
        (abbreviate-file-name (eshell/pwd))
        '(:foreground "gold" :bold ultra-bold :underline t))

       ;; Git Branch
       (pretty-eshell-section
        esh-git
       "\xe907"  ; 
        (magit-get-current-branch)
        '(:foreground "pink"))

       ;; Python Virtual Environment
       (pretty-eshell-section
        esh-python
        "\xe928"  ; 
        pyvenv-virtual-env-name)

       ;; Time
       (pretty-eshell-section
        esh-clock
        "\xf017"  ; 
        (format-time-string "%H:%M" (current-time))
        '(:foreground "forest green"))

       ;; Prompy Number
       (pretty-eshell-section
        esh-num
        "\xf0c9"  ; 
        (number-to-string pretty-eshell-prompt-num)
        '(:foreground "brown"))

       (setq pretty-eshell-funcs
             (list esh-dir esh-git esh-python esh-clock esh-num)))))

;;;; Pretty-fonts

  (defun display/init-pretty-fonts ()
   (use-package pretty-fonts
     :init
     (defconst pretty-fonts-hy-mode
       '(("\\(self\\)"   ?⊙)))

     :config
     (progn
       (pretty-fonts-set-kwds
        '(;; Fira Code Ligatures
          (pretty-fonts-fira-font prog-mode-hook org-mode-hook)
          ;; Custom replacements not possible with `pretty-code' package
          (pretty-fonts-hy-mode hy-mode-hook)))

       (pretty-fonts-set-fontsets
        '(("fontawesome"
           ;;                         
           #xf07c #xf0c9 #xf0c4 #xf0cb #xf017 #xf101)

          ("all-the-icons"
           ;;    
           #xe907 #xe928)

          ("github-octicons"
           ;;                          
           #xf091 #xf059 #xf076 #xf075 #xe192  #xf016)

          ("material icons"
           ;;        
           #xe871 #xe918 #xe3e7
           ;;
           #xe3d0 #xe3d1 #xe3d2 #xe3d4)

          ("Symbola"
           ;; 𝕊    ⨂      ∅      ⟻    ⟼     ⊙      𝕋       𝔽
           #x1d54a #x2a02 #x2205 #x27fb #x27fc #x2299 #x1d54b #x1d53d
           ;; 𝔹    𝔇       𝔗
           #x1d539 #x1d507 #x1d517))))))

;;;; Pretty-magit

  (defun display/init-pretty-magit ()
   (use-package pretty-magit
     :after ivy magit macros
     :config
     (progn
       (pretty-magit-add-leader
        "Feature"
        ?
        (:foreground "slate gray" :height 1.2))

       (pretty-magit-add-leader
        "Add"
        ?
        (:foreground "#375E97" :height 1.2))

       (pretty-magit-add-leader
        "Fix"
        ?
        (:foreground "#FB6542" :height 1.2))

       (pretty-magit-add-leader
        "Clean"
        ?
        (:foreground "#FFBB00" :height 1.2))

       (pretty-magit-add-leader
        "Docs"
        ?
        (:foreground "#3F681C" :height 1.2))

       (pretty-magit-add-leader
        "master"
        ?
        (:box t :height 1.2)
        'no-prompt)

       (pretty-magit-add-leader
        "origin"
        ?
        (:box t :height 1.2)
        'no-prompt))))

;;;; Pretty-outlines

  (defun display/init-pretty-outlines ()
   (use-package pretty-outlines
     :after outshine macros
     :config
     (progn
       (setq pretty-outlines-bullets-bullet-list
             '("" "" "" ""))
       (setq pretty-outlines-ellipsis
             "")

       (spacemacs/add-to-hooks 'pretty-outlines-set-display-table
                               '(outline-mode-hook
                                 outline-minor-mode-hook))

       (spacemacs/add-to-hooks 'pretty-outlines-add-bullets
                               '(emacs-lisp-mode-hook
                                 hy-mode-hook
                                 python-mode-hook)))))

;;;; Windows-frame-size-fix

  (defun display/init-windows-frame-size-fix ()
   (use-package windows-frame-size-fix
     :if (not linux?)))

;;; Core Packages
;;;; All-the-icons

  (defun display/init-all-the-icons ()
   (use-package all-the-icons
     :config
     (progn
       (defconst all-the-icons-icon-hy
         '("\\.hy$"
           all-the-icons-fileicon "lisp" :face all-the-icons-orange))
       (defconst all-the-icons-mode-icon-hy
         '(hy-mode
           all-the-icons-fileicon "lisp" :face all-the-icons-orange))

       (defconst all-the-icons-icon-graphviz
         '("\\.dot$"
           all-the-icons-fileicon "graphviz" :face all-the-icons-pink))
       (defconst all-the-icons-mode-icon-graphviz
         '(graphviz-dot-mode
           all-the-icons-fileicon "graphviz" :face all-the-icons-pink))

       (add-to-list 'all-the-icons-icon-alist
                    all-the-icons-icon-hy)
       (add-to-list 'all-the-icons-icon-alist
                    all-the-icons-icon-graphviz)
       (add-to-list 'all-the-icons-mode-icon-alist
                    all-the-icons-mode-icon-hy)
       (add-to-list 'all-the-icons-mode-icon-alist
                   all-the-icons-mode-icon-graphviz))))

;;;; All-the-icons-ivy

  (defun display/init-all-the-icons-ivy ()
   (use-package all-the-icons-ivy
     :after all-the-icons
     :config
     (progn
       (all-the-icons-ivy-setup)
       (advice-add 'all-the-icons-ivy-file-transformer :override
                   'ivy-file-transformer-fixed-for-files))))

;;;; All-the-icons-dired

  (defun display/init-all-the-icons-dired ()
   (use-package all-the-icons-dired
     :config
     (add-hook 'dired-mode-hook
               'all-the-icons-dired-mode)))

;;;; Prettify-utils

  (defun display/init-prettify-utils ()
   (use-package prettify-utils))



;;;; Spaceline-all-the-icons


  (defun display/init-spaceline-all-the-icons ()
   (use-package spaceline-all-the-icons
     :after spaceline
     :config
     (progn
       (spaceline-all-the-icons-theme)

       (setq
        spaceline-highlight-face-func
        'spaceline-highlight-face-default

        spaceline-all-the-icons-icon-set-modified
        'chain

        spaceline-all-the-icons-icon-set-window-numbering
        'square

        spaceline-all-the-icons-separator-type
        'none

        spaceline-all-the-icons-primary-separator
        "")

       ;; Buffer Segments
       (spaceline-toggle-all-the-icons-buffer-size-off)
       (spaceline-toggle-all-the-icons-buffer-position-off)

       ;; Git Segments
       (spaceline-toggle-all-the-icons-git-status-off)
       (spaceline-toggle-all-the-icons-vc-icon-off)
       (spaceline-toggle-all-the-icons-vc-status-off)

       ;; Misc Segments
       (spaceline-toggle-all-the-icons-eyebrowse-workspace-off)
       (spaceline-toggle-all-the-icons-flycheck-status-off)
       (spaceline-toggle-all-the-icons-time-ioff))))




;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (spaceline-all-the-icons evil-nerd-commenter yapfify yaml-mode xterm-color ws-butler winum which-key web-beautify volatile-highlights vmd-mode vimrc-mode vi-tilde-fringe uuidgen use-package unfill toml-mode toc-org sql-indent spaceline smeargle shell-pop restart-emacs ranger rainbow-delimiters racer pyvenv pytest pyenv-mode py-isort prodigy pip-requirements persp-mode pcre2el paradox pandoc-mode ox-reveal ox-pandoc ox-gfm outshine orgit org-ref org-projectile org-present org-pomodoro org-download org-bullets open-junk-file ob-elixir neotree mwim multi-term move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum livid-mode live-py-mode linum-relative link-hint ledger-mode json-mode js2-refactor js-doc intero insert-shebang info+ indent-guide hy-mode hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag haskell-snippets gruvbox-theme graphviz-dot-mode google-translate golden-ratio go-guru go-eldoc gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md geiser fuzzy flyspell-correct-helm flycheck-rust flycheck-pos-tip flycheck-mix flycheck-ledger flycheck-haskell flycheck-elm flycheck-credo flx-ido fish-mode fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-commentary evil-args evil-anzu eval-sexp-fu ess-smart-equals ess-R-data-view eshell-z eshell-prompt-extras esh-help erlang erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks ensime elm-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies dumb-jump disaster diminish diff-hl deft define-word dactyl-mode cython-mode csv-mode company-tern company-statistics company-shell company-go company-ghci company-ghc company-emacs-eclim company-cabal company-c-headers company-auctex company-anaconda column-enforce-mode coffee-mode cmm-mode cmake-mode clean-aindent-mode clang-format cargo base16-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk all-the-icons alchemist aggressive-indent adoc-mode adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

