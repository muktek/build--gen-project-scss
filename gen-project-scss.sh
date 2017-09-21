#!/bin/bash

mkdir $1
cd $1
touch index.html
mkdir scss css images
touch ./scss/main.scss ./css/styles.css

cat <<EOT >> index.html
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>PROJECT</title>
      <link rel="stylesheet" href="./css/styles.css">
   </head>
   <body>
      <div id="app-container">
        <h1>New SCSS Project</h1>
      </div>
   </body>
</html>
EOT

cat <<EOT >> ./scss/main.scss
@import "./imports/_normalize.scss";

*{ box-sizing: border-box }
img {
   width: 100%;
   display: block;
}

#app-container{
}
EOT

# Normalize?
mkdir ./scss/imports
https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css
