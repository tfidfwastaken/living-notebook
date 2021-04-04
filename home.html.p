<!DOCTYPE html>
<html class="homebg">
  <head>
    <meta content="text/html" charset="utf-8">
    <link rel="shortcut icon" href="http://atharva.social/favicon.ico" id="favicon">
    <link rel="stylesheet" href="css/home.css">
    <script defer src="js/viz.js" type="text/javascript"></script>
    <title>Atharva’s Living Notebook</title>
  </head>
  <body>
    <div class="container" id="splash">
      <div class="main-side">
        <div id="sketch">
        </div>
        <span id="side-links"><a href="about.html">about</a> · <a href="">colophon</a> · <a href="https://github.com/tfidfwastaken/living-notebook">source</a></span>
      </div>
      <div class="main">
        <div class="home-header">
          ◊(select-from-metas 'title 'index.html)
        </div>
        <div class="section">
        ◊for/splice[([section (in-list sections)])]{
          <div class="section-header">◊|section|</div>
            <ul>
            ◊for/splice[([article (in-list (children (string->symbol (string-append "section_" section))))])]{
              <li><a href="◊|article|">◊(select-from-metas 'title article)</a></li>
            }
            </ul>
          </div>
        }
        </div>
      </div>
    </div>

  </body>
</html>
