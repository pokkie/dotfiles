;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.


(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
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
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     asciidoc
     ;; auto-completion
     (auto-completion : variables
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      (haskell :variables haskell-completion-backend 'intero))
     syntax-checking
     better-defaults
     bibtex
     bm
     cfengine
     csv
     dash
     display
     coq
     ;; managing single file notes
     deft

     (elfeed :variables
        elfeed-feeds '(("https://blog.acolyer.org/feed/" computer-science) 
                       	("https://notamonadtutorial.com/" computer-science)
 		       	            ("https://medium.com/feed/@jlouis666" computer-science)
		       	            ("http://www.catonmat.net/feed/" computer-science)             
			                  ("https://blog.acolyer.org/feed/" computer-science)
			                  ("http://feeds.feedburner.com/InformationIsBeautiful" information big-data)
			                  ("http://feeds.feedburner.com/kdnuggets-data-mining-analytics" Information big-data)
			                  ("http://feeds.feedburner.com/MonashInformationServices?format=xml" Information big-data)
			                  ("https://postgresweekly.com/rss/1pgci8gm" database postgresql)
			                  ("https://feeds.feedburner.com/RBloggers" statistics R)
			                  ("http://lambda-the-ultimate.org/node/feed" programming)
			                  ("http://lambda-the-ultimate.org/taxonomy/feed/or/1,2" programming forum)
			                  ("http://lambda-the-ultimate.org/crss" programming forum)
			                  ("https://byorgey.wordpress.com/feed/" programming)
			                  ("https://scalatimes.com/" programming scala)
			                  ("https://planet.haskell.org/rss20.xml" programming haskell)
			                  ("http://feeds.feedburner.com/HighScalability" highscalability)
			                  ("http://highscalability.com/blog/rss-comments.xml" highscalability forum)	                       
			                  ))
     ;;(erc :variables
     ;;              erc-server-list
     ;;              '(("irc.freenode.net"
     ;;                 :port "6697"
     ;;                 :ssl t
     ;;                 :nick "perrier-jouet")
     ;;                ("irc.oftc.net"
     ;;                 :port "6697"
     ;;                 :ssl t
     ;;                 :nick "perrier-jouet")
     ;;              erc-prompt-for-nickserv-password nil
     ;;              erc-auto-join-channels-alist '(("freenode.net" "#archlinux" "#archlinux-fr" "#freebsd" "##linux" "##c" "##c++" "#postgresql" "#R" "#scala" "#haskell" "#erlang" "##javascript" "#python" "#go-nuts" "##networking" "#zsh" "#git" "#Node.js" "#emacs"))
     ;;                                             ("oftc.net" "#debian-quebec" "#kernelnewbies" "#suckless")))

     ess
     evernote
     evil-commentary
     (evil-snipe :variables evil-snipe-enable-alternate-f-and-t-behaviors t)
     finance
     geolocation
     git
     github
     graphviz   
     helm
     html
     ;; programming languages support 
     asm
     (c-c++ :variables c-c++-enable-clang-support t)
     common-lisp
     crystal
     elixir
     elm
     emacs-lisp
     erlang
     fasd
     go
     (haskell :variables
              haskell-enable-ghc-mod-support t
              haskell-enable-ghci-ng-support t)
     idris
     ipython-notebook
     javascript
     lsp
     ocaml
     python 
     racket
     rust
     (scala :variables
            scala-indent:use-javadoc-style t
            scala-enable-eldoc t
            scala-auto-insert-asterisk-in-comments t
            scala-use-unicode-arrows t)
     scheme
     typescript
     ;; programming languages end

     (latex :variables
            latex-enable-folding t
            latex-enable-auto-fill t) 
     (markdown :variables markdown-live-preview-engine 'vmd)
     macros
     (mu4e :variables
           mu4e-installation-path "/usr/share/emacs/site-lisp"
           mu4e-account-list t)

     neotree
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t)
     pandoc
     pass
     pdf
     plantuml
     ;; Manage external services from within Emacs
     prettier
     prodigy
     protobuf
     react
     restclient
     restructuredtext
     salt
     ;;semantic 
     (shell :variables
             shell-default-shell 'ansi-term
             shell-default-height 30
             shell-default-term-shell "/usr/bin/zsh"
             shell-default-position 'bottom)	
     smex
     spacemacs-layouts
     spacemacs-purpose
     spell-checking
     sphinx
     sql
     (ranger :variables
             ranger-show-preview t)
     themes-megapack
     theming
     twitter
     tmux
     (treemacs :variables
               treemacs-use-follow-mode t
               treemacs-use-filewatch-mode t)
     (version-control :variables
                      version-control-diff-tool 'git-gutter
                      version-control-diff-side 'left)
     vimscript
     yaml
     ycmd
     web-beautify
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; ar To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(json-mode request bbdb)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(exec-path-from-shell)

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))



