(defun customtheme () "Grayscale theme"
       ;; Allow loading the theme with a command
       (interactive)

       ;; Define a list of grayscale colour values.
       ;; The RGB values are generated from HSV with 0 hue and 0 saturation.
       (let (
             (gray-100   "#ffffff")
             (gray-90    "#e6e6e6")
             (gray-80    "#cccccc")
             (gray-70    "#b3b3b3")
             (gray-60    "#999999")
             (gray-55    "#8c8c8c")
             (gray-50    "#808080")
             (gray-45    "#737373")
             (gray-40    "#666666")
             (gray-30    "#4d4d4d")
             (gray-20    "#333333")
             (gray-10    "#1a1a1a")
             (gray-5     "#0d0d0d")
             (gray-0     "#000000")
             )

         (custom-set-faces

          ;; Default colour
          `(default ((t (:foreground ,gray-40 :background ,gray-5, :weight normal))))

          ;; Basic colours
          `(cursor  ((t (:invert-video t))))
          `(border  ((t (:background ,gray-80))))
          `(minibuffer-prompt  ((t (:foreground ,gray-80))))
          `(region ((t (:inverse-video t))))
          `(link ((t (:foreground ,gray-50 :underline t))))

          ;; Mode line
          `(mode-line ((t (:foreground ,gray-5 :background ,gray-70))))
          `(mode-line-buffer-id ((t (:foreground ,gray-5 :background nil :bold t))))

          ;; Line numbers
          `(line-number ((t (:foreground ,gray-70))))
          `(line-number-current-line ((t (:inherit line-number :inverse-video t))))

          ;; Misc
          `(trailing-whitespace ((t (:foreground ,gray-5 :background ,gray-40))))

          ;; Comments
          `(font-lock-doc-face               ((t (:foreground ,gray-90 :italic t))))
          `(font-lock-comment-face           ((t (:foreground ,gray-90 :italic t))))
          `(font-lock-comment-delimiter-face ((t (:foreground ,gray-90 :bold t))))

          ;; Font lock
          `(font-lock-preprocessor-face ((t (:foreground ,gray-50 :bold nil))))
          `(font-lock-builtin-face ((t (:foreground ,gray-50))))
          `(font-lock-constant-face ((t (:foreground ,gray-50))))
          `(font-lock-function-name-face ((t (:foreground ,gray-50))))
          `(font-lock-keyword-face ((t (:foreground ,gray-55 :bold t))))
          `(font-lock-variable-name-face ((t (:foreground ,gray-60))))
          `(font-lock-string-face ((t (:foreground ,gray-70 :italic t))))
          `(font-lock-type-face ((t (:foreground ,gray-70))))

          ;; Matching parenthesis
          `(show-paren-match ((t (:foreground ,gray-100 :bold t))))


          )))

(customtheme)
