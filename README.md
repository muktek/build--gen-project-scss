# Generate SCSS Project
`gen-project-scss`

### Pre Configuration
##### Ruby Installation

```sh
# (1) go into your sandbox
cd ~/Documents/sandbox/

#(2) Download/install dependencies
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

#(2) Download script for ruby installer
curl https://raw.githubusercontent.com/muktek/build--gen-project-scss/master/install-ruby-rbenv.sh > install-ruby-rbenv.sh

sudo sh install-ruby-rbenv.sh
rm install-ruby-rbenv.sh
```


##### Sass/SCSS Installation

```sh
gem install sass
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
