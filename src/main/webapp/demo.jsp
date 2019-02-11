<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Basic usage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Intro.js - Better introductions for websites and features with a step-by-step guide for your projects.">
    <meta name="author" content="Afshin Mehrabani (@afshinmeh) in usabli.ca group">

    <!-- styles -->
    

    <!-- Add IntroJs styles -->
    <link href="./css/introjs.css" rel="stylesheet">
  </head>

  <body>

    <div class="container-narrow">

      <div class="masthead">
        <ul class="nav nav-pills pull-right" data-step="5" data-intro="Get it, use it.">
          <li><a href="https://github.com/usablica/intro.js/tags"><i class='icon-black icon-download-alt'></i> Download</a></li>
          <li><a href="https://github.com/usablica/intro.js">Github</a></li>
          <li><a href="https://twitter.com/usablica">@usablica</a></li>
        </ul>
        <h3 class="muted">Intro.js</h3>
      </div>

      <hr>

      <div class="jumbotron">
        <h1 data-step="1" data-intro="This is a tooltip!">Basic Usage</h1>
        <p class="lead" data-step="4" data-intro="Another step.">This is the basic usage of IntroJs, with <code>data-step</code> and <code>data-intro</code> attributes.</p>
        <a class="btn btn-large btn-success" href="javascript:void(0);" onclick="javascript:introJs().start();">Show me how</a>
      </div>

      <hr>

      <div class="row-fluid marketing">
        <div class="span6" data-step="2" data-intro="Ok, wasn't that fun?" data-position='right' data-scrollTo='tooltip'>
          <h4>Section One</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis augue a neque cursus ac blandit orci faucibus. Phasellus nec metus purus.</p>

          <h4>Section Two</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis augue a neque cursus ac blandit orci faucibus. Phasellus nec metus purus.</p>

          <h4>Section Three</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis augue a neque cursus ac blandit orci faucibus. Phasellus nec metus purus.</p>
          </div>

        <div class="span6" data-step="3" data-intro="More features, more fun."  data-position='left'>
          <h4>Section Four</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis augue a neque cursus ac blandit orci faucibus. Phasellus nec metus purus.</p>

          <h4>Section Five</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis augue a neque cursus ac blandit orci faucibus. Phasellus nec metus purus.</p>

          <h4>Section Six</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis augue a neque cursus ac blandit orci faucibus. Phasellus nec metus purus.</p>

        </div>
      </div>

      <hr>
    </div>
    <script type="text/javascript" src="./js/intro.js"></script>
    <script type="text/javascript">
      function addHints(){
        intro = introJs();
          intro.setOptions({
            hints: [
              {
                element: document.querySelector('#step1'),
                hint: "This is a tooltip.",
                hintPosition: 'top-middle'
              },
              {
                element: '#step2',
                hint: 'More features, more fun.',
                position: 'left'
              },
              {
                element: '#step4',
                hint: "<b>Another</b> step.",
                hintPosition: 'top-middle'
              }
            ]
          });
          intro.onhintsadded(function() {
              console.log('all hints added');
          });
          intro.onhintclick(function(hintElement, item, stepId) {
              console.log('hint clicked', hintElement, item, stepId);
          });
          intro.onhintclose(function (stepId) {
              console.log('hint closed', stepId);
          });
          intro.addHints();
      }
    </script>
  </body>
</html>