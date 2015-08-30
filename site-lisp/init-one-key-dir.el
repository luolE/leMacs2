;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-dir-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-dir-alist
      '(
        (("w" . "当前工作任务目录") .
         (lambda ()
           (interactive) 
		   (dired "d:/temp/")))
		
		(("e" . "Emacs工作目录") .
         (lambda ()
           (interactive) 
           (dired "~/")) )		
		))

(defun one-key-menu-luolE-dir ()
  "弹出常用目录."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-dir-alist t))

(provide 'init-one-key-dir)
