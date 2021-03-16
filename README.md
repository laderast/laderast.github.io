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

1. Install R/RStudio Desktop to your Computer.
2. Install the following packages in R:

```
install.packages(c("tidyverse", "postcards", "distill", "usethis"))
```

3. Create a website project in your home directory using `usethis`.

```
usethis::use_course(url="laderast/distill_website",destdir=".")
```

## Taking a tour of the Project

These are the main files for the project.

- `index.Rmd` - This is the *main* website page.
- `about.Rmd` - This is a nice looking about page built using the `{postcards}` package.
- `image` - A folder. Any images you put in here can be accessed by `image/ted.jpg` in your pages.
- `articles/` - A folder. This is a nice place to park your articles. For right now, it's probably easier to have self-contained articles (single html files)
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

Press the `Build Website` to run `knitr`, which will knit your website to the `_site` folder. This is where your *rendered* content lives.

![Build Website Tab](image/build-website.png)

## Previewing your website

- Open the `_site` folder and click on the `index.html` file (make sure you're viewing in web browser)
  - This is your main link to the website (the entry point). For example, if I was hosting my website at https://laderast.github.io/, this would be the first page that I would see. 
- Your `about` page is available as `about.html` in the `_site` folder.
- Click away and make sure that everything works (links in menu, etc). If not, update the `_site.yml` and build it again.


## Try out different `postcards` themes

The `postcards` package has the following built in themes:

- `jolla`
- `jolla_blue`
- `onofre`
- `trestles` - which your current site uses

Change this line in your `about.Rmd` file to the theme of your interest and start building again:

```
output:
  postcards::trestles
```



## Add Your Rendered `.html` files to the `articles/` folder

You can now add your articles to the `articles/` folder.

There are a couple example articles here. Add your own files here.

In general, you'll put **knitted** html articles here. Distill does not rebuild articles, it leaves that up to you.

The relative path to access articles is like this:

`articles/crops.html` 

You'll use this when adding links to your menu.

## Customize the Menu

The menu lives in the `_site.yml` file:


```
navbar:
  right:
    - text: "Home"
      href: index.html
    - text: "About"
      href: about.html
    - text: "Articles"
      menu:
          -  text: "dplyr::slice()"
             href: articles/slice.html
          -  text: "Crop Yields"
             href: articles/crops.html
```

Add another menu entry under articles, or modify it to have a link to your articles.



## Getting Your Website Online

We'll take the `_site` folder with our generated website and drop this entire folder into Netlify Drop.

https://app.netlify.com/drop

[![](http://img.youtube.com/vi/-LRlQ_jaLAU/0.jpg)](http://www.youtube.com/watch?v=-LRlQ_jaLAU "Using Netlify Drop")

## Updating Your Website

The first thing you want to do is claim your site and register for a Netlify account. That ties your newly created website to your account so you can update it.

When you update your website with the `Build Website` button, you'll drag the `_site` folder onto the deploy zone for your website.

[![](http://img.youtube.com/vi/vywDFg2uIxY/0.jpg)](http://www.youtube.com/watch?v=vywDFg2uIxY "Updating Your Website")


More info here: https://docs.netlify.com/site-deploys/create-deploys/#drag-and-drop

## Customize Your Domain

That crazy name is the address of your site. To change it, you can click on the **Domain Settings** button: 

![Domain Settings Button ](image/site_name.png)

In the following page, click the **Options >> Edit Site Name** button. You can change the first part of the domain, such as "myportfolio.netlify.app).

![Edit Site Name Button](image/site_name2.png)

## Creating New Websites

If you want to start from scratch, I highly recommend the Distill tutorial here: 

https://rstudio.github.io/distill/website.html

You may want to setup your webpage as a blog, which lets you add posts by date:

https://rstudio.github.io/distill/blog.html

## Putting your site on GitHub

This is beyond the scope of this tutorial, but you can put your site up on GitHub as well.