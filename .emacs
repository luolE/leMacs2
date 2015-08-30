
;;--------------------------------------------------------------------
;; Windows系统配置注册表文件(复制以下内容为.reg文件, 并运行) 
;;--------------------------------------------------------------------

;; Windows Registry Editor Version 5.00

;; [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; "HOME"="d:\\software\\emacs"
;; "Emacs.Geometry"="120x40+100+70"
;; "Emacs.MenuBar"="0"
;; "Emacs.ToolBar"="0"
;; "Emacs.ScrollBars"="0"

;; [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\GNU\Emacs]
;; "HOME"="d:\\software\\emacs"
;; "Emacs.HOME"="d:\\software\\emacs"
;; "Emacs.Geometry"="120x40+100+70"
;; "Emacs.MenuBar"="0"
;; "Emacs.ToolBar"="0"
;; "Emacs.ScrollBars"="0"

;;--------------------------------------------------------------------
;; 姓名地址信息 
;;--------------------------------------------------------------------
(setq user-full-name "Ks.luolE")
(setq user-mail-address "luole@kingsoft.com")


;;----------------------------------------------------------------------------
;; 功能开关 (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *byte-code-cache-enabled* nil)
(setq *vi-control-habit-enabled* nil)


;;--------------------------------------------------------------------
;; 配置load file 
;;--------------------------------------------------------------------
(defun my-add-subdirs-to-load-path (dir)
  (let ((default-directory (concat dir "/")))
    (setq load-path (cons dir load-path))
    (normal-top-level-add-subdirs-to-load-path)))
(my-add-subdirs-to-load-path "~/site-lisp")


;;--------------------------------------------------------------------
;; 前置配置项
;;--------------------------------------------------------------------

;;一些常用的程序目录
(if (equal window-system 'w32)
    (progn 
      ;; 设置PATH
      (setenv "PATH" (concat "D:\\software\\emacs\\bin;" (getenv "PATH")))
      (add-to-list 'exec-path "C:\\Python27") 
	  )
  (progn 
    ;; Linux/Mac 设置常用程序目录
    ;;(setq exec-path (append exec-path '("~/widgets")) )
    )
  )

;;----------------------------------------------------------------------------
;; 加载插件配置
;;----------------------------------------------------------------------------
(require 'cl)
(require 'init-elpa)
(require 'init-evil)
;; (when *byte-code-cache-enabled* (require 'init-byte-code-cache))
;; (require 'init-luolE-easy-keys)
(require 'init-normal-config)
(require 'init-editing-utils)
(require 'init-color-theme)
;; (require 'init-lua-mode)
;; (require 'init-python-mode)
;; (require 'init-c-cpp-mode)
;; (require 'init-cmake-mode)
;; (require 'init-php-mode)
;; (require 'init-sr-speedbar)
;; (require 'init-moccur)
;; (require 'init-ido)
;; (require 'init-fullscreen)
(require 'init-linum)
;; (require 'init-recent-jump)
(require 'init-one-key)
;; (require 'init-highlight-symbol)
;; (require 'init-indent-after-paste)
;; (require 'init-other-widgets)
;; (require 'init-anything)
(require 'init-ace-jump)
(require 'init-switch-window)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-ibuffer)
(require 'init-sandbox)


;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
;; (require 'server)
;; (server-force-delete)
;; (server-start)
