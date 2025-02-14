
;;(global-set-key (kbd "C-h") 'backward-char)
;;(global-set-key (kbd "C-j") 'next-line)
;;(global-set-key (kbd "C-k") 'previous-line)
;;(global-set-key (kbd "C-l") 'forward-char)

;(global-set-key "C-n" 'newline-adn-indent)
;(global-set-key "\C-o 'kill-line")

(setq make-backup-files nil) ;; バックアップファイルを作成しない
(setq auto-save-default nil) ;; 自動保存ファイルを作成しない

(setq inhibit-startup-message t) ;; 起動時のメッセージを非表示にする
(setq inhibit-startup-screen t) ;; スプラッシュスクリーンを無効化
(setq initial-scratch-message nil) ;; *scratch* バッファのメッセージを消す

(defun open-init-file ()
  "Open th init.el filel."
  (interactive)
  (find-file "/Users/ryohei/.emacs.d/init.el"))
(global-set-key (kbd "C-c i") 'open-init-file)

(defun reload-init-file ()
  "Manually reload init.el"
  (interactive)
  (load-file user-init-file)
  (message "init.el manually reloaded!"))
(global-set-key (kbd "C-c r") 'reload-init-file)

;; めも
;; C-x C-e で評価するとすぐに反映される。
;; 
;;
 

(global-display-line-numbers-mode t)
(global-auto-revert-mode t)

(set-face-attribute 'default nil
		    :family "chalkboard"
		    :height 200)

(setq ring-bell-function 'ignore) ;;ビープ音を無効化

