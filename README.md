# Generate SCSS Project
`gen-project-scss`

### Pre Configuration
##### Ruby + Sass/SCSS Installation

```sh
# (1) Install Ruby
sudo apt-get install ruby-full
ruby -v

# (2) Install Sass
sudo gem install sass
scss -v
```

---

### Download + Setup

```sh
# (1) Download gen-project-scss.sh bash script into /usr/local/bin
curl https://raw.githubusercontent.com/muktek/build--gen-project-scss/master/gen-project-scss.sh > gen-project-scss


# (2) Download watch-scss.sh bash script into /usr/local/bin
curl https://raw.githubusercontent.com/muktek/build--gen-project-scss/master/watch-scss.sh > watch-scss

# (3)Move files to `/usr/local/bin`
sudo mv gen-project-scss /usr/local/bin/gen-project-scss
sudo mv watch-scss /usr/local/bin/watch-scss

# (4) Create executable permissions on the 2 downloaded files in `/usr/local/bin`
sudo chmod u+x /usr/local/bin/watch-scss /usr/local/bin/gen-project-scss
```

---

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
