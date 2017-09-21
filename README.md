# Generate SCSS Project
`gen-project-scss`

### Download + Setup

```sh
# (1) Download gen-project-scss.sh bash script into /usr/local/bin
curl https://raw.githubusercontent.com/muktek/build--gen-project-scss/master/gen-project-scss.sh > /usr/local/bin/gen-project-scss

# (2) Download watch-scss.sh bash script into /usr/local/bin
curl https://raw.githubusercontent.com/muktek/build--gen-project-scss/master/watch-scss.sh > /usr/local/bin/watch-scss.sh

# (3) Create executable permissions on the 2 downloaded files
sudo chmod u+x /usr/local/bin/watch-scss /usr/local/bin/gen-project-scss
```

### Execution

**Create a new project**

```sh
gen-project-scss «your-project-name»
```

- this will create:
  - `index.html` file
  - `scss` folder with `main.scss`
  - `css` folder with `style.css` file
  - normailize.css as an .scss import (downloaded via curl command)

**Start the scss file-watcher**
(from `«/your-project-name»`)

```sh
watch-scss
```

- this will compile the SCSS from the `main.scss` file into the `styles.css` file
