<!DOCTYPE html>
<html class="homebg">
  <head>
    <meta content="text/html" charset="utf-8">
    <link rel="shortcut icon" href="http://atharva.social/favicon.ico" id="favicon">
    <link rel="stylesheet" href="../css/page.css">
    <link href="https://fonts.googleapis.com/css?family=Space+Mono:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,700,700i" rel="stylesheet">
    <title>Atharva’s Notebook - ◊(select-from-metas 'title here)</title>
  </head>
  <body>
    <div class="main">
      <div class="nav">
        ◊(define prev-page (previous here))
        ◊(define next-page (next here))
        ◊(define (not-section-start? page)
           (not (regexp-match? #rx"section_.*" (symbol->string prev-page))))
        ◊when/splice[(and prev-page (not-section-start? prev-page))]{ <a href="" title="◊(select-from-metas 'title prev-page)">← </a> ·}
        <a href="/" title="home">⌂</a>
        ◊when/splice[(and prev-page (not-section-start? prev-page))]{· <a href="" title="◊(select-from-metas 'title next-page)"> →</a> }
      </div>
      <div class="content">
        <h1 class="page-title">
          ◊(select-from-metas 'title here)
        </h1>
        <div class="page-content">
          ◊(->html doc #:splice? #t)
        </div>
      </div>
      <div class="footer">
        ◊when/splice[(and prev-page (not-section-start? prev-page))]{ <a href="" title="◊(select-from-metas 'title prev-page)">← </a> ·}
        <a href="/" title="home">⌂</a>
        ◊when/splice[(and prev-page (not-section-start? prev-page))]{· <a href="" title="◊(select-from-metas 'title next-page)"> →</a> }
      </div>
    </div>
</div>
</body>
</html>
