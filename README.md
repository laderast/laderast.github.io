# Workshop on Starting a Distill Website in RStudio

Ted Laderas

## Learning Objectives

- **Learn** the basic components of a `distill` website
- **Build** and **preview** your website using the *Build* tab
- **Customize** the website with your bio and your picture
- **Add** links and entries to your Navbar Menu
- **Add** knitted html files as article links
- **Get** your website live using Netlify Drop


## Before You Start

1. Install R/RStudio Desktop to your Computer

2. Install the following packages in R:

```
install.packages(c("tidyverse", "postcards", "distill", "usethis"))
```

3. Create a website project in your home directory using `usethis`.

```
usethis::use_course(url="laderast/distill_website",destdir=".")
```

## Taking a tour of the Project

- `index.Rmd` - This is the *main* website page.
- `about.Rmd` - This is a nice looking about page built using the `{postcards}` package.
- `articles/` - This is a nice place to park your articles
- `_site.yml` - Customize this to change menus and links
- `_site/` folder - this contains your *rendered* website - you'll drop this folder into Netlify Drop and it will serve it. 


## Customize your about links

Take a look at `about.Rmd` and start filling out the front matter with your own links:

```
links:
  - label: LinkedIn
    url: "https://www.linkedin.com/in/ted-laderas-0714a92/"
  - label: Twitter
    url: "https://twitter.com/tladeras"
  - label: Portfolio
    url: "index.html"
  - label: Email
    url: "mailto:email@email.com"
```

## Adding a photo

Add your photo to the `images` folder. Change the line in `about.Rmd`:

```
image: "image/ted.jpg"
```

to the name of your file. For example, if your file is named `jane.jpg` and you put it in `images`:

```
image: "image/jane.jpg"
```

## Building your website using the Build Tab

In the top right panel in RStudio (next to Environment and History), there is a "Build" Tab. 

Press the `Build Website` for the 

## Add Your Rendered `.html` files to the `articles/` folder

You can now add your articles to the `articles/` folder.

There are a couple example articles here.

In general, you'll put **knitted** html articles here. Distill does not rebuild articles, it leaves that up to you. 

## Customize the Menu





## Previewing your website

- Open the `_site` folder and click on the `index.html` file (make sure you're viewing in web browser)
- Click away and make sure that everything works (links in menu, etc)


## Getting Your Website Online

We'll take the `_site` folder with our generated website and drop this entire folder into Netlify Drop.





## Creating New Websites