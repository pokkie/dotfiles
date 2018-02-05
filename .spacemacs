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
   dotspacemacs-configuration-layer-path '("~/.emacs.d/private/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     asciidoc
     amharic
     auto-completion
     better-defaults
     bibtex
     csv
     dash
     deft
     display 
     (elfeed 
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
     emacs-lisp
     ess
     evil-commentary
     finance
     git
     graphviz   
     helm

     ;; languages
     (c-c++ :variables c-c++-enable-clang-support t)

     elixir
     elm
     erlang
     fasd
     finance
     go
     (haskell :variables
              haskell-enable-ghc-mod-support t)
     idris
     ipython-notebook
     java
     javascript
     ;;(python :variables python-test-runner 'pytest
     ;;        python-enable-yapf-format-on-save t)
     elpy
     rust
     scala
     scheme

     (latex :variables
            latex-enable-folding t
            latex-enable-auto-fill t) 
     (markdown :variables markdown-live-preview-engine 'vmd)
     neotree
     nlinum
     notmuch
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t)
     ox-leanpub
     pandoc
     pass
     pdf-tools
     polymode
     prodigy
     restclient
     (shell :variables
             shell-default-shell 'multi-term
             shell-default-height 30
             shell-default-term-shell "/usr/bin/zsh"
             shell-default-position 'bottom)	
     spacemacs-layouts
     spell-checking
     sql
     syntax-checking
     (ranger :variables
             ranger-show-preview t)
     themes-megapack
     theming
     (version-control :variables
                      version-control-diff-tool 'git-gutter
                      version-control-diff-side 'left)
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
                                      gnus-alias
                                      tiny-menu
                                      doom-themes
                                      outshine
                                      autothemer
                                      org-evil)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(exec-path-from-shell-copy-env
                                    ess-R-object-popup
                                    firebelly-theme
                                    tronesque-theme
                                    niflheim-theme
                                    pastels-on-dark-theme
                                    zonokai-theme)
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
                         doom-one
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
                               :powerline-scale 1.5)
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
   dotspacemacs-mode-line-theme 'all-the-icon
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; file format
   dotspacemacs-frame-title-format "%t"
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

  ;; package-archives setting
  (require 'package)

  (let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
  (package-initialize)


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


  ;; lang settings
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8)

  ;; fancy symbols
  (global-prettify-symbols-mode t)

  ;; Fira code
  ;; This works when using emacs --daemon + emacsclient
  (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
  ;; This works when using emacs without server/client
  (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
  ;; I haven't found one statement that makes both of the above situations work, so I use both for now

  (defconst fira-code-font-lock-keywords-alist
  (mapcar (lambda (regex-char-pair)
            `(,(car regex-char-pair)
              (0 (prog1 ()
                   (compose-region (match-beginning 1)
                                   (match-end 1)
                                   ;; The first argument to concat is a string containing a literal tab
                                   ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
          '(("\\(www\\)"                   #Xe100)
            ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
            ("\\(\\*\\*\\*\\)"             #Xe102)
            ("\\(\\*\\*/\\)"               #Xe103)
            ("\\(\\*>\\)"                  #Xe104)
            ("[^*]\\(\\*/\\)"              #Xe105)
            ("\\(\\\\\\\\\\)"              #Xe106)
            ("\\(\\\\\\\\\\\\\\)"          #Xe107)
            ("\\({-\\)"                    #Xe108)
            ;; ("\\(\\[\\]\\)"                #Xe109) This is the [] ligature and I don't like
            ("\\(::\\)"                    #Xe10a)
            ("\\(:::\\)"                   #Xe10b)
            ("[^=]\\(:=\\)"                #Xe10c)
            ("\\(!!\\)"                    #Xe10d)
            ("\\(!=\\)"                    #Xe10e)
            ("\\(!==\\)"                   #Xe10f)
            ("\\(-}\\)"                    #Xe110)
            ("\\(--\\)"                    #Xe111)
            ("\\(---\\)"                   #Xe112)
            ("\\(-->\\)"                   #Xe113)
            ("[^-]\\(->\\)"                #Xe114)
            ("\\(->>\\)"                   #Xe115)
            ("\\(-<\\)"                    #Xe116)
            ("\\(-<<\\)"                   #Xe117)
            ("\\(-~\\)"                    #Xe118)
            ("\\(#{\\)"                    #Xe119)
            ("\\(#\\[\\)"                  #Xe11a)
            ("\\(##\\)"                    #Xe11b)
            ("\\(###\\)"                   #Xe11c)
            ("\\(####\\)"                  #Xe11d)
            ("\\(#(\\)"                    #Xe11e)
            ("\\(#\\?\\)"                  #Xe11f)
            ("\\(#_\\)"                    #Xe120)
            ("\\(#_(\\)"                   #Xe121)
            ("\\(\\.-\\)"                  #Xe122)
            ("\\(\\.=\\)"                  #Xe123)
            ("\\(\\.\\.\\)"                #Xe124)
            ("\\(\\.\\.<\\)"               #Xe125)
            ("\\(\\.\\.\\.\\)"             #Xe126)
            ("\\(\\?=\\)"                  #Xe127)
            ("\\(\\?\\?\\)"                #Xe128)
            ("\\(;;\\)"                    #Xe129)
            ("\\(/\\*\\)"                  #Xe12a)
            ("\\(/\\*\\*\\)"               #Xe12b)
            ("\\(/=\\)"                    #Xe12c)
            ("\\(/==\\)"                   #Xe12d)
            ("\\(/>\\)"                    #Xe12e)
            ("\\(//\\)"                    #Xe12f)
            ("\\(///\\)"                   #Xe130)
            ("\\(&&\\)"                    #Xe131)
            ("\\(||\\)"                    #Xe132)
            ("\\(||=\\)"                   #Xe133)
            ;("[^|]\\(|=\\)"                #Xe134)
            ("\\(|>\\)"                    #Xe135)
            ("\\(\\^=\\)"                  #Xe136)
            ("\\(\\$>\\)"                  #Xe137)
            ("\\(\\+\\+\\)"                #Xe138)
            ("\\(\\+\\+\\+\\)"             #Xe139)
            ("\\(\\+>\\)"                  #Xe13a)
            ("\\(=:=\\)"                   #Xe13b)
            ;("[^!/]\\(==\\)[^>]"           #Xe13c)
            ("\\(===\\)"                   #Xe13d)
            ("\\(==>\\)"                   #Xe13e)
            ;("[^=]\\(=>\\)"                #Xe13f)
            ("\\(=>>\\)"                   #Xe140)
            ("\\(<=\\)"                    #Xe141)
            ("\\(=<<\\)"                   #Xe142)
            ("\\(=/=\\)"                   #Xe143)
            ("\\(>-\\)"                    #Xe144)
            ("\\(>=\\)"                    #Xe145)
            ("\\(>=>\\)"                   #Xe146)
            ("[^-=]\\(>>\\)"               #Xe147)
            ("\\(>>-\\)"                   #Xe148)
            ("\\(>>=\\)"                   #Xe149)
            ("\\(>>>\\)"                   #Xe14a)
            ("\\(<\\*\\)"                  #Xe14b)
            ("\\(<\\*>\\)"                 #Xe14c)
            ("\\(<|\\)"                    #Xe14d)
            ("\\(<|>\\)"                   #Xe14e)
            ("\\(<\\$\\)"                  #Xe14f)
            ("\\(<\\$>\\)"                 #Xe150)
            ("\\(<!--\\)"                  #Xe151)
            ("\\(<-\\)"                    #Xe152)
            ("\\(<--\\)"                   #Xe153)
            ("\\(<->\\)"                   #Xe154)
            ("\\(<\\+\\)"                  #Xe155)
            ("\\(<\\+>\\)"                 #Xe156)
            ("\\(<=\\)"                    #Xe157)
            ("\\(<==\\)"                   #Xe158)
            ("\\(<=>\\)"                   #Xe159)
            ("\\(<=<\\)"                   #Xe15a)
            ("\\(<>\\)"                    #Xe15b)
            ("[^-=]\\(<<\\)"               #Xe15c)
            ("\\(<<-\\)"                   #Xe15d)
            ("\\(<<=\\)"                   #Xe15e)
            ("\\(<<<\\)"                   #Xe15f)
            ("\\(<~\\)"                    #Xe160)
            ("\\(<~~\\)"                   #Xe161)
            ("\\(</\\)"                    #Xe162)
            ("\\(</>\\)"                   #Xe163)
            ("\\(~@\\)"                    #Xe164)
            ("\\(~-\\)"                    #Xe165)
            ("\\(~=\\)"                    #Xe166)
            ("\\(~>\\)"                    #Xe167)
            ("[^<]\\(~~\\)"                #Xe168)
            ("\\(~~>\\)"                   #Xe169)
            ("\\(%%\\)"                    #Xe16a)
            ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
            ("[^:=]\\(:\\)[^:=]"           #Xe16c)
            ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
            ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f)
            )))

  (defun add-fira-code-symbol-keywords ()
  (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

  (add-hook 'prog-mode-hook
          #'add-fira-code-symbol-keywords)



  ;; Disk space is cheap. Save lots.

  (setq delete-old-versions -1)
  (setq version-control t)
  (setq vc-make-backup-files t)
  (setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))




  ;; erc configuration
  (setq erc-prompt-for-nickserv-password nil)


  ;; python


  ;; Org Mode


  (with-eval-after-load 'org
    (provide 'emacs-orgmode-config)
    (require 'ox-reveal)
    (require 'ox)
    (require 'ox-latex)
    (require 'ox-bibtex)
    (require 'ox-beamer)
    (require 'ox-md)
    (require 'ox-publish)
    (require 'org-agenda)
    


    (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

    (define-key global-map "\C-cl" 'org-store-link)
    (define-key global-map "\C-ca" 'org-agenda)

    (setq org-log-done t)
    (setq org-fast-tag-selection-single-key t)
    (setq org-use-fast-todo-selection t)
    (setq org-startup-truncated nil)

    (setq org-directory (expand-file-name "/data/org-mode/org"))
    (setq org-default-notes-file (concat org-directory "/mygtd.org"))
    (setq org-agenda-files '("/data/org-mode/org" "/data/www" ))
  
    (setq org-todo-keywords
      '(
        (sequence "IDEA(i)" "TODO(t)" "STARTED(s)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)")
        (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)")
        ))

    (setq org-todo-keyword-faces
      '(("IDEA" . (:foreground "GoldenRod" :weight bold))
        ("NEXT" . (:foreground "IndianRed1" :weight bold))   
        ("STARTED" . (:foreground "OrangeRed" :weight bold))
        ("WAITING" . (:foreground "coral" :weight bold)) 
        ("CANCELED" . (:foreground "LimeGreen" :weight bold))
        ("DELEGATED" . (:foreground "LimeGreen" :weight bold))
        ("SOMEDAY" . (:foreground "LimeGreen" :weight bold))
        ))

    (setq org-tag-persistent-alist 
      '((:startgroup . nil)
        ("HOME" . ?h) 
        ("RESEARCH" . ?r)
        ("TEACHING" . ?t)
        (:endgroup . nil)
        (:startgroup . nil)
        ("OS" . ?o) 
        ("DEV" . ?d)
        ("WWW" . ?w)
        (:endgroup . nil)
        (:startgroup . nil)
        ("EASY" . ?e)
        ("MEDIUM" . ?m)
        ("HARD" . ?a)
        (:endgroup . nil)
        ("URGENT" . ?u)
        ("KEY" . ?k)
        ("BONUS" . ?b)
        ("noexport" . ?x)  
        )
      )

    (setq org-tag-faces
      '(
        ("HOME" . (:foreground "GoldenRod" :weight bold))
        ("RESEARCH" . (:foreground "GoldenRod" :weight bold))
        ("TEACHING" . (:foreground "GoldenRod" :weight bold))
        ("OS" . (:foreground "IndianRed1" :weight bold))   
        ("DEV" . (:foreground "IndianRed1" :weight bold))   
        ("WWW" . (:foreground "IndianRed1" :weight bold))
        ("URGENT" . (:foreground "Red" :weight bold))  
        ("KEY" . (:foreground "Red" :weight bold))  
        ("EASY" . (:foreground "OrangeRed" :weight bold))  
        ("MEDIUM" . (:foreground "OrangeRed" :weight bold))  
        ("HARD" . (:foreground "OrangeRed" :weight bold))  
        ("BONUS" . (:foreground "GoldenRod" :weight bold))
        ("noexport" . (:foreground "LimeGreen" :weight bold))  
        )
      )

    (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))) 
    (setq org-ellipsis "⤵")
    (setq org-enable-priority-commands nil)
    (setq org-list-demote-modify-bullet (quote (("+" . "-")
                                            ("*" . "-")
                                            ("1." . "-")
                                            ("1)" . "a)"))))

    ;; Activate Babel languages
    (use-package ob-gnuplot)
    (org-babel-do-load-languages
     'org-babel-load-languages
     '( (ditaa . t) (sql . t) (C . t) (C ++ . t) (sh . t) (emacs-lisp t) (lisp . t)
      (css . t) (awk . t) (js . t) (R . t) (python . t) (org . t) (plantuml . t) (gnuplot . t)
      (haskell . t) (maxima . t)(calc . t) (mathomatic . t)))

    ;; ditaa
    (setq org-ditaa-jar-path "~/.emacs.d/private/local/ditaa0_9.jar")

    (setq org-src-fontify-natively t)
    (setq org-src-tab-acts-natively t)
  
    (setq org-export-babel-evaluate nil)

    (defun org-babel-tangle-block()
      (interactive)
      (let ((current-prefix-arg '(4)))
        (call-interactively 'org-babel-tangle)
        ))


    (add-to-list 'ispell-skip-region-alist '(":\\(PROPERTIES\\|LOGBOOK\\):" . ":END:"))
    (add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_SRC" . "#\\+END_SRC"))
    (add-to-list 'ispell-skip-region-alist '("#\\+BEGIN_EXAMPLE" . "#\\+END_EXAMPLE"))

    (setq org-ascii-links-to-notes nil)
    (setq org-ascii-headline-spacing (quote (1 . 1)))
    (setq org-export-with-smart-quotes t)
  
    (setq org-html-coding-system 'utf-8-unix) 

    (
     setq org-publish-project-alist
          '(
            ("html-static"
             :base-directory "/data/www/static_html/"
             :base-extension "html\\|xml\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz\\|csv\\|m"
             :include (".htaccess")
             :publishing-directory "/data/www/public_html/"
             :recursive t
             :publishing-function org-publish-attachment
             )

            ("pdf"
             :base-directory  "/data/org-mode/"
             :base-extension "org"
             :publishing-directory "/data/org-mode/pdf"
             :publishing-function org-latex-publish-to-pdf
             )

            ("org-notes"
             :base-directory "/data/www/org"
             :base-extension "org"
             :publishing-directory "/data/www/public_html/org"
             :recursive t
             :exclude ".*-reveal\.org"        ; exclude org-reveal slides 
             :publishing-function org-html-publish-to-html
             :headline-levels 2               ; Just the default for this project.
             :auto-sitemap t                  ; Generate sitemap.org automagically...
             :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
             :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
             :with-creator nil    ; Disable the inclusion of "Created by Org" in the postamble.
             :with-email nil      ; Disable the inclusion of "(your email)" in the postamble.
             :with-author nil       ; Enable the inclusion of "Author: Your Name" in the postamble.
             :auto-preamble t;         ; Enable auto preamble 
             :auto-postamble t         ; Enable auto postamble 
             :table-of-contents t        ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
             :toc-levels 2               ; Just the default for this project.
             :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
             :html-head-include-default-style nil ;Disable the default css style
             :html-head-include-scripts nil ;Disable the default javascript snippet
             :html-head "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"http://www.i3s.unice.fr/~malapert/css/worg.min.css\"/>\n<script type=\"text/javascript\" src=\"http://www.i3s.unice.fr/~malapert/js/ga.min.js\"></script>" ;Enable custom css style and other tags
             :html-link-home "index.html"    ; Just the default for this project.
             :html-link-up "../index.html"    ; Just the default for this project.
             )

            ("org-static"
             :base-directory "/data/www/org"
             :base-extension "html\\|xml\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz\\|csv\\|m"
             :publishing-directory "/data/www/public_html/org/"
             :recursive t
             :publishing-function org-publish-attachment
             :exclude "Rplots.pdf"
             )

            ("org" 
             :components ("org-notes" "org-static" "html-static")
             )

            ("_org-notes"
             :base-directory "/data/www/_org/"
             :base-extension "org"
             :publishing-directory "/data/www/private_html/"
             :recursive t
             :publishing-function org-html-publish-to-html
             :headline-levels 2               ; Just the default for this project.
             :auto-preamble t
             :auto-sitemap nil                  ; Do NOT Generate sitemap.org automagically...
             :with-creator nil    ; Disable the inclusion of "Created by Org" in the postamble.
             :with-email nil      ; Disable the inclusion of "(your email)" in the postamble.
             :with-author nil       ; Enable the inclusion of "Author: Your Name" in the postamble.
             :auto-preamble t;         ; Enable auto preamble 
             :auto-postamble t         ; Enable auto postamble 
             :table-of-contents t        ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
             :toc-levels 2               ; Just the default for this project.
             :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
             :html-head-include-default-style nil ;Disable the default css style
             :html-head-include-scripts nil ;Disable the default javascript snippet     
             :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"http://www.i3s.unice.fr/~malapert/css/worg.min.css\"/>" ;Enable custom css style
             )

            ("_org-static"
             :base-directory "/data/www/_org/"
             :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz"
             :publishing-directory "/data/www/private_html"
             :recursive t
             :publishing-function org-publish-attachment
             :exclude "Rplots.pdf"
             )

            ("_org" 
             :components ("_org-notes" "_org-static")
             )        
            )
          )

    (setq org-html-head-include-default-style nil)
    (setq org-html-head-include-scripts nil) 

    (setf org-html-mathjax-options
      '((path "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")
        (scale "100") 
        (align "center") 
        (indent "2em")
        (mathml nil))
      )
    (setf org-html-mathjax-template
      "<script type=\"text/javascript\" src=\"%PATH\"></script>")

    (setq org-html-table-default-attributes
        '(:border "0" :cellspacing "0" :cellpadding "6" :rules "none" :frame "none"))


    ;; Exporting to PDF

    ;;I want to produce PDFs with syntax highlighting in the code. The best way to do that seems to be with the minted package, but that package shells out to pygments to do the actual work. pdflatex usually disallows shell commands; this enables that.

    (setq org-latex-pdf-process
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

    ;; Include the minted package in all of my LaTeX exports.

    (add-to-list 'org-latex-packages-alist '("" "minted"))
    (setq org-latex-listings 'minted)


    (setq org-reveal-root "file:///home/dagnachew/.emacs.d/private/local/reveal.js")
    (add-to-list 'load-path (expand-file-name "periodic-commit-minor-mode" user-emacs-directory))
    
  )

  ;; Org-Mode end


  ;; History
  ;;From http://www.wisdomandwonder.com/wp-content/uploads/2014/03/C3F.html:

  (setq savehist-file "~/.emacs.d/savehist")
  (savehist-mode 1)
  (setq history-length t)
  (setq history-delete-duplicates t)
  (setq savehist-save-minibuffer-history 1)
  (setq savehist-additional-variables
        '(kill-ring
          search-ring
          regexp-search-ring))


  ;; doom-themes
  ;;(require 'doom-themes)
  ;;(setq doom-themes-enable-bold t 
  ;;      doom-themes-enable-italic t)
  ;;(doom-themes-visual-bell-config)
  ;;(doom-themes-neotree-config)
  ;;(doom-themes-org-config)

  ;; notmuch
  (setq notmuch/address-lookup-bin "/usr/local/bin/notmuch-addrlookup")

  (setq notmuch/gnus-alias-identities
      '(
        ("home" nil
         "Dagnachew Argaw <dagnachewa@gmail.com>" ;; Sender address
         nil                                       ;; Organization header
         nil                                       ;; Extra headers
         nil                                       ;; Extra body text
         ;;"~/.signature")))
         )))


  ;; neotree

  ;;(load-file "~/.emacs.d/private/local/doom-themes-neotree.el")
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow ))


  ;; spaceline



  (with-eval-after-load 'evil
    (require 'evil-anzu))
  
  (require 'spaceline-all-the-icons)
  (require 'all-the-icons)

  (use-package spaceline-all-the-icons
  :after spaceline
  :config
  (setq spaceline-all-the-icons-icon-set-flycheck-slim (quote dots))
  (setq spaceline-all-the-icons-icon-set-git-ahead (quote commit))
  ;; (setq spaceline-all-the-icons-icon-set-window-numbering (quote square))
  (setq spaceline-all-the-icons-flycheck-alternate t)
  (setq spaceline-all-the-icons-highlight-file-name t)
  (setq spaceline-all-the-icons-separator-type (quote none))
  (spaceline-all-the-icons-theme)
  (spaceline-all-the-icons--setup-anzu)
  (spaceline-all-the-icons--setup-package-updates)
  (spaceline-all-the-icons--setup-paradox)
  (spaceline-all-the-icons--setup-neotree)
  (spaceline-toggle-all-the-icons-vc-icon-on)
  (spaceline-toggle-all-the-icons-fullscreen-on)
  (spaceline-toggle-all-the-icons-flycheck-status-on)
  (spaceline-toggle-all-the-icons-git-status-on)
  (spaceline-toggle-all-the-icons-vc-icon-on)
  (spaceline-toggle-all-the-icons-mode-icon-on)
  (spaceline-toggle-all-the-icons-package-updates-on)
  (spaceline-toggle-all-the-icons-text-scale-on)
  (spaceline-toggle-all-the-icons-region-info-on))



  (load-file "~/.emacs.d/private/local/spaceline-all-the-icons.el")
  ;;(load-file "~/.emacs.d/private/local/spaceline-all-the-icons-segments.el")
  (load-file "~/.emacs.d/private/local/spaceline-all-the-icons-doom-segments.el")
  ;;(load-file "~/.emacs.d/private/local/spaceline-all-the-icons-separators.el")

  ;; spaceline ended

  ;; pdf tools
  (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
   TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
   TeX-source-correlate-start-server t)

  ;; pdf tools ended



  ;; elfeed
  (setq browse-url 'firefox)
  (require 'elfeed-org)
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "~/.emacs.d/private/elfeed.org"))

  (defun bjm/elfeed-show-visit-gui ()
  "Wrapper for elfeed-show-visit to use gui browser instead of eww"
  (interactive)
  (let ((browse-url-generic-program "/usr/bin/xdg-open"))
    (elfeed-show-visit t)))

  (define-key elfeed-show-mode-map (kbd "B") 'bjm/elfeed-show-visit-gui)

  ;; elfeed end

  ;; ranger customization
  ;;You toggle the use of - to enter ranger with `ranger-enter-with-minus`.
  (setq ranger-enter-with-minus t)
  ;;When disabling the mode you can choose to kill the buffers that were opened while browsing the directories.
  (setq ranger-cleanup-on-disable t)
  ;;Or you can choose to kill the buffer just after you move to another entry in the dired buffer.
  (setq ranger-cleanup-eagerly t)
  ;;You can choose to show dotfiles at ranger startup, toggled by zh
  (setq ranger-show-hidden t)
  ;;Define custom function used to output header of primary ranger window. Must return a string that is placed in the header-line.
  (setq ranger-header-func 'ranger-header-line)
  ;;Define custom function used to output header of parent and preview windows. Must return a string that is placed in the header-line.
  (setq ranger-parent-header-func 'ranger-parent-header-line)
  ;;Parent options
  ;;You can set the number of folders to nest to the left, adjusted by z- and z+
  (setq ranger-parent-depth 2)
  ;;You can set the size of the parent windows as a fraction of the frame size
  (setq ranger-width-parents 0.12)
  ;;When increasing number of nested parent folders, set max width as fraction of frame size to prevent filling up entire frame with parents.
  (setq ranger-max-parent-width 0.12)
  ;;Preview options
  ;;You can choose to show previews literally, or through find-file, toggled by zi
  (setq ranger-show-literal t)
  ;;You can set the size of the preview windows as a fraction of the frame size
  (setq ranger-width-preview 0.55)
  ;;You probably don’t want to open certain files like videos when using preview. To ignore certain files when moving over them you can customize the following to your liking:
  (setq ranger-ignored-extensions '("mkv" "iso" "mp4"))
  ;;To set the max files size (in MB), set the following parameter:
  (setq ranger-max-preview-size 10)


  ;; haskell
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
  (add-to-list 'exec-path "~/.local/bin/")

  ;; sql
  (setq sql-connection-alist
      '((server1 (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "localhost")
                  (sql-user "dagnachew")
                  (sql-database "postgres"))))

  ;;(defun my-sql-server1 ()
  ;;  (interactive)
  ;;  (my-sql-connect 'postgres 'server1))

  (defun my-sql-connect (product connection)
    (require my-password "~/.emacs.d/private/my-password.el.gpg")

    (let ((connection-info (assoc connection sql-connection-alist))
        (sql-password (car (last (assoc connection my-sql-password)))))
    (delete sql-password connection-info)
    (nconc connection-info `((sql-password ,sql-password)))
    (setq sql-connection-alist (assq-delete-all connection sql-connection-alist))
    (add-to-list 'sql-connection-alist connection-info))

    (setq sql-product product)
    (sql-connect connection))

  (add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

  ;; scss
  (setq exec-path (cons (expand-file-name "~/.gem/ruby/2.5/bin") exec-path))
  (add-to-list 'load-path (expand-file-name "~/.emacs.d/private/local/scss-mode.el"))
  (autoload 'scss-mode "scss-mode")
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

  ;; Maxima
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/maxima/")
  (autoload 'maxima-mode "maxima" "Maxima mode" t)
  (autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
  (autoload 'maxima "maxima" "Maxima interaction" t)
  (autoload 'imath-mode "imath" "Imath mode for math formula input" t)
  (setq imaxima-use-maxima-mode-flag t)
  (add-to-list 'auto-mode-alist '("\\.ma[cx]" . maxima-mode))



  ) ;; end of dotspacemacs-user-config ()

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zeal-at-point white-sand-theme restclient-helm rebecca-theme ranger org-mime ob-restclient ob-http nlinum-relative nlinum idris-mode prop-menu helm-dash fasd exotica-theme ein request-deferred websocket deferred company-restclient restclient know-your-http-well mu4e-maildirs-extension mu4e-alert zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme espresso-theme dracula-theme django-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme vimrc-mode graphviz-dot-mode dactyl-mode org-beautify-theme org-drill org-dropbox yapfify yaml-mode xterm-color web-beautify vmd-mode unfill toml-mode sql-indent spaceline-all-the-icons smeargle shell-pop racer pyvenv pytest pyenv-mode py-isort prodigy pip-requirements pandoc-mode ox-reveal ox-pandoc ht ox-gfm outshine outorg orgit org-ref pdf-tools key-chord ivy tablist org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download ob-elixir mwim multi-term mmm-mode markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode live-py-mode ledger-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc intero hy-mode htmlize hlint-refactor hindent helm-pydoc helm-hoogle helm-gitignore helm-company helm-c-yasnippet helm-bibtex parsebib haskell-snippets go-guru go-eldoc gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md geiser fuzzy flyspell-correct-helm flyspell-correct flycheck-rust seq flycheck-pos-tip pos-tip flycheck-mix flycheck-ledger flycheck-haskell flycheck-elm flycheck-credo flycheck evil-magit magit magit-popup git-commit ghub let-alist with-editor evil-commentary ess-smart-equals ess-R-data-view ctable ess julia-mode eshell-z eshell-prompt-extras esh-help erlang erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks ensime sbt-mode scala-mode elm-mode elfeed-web simple-httpd elfeed-org elfeed-goodies ace-jump-mode noflet elfeed disaster diff-hl deft cython-mode csv-mode company-tern dash-functional tern company-statistics company-go go-mode company-ghci company-ghc ghc haskell-mode company-emacs-eclim eclim company-cabal company-c-headers company-auctex company-anaconda coffee-mode cmm-mode cmake-mode clang-format cargo rust-mode biblio biblio-core base16-theme autothemer auto-yasnippet yasnippet auto-dictionary auctex-latexmk auctex anaconda-mode pythonic all-the-icons memoize font-lock+ alchemist company elixir-mode adoc-mode markup-faces ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (tiny-menu zeal-at-point white-sand-theme restclient-helm rebecca-theme ranger org-mime ob-restclient ob-http nlinum-relative nlinum idris-mode prop-menu helm-dash fasd exotica-theme ein request-deferred websocket deferred company-restclient restclient know-your-http-well mu4e-maildirs-extension mu4e-alert zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme espresso-theme dracula-theme django-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme vimrc-mode graphviz-dot-mode dactyl-mode org-beautify-theme org-drill org-dropbox yapfify yaml-mode xterm-color web-beautify vmd-mode unfill toml-mode sql-indent spaceline-all-the-icons smeargle shell-pop racer pyvenv pytest pyenv-mode py-isort prodigy pip-requirements pandoc-mode ox-reveal ox-pandoc ht ox-gfm outshine outorg orgit org-ref pdf-tools key-chord ivy tablist org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download ob-elixir mwim multi-term mmm-mode markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode live-py-mode ledger-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc intero hy-mode htmlize hlint-refactor hindent helm-pydoc helm-hoogle helm-gitignore helm-company helm-c-yasnippet helm-bibtex parsebib haskell-snippets go-guru go-eldoc gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md geiser fuzzy flyspell-correct-helm flyspell-correct flycheck-rust seq flycheck-pos-tip pos-tip flycheck-mix flycheck-ledger flycheck-haskell flycheck-elm flycheck-credo flycheck evil-magit magit magit-popup git-commit ghub let-alist with-editor evil-commentary ess-smart-equals ess-R-data-view ctable ess julia-mode eshell-z eshell-prompt-extras esh-help erlang erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks ensime sbt-mode scala-mode elm-mode elfeed-web simple-httpd elfeed-org elfeed-goodies ace-jump-mode noflet elfeed disaster diff-hl deft cython-mode csv-mode company-tern dash-functional tern company-statistics company-go go-mode company-ghci company-ghc ghc haskell-mode company-emacs-eclim eclim company-cabal company-c-headers company-auctex company-anaconda coffee-mode cmm-mode cmake-mode clang-format cargo rust-mode biblio biblio-core base16-theme autothemer auto-yasnippet yasnippet auto-dictionary auctex-latexmk auctex anaconda-mode pythonic all-the-icons memoize font-lock+ alchemist company elixir-mode adoc-mode markup-faces ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)




