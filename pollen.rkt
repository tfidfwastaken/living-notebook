#lang racket/base

(require pollen/decode pollen/tag
         txexpr hyphenate
         "section_info.rkt")

(provide root sn url
         base-font-size body-fonts sans-fonts
         sections)

(define (root . items)
  (decode (txexpr 'root '() items)
          #:txexpr-elements-proc decode-paragraphs
          #:block-txexpr-proc (compose1 hyphenate wrap-hanging-quotes)
          #:string-proc (compose1 smart-quotes smart-dashes)
          #:exclude-tags '(style script)))

(define (sn . content)
  (txexpr 'aside '((class "sidenote")) content))

(define (url src . text)
  (txexpr 'a `((href ,src)) text))

(define base-font-size 1.4)
(define body-fonts "Source Serif Pro, Georgia, serif")
(define sans-fonts "Source Sans Pro, Helvetica, Arial, sans-serif")
