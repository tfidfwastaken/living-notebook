<!DOCTYPE html>
<html class="homebg">
  <head>
    <meta content="text/html" charset="utf-8">
    <link rel="shortcut icon" href="http://atharva.social/favicon.ico" id="favicon">
    <link rel="stylesheet" href="css/home.css">
    <script defer src="js/viz.js" type="text/javascript"></script>
    <title>Atharva’s Notebook</title>
  </head>
  <body>
    <div class="container" id="splash">
      <div class="main-side">
        <div id="sketch">
        </div>
        <span id="about"><a href="about.html">about</a></span>
      </div>
      <div class="main">
        <div class="home-header">
          ◊(select-from-metas 'title 'index.html)
        </div>
        <div class="section">
          <div class="section-header">Philosophy</div>
            <ul>
            ◊for/splice[([article (in-list (children 'philosophy.html))])]{
            <li><a href="◊|article|">◊(select-from-metas 'title article)</a></li>
            }
            </ul>
          </div>
        
          <div class="section-header">
            Opinions
          </div>
          
          <div class="section-header">
            Dev
          </div>
        </div>
      </div>
    </div>

  </body>
</html>
