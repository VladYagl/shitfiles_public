<!DOCTYPE html>
<html>
    <head>

        <script type="text/javascript">
            window.MathJax = {
              extensions: ["tex2jax.js"],
              jax: ["input/TeX", "output/HTML-CSS"],
              tex2jax: {
                inlineMath: [ ["\\(","\\)"], ['$', '$'] ],
                displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
                processEscapes: true
              },
              "HTML-CSS": {
                  availableFonts: ["STIX"],
                  preferredFont: 'STIX',
                  webFont: 'STIX-Web',
                  imageFont: null
              }
            };
        </script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js" async></script>

        <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
        <link rel="Stylesheet" type="text/css" href="%root_path%style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=%encoding%">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>%title%</title>
        %pygments%
    </head>
    <body>
        %content%
    </body>
</html>
