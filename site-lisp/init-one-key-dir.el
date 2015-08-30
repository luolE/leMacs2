;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-dir-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-dir-alist
      '(
        (("w" . "��ǰ��������Ŀ¼") .
         (lambda ()
           (interactive) 
		   (dired "d:/temp/")))
		
		(("e" . "Emacs����Ŀ¼") .
         (lambda ()
           (interactive) 
           (dired "~/")) )		
		))

(defun one-key-menu-luolE-dir ()
  "��������Ŀ¼."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-dir-alist t))

(provide 'init-one-key-dir)
