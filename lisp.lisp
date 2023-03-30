(in-package :ai-notes)

(defun html (doc config)
  (let ((styles (config :styles config))
        (scripts (config :scripts config)))
    `(:progn
       (:noescape "<!doctype html>")
       ((:html :lang "en")
        (:head
         (:meta :charset "utf-8")
         (:meta :name "viewport" :content "width=device-width, initial-scale=1")
         ,@(loop for s in styles collecting s)
         ,@(loop for s in scripts collecting s))
        (:body
         ,@(unless (config :no-header config)
             '((:header (:a :href "/ai/" "Other notes"))))
         ,@(rest doc))))))


(defun me (doc config)
  (declare (ignore config))
  `((:div :class "me")
    (:img :src "/ai/img/me.webp")
    (:div ,@(rest doc))))

(defun gpt-4 (doc config)
  (declare (ignore config))
  `((:div :class "gpt")
    (:img :src "/ai/img/gpt.svg" :class "gpt-4-avatar")
    (:div
     ,@(rest doc)
     (:p (:img :src "/ai/img/thumbs-up.svg" :class "thumb")
         " "
         (:img :src "/ai/img/thumbs-down.svg" :class "thumb")))))

(defun gpt-3.5 (doc config)
  (declare (ignore config))
  `((:div :class "gpt")
    (:img :src "/ai/img/gpt.svg" :class "gpt-3-5-avatar")
    (:div
     ,@(rest doc)
     (:p (:img :src "/ai/img/thumbs-up.svg" :class "thumb")
         " "
         (:img :src "/ai/img/thumbs-down.svg" :class "thumb")))))
