;; -*- mode: lisp; -*-

(:root ".")
(:directory "ai")
(:filename-style :directory)
(:tweets "tweets/")
(:title :auto)
(:section-marker (:hr :class "fleuron"))
(:blank (:hr :class "blank"))
(:htmlizer ai-notes::html)

("index"
 (:filename-style :file)
 (:no-header t))

(:styles
 (:link :href "/ai/style.css" :media "all" :rel "stylesheet" :type "text/css"))

(:preprocessors
 monkeylib-yamp::links
 monkeylib-yamp::endnotes
 monkeylib-yamp::images)

(:sections
 (:include       monkeylib-yamp::sourcecode)
 (:dateline      monkeylib-yamp::format-dateline)
 (:tweet         monkeylib-yamp::tweet-by-id)
 (:formattedcode monkeylib-yamp::formatted-code)
 (:me  ai-notes::me)
 (:gpt ai-notes::gpt-4)
 (:oldgpt ai-notes::gpt-3.5))
