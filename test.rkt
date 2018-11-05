#lang racket

(require "kaitai-lexer.rkt")

(define (t1)
  (with-input-from-file "t/gif.ksy" (lambda () (process-file (current-input-port)))))

;'((("meta" #f #f)
;   (("id" #f "gif"))
;   (("file-extension" #f "gif"))
;   (("endian" #f "le")))
;  (("seq" #f #f)
;   (("id" #t "header")
;    (("type" #f "header")))
;   (("id" #t "logical_screen")
;    (("type" #f "logical_screen"))))
;  (("types" #f #f)
;   (("header" #f #f)
;    (("seq" #f #f)
;     (("id" #t "magic")
;      (("contents" #f "'GIF'")))
;     (("id" #t "version")
;      (("size" #f "3")))))
;   (("logical_screen" #f #f)
;    (("seq" #f #f)
;     (("id" #t "image_width")
;      (("type" #f "u2")))
;     (("id" #t "image_height")
;      (("type" #f "u2")))
;     (("id" #t "flags")
;      (("type" #f "u1")))
;     (("id" #t "bg_color_index")
;      (("type" #f "u1")))
;     (("id" #t "pixel_aspect_ratio"))))))