(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
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
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         

                         darktooth
                         doom-peacock
                         doom-spacegrey
                         sanityinc-tomorrow-night
                         gruvbox
                         spacemacs-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `vim-powerline' and `vanilla'. The first three
   ;; are spaceline themes. `vanilla' is default Emacs mode-line. `custom' is a
   ;; user defined themes, refer to the DOCUMENTATION.org for more info on how
   ;; to create your own spaceline theme. Value can be a symbol or list with\
   ;; additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator cup :separator-scale 1.5)
   

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code"
                               :size 17
                               :weight normal
                               :width normal
                               :antialias 1
                               :powerline-scale 1.5)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
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
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil

   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location `nil

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil

   ;; if non-nil, the helm header is hidden when there is only one source.
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

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
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

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
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
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
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

   ;; If non-nil, start an Emacs server if one is not already running.
   dotspacemacs-enable-server t

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  (server-start)

  ;; Package archives setting

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

  (use-package cl
    :after elpy)
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


  ;; theme
  ;;(custom-theme-set-faces 'doom-spacegrey
  ;;                       '(linum ((t :inherit default
  ;;                                    :foreground "#4f5b66"
  ;;                                    :background "#2b303b"))))

  
  ;; neotree

  ;;(load-file "~/.emacs.d/private/doom-themes-neotree.el")
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
  (setq spaceline-all-the-icons-separator-type (quote cup))
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

  (setq powerline-image-apple-rgb t)

  ;; spaceline setting end

  ;; writegood-mode
  (global-set-key "\C-cg" 'writegood-mode)

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

  ;; Fira Code setting end

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

  ;; Disk space is cheap. Save lots.

  (setq delete-old-versions -1)
  (setq version-control t)
  (setq vc-make-backup-files t)
  (setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

  ;; erc configuration
  (setq erc-prompt-for-nickserv-password nil)

  ;; Org-mode

  (with-eval-after-load 'org
    (provide 'emacs-orgmode-config)

    (use-package ox-reveal
      :disabled
      :ensure t
      :after org
      :config
      (setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/3.0.0/")
      (setq org-reveal-mathjax t))

    (use-package ox
      :after org)
    (use-package ox-latex
      :after org)
    (use-package ox-bibtex
      :after org)
    (use-package ox-beamer
      :after org
      :config
      (progn
        ;; allow for export=>beamer by placing
        ;; #+LaTeX_CLASS: beamer in org files
        (add-to-list 'org-latex-classes
                 '("beamer"
                   "\\documentclass[presentation]{beamer}"
                   ("\\section{%s}"        . "\\section*{%s}")
                   ("\\subsection{%s}"     . "\\subsection*{%s}")
                   ("\\subsubsection{%s}"  . "\\subsubsection*{%s}")))))
    (use-package ox-md
      :after org)
    (use-package ox-publish
      :after org)
    (use-package org-agenda 
      :after org)
    (use-package org-ref
      :after org)

    (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

    (define-key global-map "\C-cl" 'org-store-link)
    (define-key global-map "\C-ca" 'org-agenda)

    (setq org-log-done t)
    (setq org-fast-tag-selection-single-key t)
    (setq org-use-fast-todo-selection t)
    (setq org-startup-truncated nil)

    (setq org-directory (expand-file-name "~/Dropbox/ORG/org"))
    (setq org-default-notes-file (concat org-directory "/mygtd.org"))
    (setq org-agenda-files '("~/Dropbox/ORG/org" "/data/www" ))
  
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
     '( (ditaa . t) (sql . t) (C . t) (C ++ . t) (shell . t) (emacs-lisp t) (lisp . t)
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
             :base-directory "~/Dropbox/www/static_html/"
             :base-extension "html\\|xml\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz\\|csv\\|m"
             :include (".htaccess")
             :publishing-directory "~/Dropbox/www/public_html/"
             :recursive t
             :publishing-function org-publish-attachment
             )

            ("pdf"
             :base-directory  "~/Dropbox/ORG/"
             :base-extension "org"
             :publishing-directory "~/Dropbox/ORG/pdf"
             :publishing-function org-latex-publish-to-pdf
             )

            ("org-notes"
             :base-directory "~/Dropbox/www/org"
             :base-extension "org"
             :publishing-directory "~/Dropbox/www/public_html/org"
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
             :base-directory "~/Dropbox/www/org"
             :base-extension "html\\|xml\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz\\|csv\\|m"
             :publishing-directory "~/Dropbox/www/public_html/org/"
             :recursive t
             :publishing-function org-publish-attachment
             :exclude "Rplots.pdf"
             )

            ("org" 
             :components ("org-notes" "org-static" "html-static")
             )

            ("_org-notes"
             :base-directory "~/Dropbox/www/_org/"
             :base-extension "org"
             :publishing-directory "~/Dropbox/www/private_html/"
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
             :base-directory "~/Dropbox/www/_org/"
             :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|zip\\|gz"
             :publishing-directory "~/Dropbox/www/private_html"
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


    ;; org-ref
    (setq reftex-default-bibliography '("~/Dropbox/bibliography/references.bib"))

    ;; see org-ref for use of these variables
    (setq org-ref-bibliography-notes "~/Dropbox/bibliography/notes.org"
      org-ref-default-bibliography '("~/Dropbox/bibliography/references.bib")
      org-ref-pdf-directory "~/Dropbox/bibliography/bibtex-pdfs/")

    (setq bibtex-completion-bibliography "~/Dropbox/bibliography/references.bib"
      bibtex-completion-library-path "~/Dropbox/bibliography/bibtex-pdfs"
      bibtex-completion-notes-path "~/Dropbox/bibliography/helm-bibtex-notes")  

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


  ;; clang-format
  (defun clang-format-buffer-smart ()
  "Reformat buffer if .clang-format exists in the projectile root."
  (when (f-exists? (expand-file-name ".clang-format" (projectile-project-root)))
    (clang-format-buffer)))

  (defun clang-format-buffer-smart-on-save ()
  "Add auto-save hook for clang-format-buffer-smart."
  (add-hook 'before-save-hook 'clang-format-buffer-smart nil t))

  (spacemacs/add-to-hooks 'clang-format-buffer-smart-on-save
                        '(c-mode-hook c++-mode-hook))


  ;; cfengine
  (defun cfengine-permissions-policy-owner-only ()
  "If file starts with a shebang, make `buffer-file-name' executable"
  (save-excursion
    (set-file-modes buffer-file-name #o600)
    (message (concat "Made " buffer-file-name " accessibly only by the owner (600)."))))

  (add-hook 'after-save-hook 'cfengine-permissions-policy-owner-only nil 'make-it-local)

  ;; dired
  (add-to-load-path (expand-file-name "~/.emacs.d/private/all-the-icons-dired"))
  (load "all-the-icons-dired.el")
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

  ;; scala
  (setq-default flycheck-scalastylerc "~/.emacs.d/private/")


  ;; ranger customization
  (use-package ranger :ensure t
    :commands (ranger)
    :bind (("C-x d" . deer))
    :config 
  
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
  )

  ;; elfeed
  ;;(require 'elfeed-org)
  ;;(setq browse-url 'firefox)

  ;; mu4e

  ;;(load-file "~/.emacs.d/private/mu4e-headers.el")

  (setq mu4e-use-fancy-chars t)
  (setq mu4e-account-alist
        '(("gmail"
         ;; Under each account, set the account-specific variables you want.
         (mu4e-sent-messages-behavior delete)
         (user-mail-address "dagnachewa@gmail.com")
         (user-full-name "Dagnachew Argaw"))
          ))
  
  (setq mu4e-maildir "/data/.mail/gmail")
  (setq mu4e-trash-folder "/data/.mail/gmail/Trash")
  (setq mu4e-sent-folder "/data/.mail/gmail/Sent-mail")
  (setq mu4e-drafts-folder "/data/.mail/gmail/drafts")
  (setq mu4e-get-mail-command "mbsync -V gmail")

  ;;mu4e-headers
  (setq mu4e-headers-has-child-prefix '("+" . "")
        mu4e-headers-empty-parent-prefix '("-" . "")
        mu4e-headers-first-child-prefix '("-" . "")
        mu4e-headers-duplicate-prefix '("-" . "")
        mu4e-headers-default-prefix '("-" . "")
        mu4e-headers-draft-mark '("-" . "")
        mu4e-headers-flagged-mark '("-" . "")
        mu4e-headers-new-mark '("-" . "")
        mu4e-headers-passed-mark '("-" . "")
        mu4e-headers-replied-mark '("-" . "")
        mu4e-headers-seen-mark '("-" . "")
        mu4e-headers-trashed-mark '("-" . "")
        mu4e-headers-attach-mark '("-" . "")
        mu4e-headers-encrypted-mark '("-" . "")
        mu4e-headers-signed-mark '("-" . "")
        mu4e-headers-unread-mark '("-" . ""))
        mu4e-headers-first-child-prefix '("\\" . "")
        mu4e-headers-duplicate-prefix '("=" . "")
        mu4e-headers-default-prefix '("|" . "")
        mu4e-headers-draft-mark '("D" . "")
        mu4e-headers-flagged-mark '("F" . "")
        mu4e-headers-new-mark '("N" . "")
        mu4e-headers-passed-mark '("P" . "")
        mu4e-headers-replied-mark '("R" . "")
        mu4e-headers-seen-mark '("S" . "")
        mu4e-headers-trashed-mark '("T" . "")
        mu4e-headers-attach-mark '("a" . "")
        mu4e-headers-encrypted-mark '("x" . "")
        mu4e-headers-signed-mark '("s" . "")
        mu4e-headers-unread-mark '("u" . "")


  ;; setup some handy shortcuts
  (setq mu4e-maildir-shortcuts
      '(("/INBOX"             . ?i)
        ("/gmail/Sent-mail" . ?s)
        ("/gmail/Trash"     . ?t)))

  (setq mu4e-headers-results-limit 5000)
  (setq mu4e-enable-mode-line t)

  (require 'smtpmail)

  (setq
   send-mail-function 'smtpmail-send-it
   message-send-mail-function 'smtpmail-send-it
   user-mail-address "dagnachewa@gmail.com"
   smtpmail-starttls-credentials '(("smtp.gmail.com" "587" nil nil))
   smtpmail-auth-credentials (expand-file-name "~/mailpass.gpg")
   smtpmail-default-smtp-server "smtp.gmail.com"
   smtpmail-smtp-server "smtp.gmail.com"
   smtpmail-smtp-service 587
   smtpmail-debug-info t
   starttls-extra-arguments nil
   starttls-gnutls-program "/usr/bin/gnutls-cli"
   starttls-extra-arguments nil
   starttls-use-gnutls t
   ) 

  ;; notmuch

 ;; setup the mail address and use name
 ;; (setq mail-user-agent 'message-user-agent)
 ;; (setq user-mail-address "dagnachewa@gmail.com"
 ;;     user-full-name "Dagnachew Argaw")
  ;; smtp config
 ;; (setq smtpmail-smtp-server "smtp.gmail.com"
 ;;     message-send-mail-function 'message-smtpmail-send-it)

  ;; report problems with the smtp server
 ;; (setq smtpmail-debug-info t)
  ;; add Cc and Bcc headers to the message buffer
 ;; (setq message-default-mail-headers "Cc: \nBcc: \n")
  ;; postponed message is put in the following draft directory
 ;; (setq message-auto-save-directory "~/.mail/gmail/drafts")
 ;; (setq message-kill-buffer-on-exit t)
  ;; change the directory to store the sent mail
 ;; (setq message-directory "~/.mail/gmail/Sent-mail")

  ;; refresh local mail box
  ;;(defun notmuch-exec-offlineimap ()
  ;; "execute offlineimap"
    ;;(interactive)
    ;;(set-process-sentinel
     ;;(start-process-shell-command "offlineimap"
     ;;                             "*offlineimap*"
     ;;                             "offlineimap -o")
     ;;'(lambda (process event)
     ;;   (notmuch-refresh-all-buffers)
     ;;   (let ((w (get-buffer-window "*offlineimap*")))
     ;;     (when w
     ;;       (with-selected-window w (recenter (window-end)))))))
    ;;(popwin:display-buffer "*offlineimap*"))

  ;;(add-to-list 'popwin:special-display-config
  ;;           '("*offlineimap*" :dedicated t :position bottom :stick t
  ;;             :height 0.4 :noselect t))


  ;;(setq notmuch/notmuch-tag-face-color "#3f7f5f")
  ;;(setq notmuch/notmuch-search-unread-face-color "#4f97d7")

  ;;(setq notmuch-search-oldest-first nil)

  ;; paradox github token
  (setq paradox-github-token "~/.emacs.d/private/token.gpg")


  ;; irony
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

  ;; haskell
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
  (add-to-list 'exec-path "~/.local/bin/")

  ;; ocaml

  ;; sql
  (setq sql-connection-alist
      '((server1 (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "localhost")
                  (sql-user "dagnachew")
                  (sql-database "postgres"))))

  ;; rust
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)

  (add-hook 'racer-mode-hook #'company-mode)

  (require 'rust-mode)
  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t)

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

  ;; end sql

  ;; ycmd
  (setq ycmd-server-command '("python" "/usr/share/ycmd/ycmd"))
  (setq ycmd-force-semantic-completion t)

  ;; scss
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

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
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
    (zenburn-theme zen-and-art-theme zeal-at-point yasnippet-snippets yapfify xterm-color x86-lookup ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vmd-mode vimrc-mode vi-tilde-fringe uuidgen utop use-package unfill underwater-theme ujelly-theme twittering-mode twilight-theme twilight-bright-theme twilight-anti-bright-theme tuareg treemacs-projectile treemacs-evil toxi-theme toml-mode toc-org tide tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit symon sunny-day-theme sublime-themes subatomic256-theme subatomic-theme string-inflection sql-indent spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smex smeargle slime-company slim-mode shell-pop seti-theme scss-mode sass-mode salt-mode rjsx-mode reverse-theme restclient-helm restart-emacs rebecca-theme ranger rainbow-delimiters railscasts-theme racket-mode racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode protobuf-mode proof-general professional-theme prodigy pretty-mode prettify-utils prettier-js play-crystal plantuml-mode planet-theme pippel pipenv pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el password-generator paradox pandoc-mode ox-reveal ox-pandoc ox-gfm overseer orgit organic-green-theme org-ref org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file omtose-phellack-theme oldlace-theme ocp-indent occidental-theme obsidian-theme ob-restclient ob-ipython ob-http ob-elixir ob-crystal ob-cfengine3 noctilux-theme nasm-mode naquadah-theme nameless mwim mvn mustang-theme multi-term mu4e-maildirs-extension mu4e-alert move-text monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme meghanada maven-test-mode material-theme markdown-toc majapahit-theme magithub magit-svn magit-gitflow magit-gh-pulls madhat2r-theme lush-theme lsp-ui lsp-python lsp-javascript-typescript lsp-java lsp-go lorem-ipsum livid-mode live-py-mode link-hint light-soap-theme kaolin-themes json-navigator json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme intero inkpot-theme inf-crystal indent-guide importmagic impatient-mode idris-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-xref helm-themes helm-swoop helm-rtags helm-pydoc helm-purpose helm-projectile helm-pass helm-mu helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haskell-snippets gruvbox-theme gruber-darker-theme groovy-mode groovy-imports graphviz-dot-mode grandshell-theme gradle-mode gotham-theme google-translate google-c-style golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geiser geeknote gandalf-theme fuzzy font-lock+ flyspell-correct-helm flycheck-ycmd flycheck-rust flycheck-rtags flycheck-pos-tip flycheck-ocaml flycheck-mix flycheck-ledger flycheck-haskell flycheck-elm flycheck-crystal flycheck-credo flx-ido flatui-theme flatland-theme fill-column-indicator fasd farmhouse-theme fancy-battery eziam-theme eyebrowse expand-region exotica-theme evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-org evil-numbers evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-ledger evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-commentary evil-cleverparens evil-args evil-anzu eval-sexp-fu ess-R-data-view espresso-theme eshell-z eshell-prompt-extras esh-help erlang ensime emmet-mode elm-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies ein editorconfig dumb-jump dracula-theme dotenv-mode doom-themes django-theme disaster diminish diff-hl deft define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dante dakrone-theme dactyl-mode cython-mode cyberpunk-theme csv-mode counsel-projectile company-ycmd company-web company-tern company-statistics company-rtags company-restclient company-lsp company-go company-ghci company-ghc company-emacs-eclim company-coq company-cabal company-c-headers company-auctex company-anaconda common-lisp-snippets column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized cmm-mode clues-theme clean-aindent-mode clang-format cherry-blossom-theme centered-cursor-mode cargo busybee-theme bubbleberry-theme browse-at-remote bm birds-of-paradise-plus-theme bbdb badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-complete-rst auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme ameba all-the-icons-ivy all-the-icons-dired alect-themes alchemist aggressive-indent afternoon-theme adoc-mode ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)



