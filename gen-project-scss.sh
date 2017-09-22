#!/bin/bash

mkdir $1
cd $1
touch index.html .gitignore
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

cat <<EOT >> .gitignore
.sass-cache/*
css/styles.css.map
EOT



# Normalize?
mkdir ./scss/imports
curl https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css > ./scss/imports/_normalize.scss
