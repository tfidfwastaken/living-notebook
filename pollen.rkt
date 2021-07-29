#lang racket/base

(require pollen/decode pollen/tag
         txexpr hyphenate
         "section_info.rkt")

(provide root sn url sec thematic-break fig
         base-font-size body-fonts sans-fonts
         sections)

(define (root . items)
  (decode (txexpr 'root '() items)
          #:txexpr-elements-proc decode-paragraphs
          #:block-txexpr-proc (compose1 hyphenate wrap-hanging-quotes)
          #:string-proc (compose1 smart-quotes smart-dashes)
          #:exclude-tags '(style script)))

(define (fig url . caption)
  (txexpr* 'figure '()
           (txexpr 'img `([src ,url]))
           (txexpr 'figcaption '() caption)))

(define (sn . content)
  (txexpr 'aside '([class "sidenote"]) content))

(define (url src . text)
  (txexpr 'a `([href ,src]) text))

(define (sec . text)
  (txexpr 'h2 '([class "section"]) text))

(define (thematic-break)
  (txexpr 'div '([class "theme-break"]) '((span "*") (span "*") (span "*"))))

(define base-font-size 1.2)
(define body-fonts "Source Serif Pro, Georgia, serif")
(define sans-fonts "Source Sans Pro, Helvetica, Arial, sans-serif")
