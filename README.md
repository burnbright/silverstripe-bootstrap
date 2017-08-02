# Beautiful BurnBright Bootstrap Boilerplate

[![Join the chat at https://gitter.im/burnbright/silverstripe-bootstrap](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/burnbright/silverstripe-bootstrap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A basic SilverStripe bolilerplate theme, running on Bootstrap. Uses less as the css preprocessor. Uses bower to bring in external libraries, and also contains a collection of internal libraries (see `less/lib` folder). Pick and choose what you want on a per-project basis.

## Requirements

 * [grunt](http://gruntjs.com/) or [gulp](http://gulpjs.com/) (and their dependencies: npm, node)
 * [bower](http://bower.io/)

## Setup

Install via composer:

```sh
composer require burnbright/silverstripe-bootstrap
```

From within the theme directory, in terminal:

 * Run `npm install` to install grunt and associated requirements.
 * Run `bower install` to get all bower packages.

Source maps can be used, as can [chrome workspaces](https://developer.chrome.com/devtools/docs/workspaces).

## Usage

From within the theme directory, in terminal:

 * Run `grunt` / `gulp` to start the default watch task.
 * `grunt copy` / `gulp copy` will copy fonts to the right directories.

## Customising this theme

There are a few approaches you could take to customising this theme:

 * Fork the repo, and make changes. Update composer to point to your fork, or include as a submodule. This keeps the theme code 
 * Drop the theme .git folder, and commit the entire theme to your project.
 * Implement changes inside a `bootstrap_mysite` theme. This approach allows you to later on update the base bootstrap theme seperately. This "subtheme" folder will be fairly light weight, and can be committed to the site repo.
 	- Make sure you update your js/css requirements in your own templates/Page.ss to reference the mysite module.

## Supporting IE8

Bootstrap 3 somewhat supports IE8 out of the box.

If you are using jQuery, make sure your bower is setup to use jQuery a version < 2.
You can either include Respond.js to polyfill media query breakpoints, or you can extract the css of a specific breakpoint and include it using IE conditional tags.

## Useful to know

http://css2less.cc/ is useful for quickly converting CSS to less. You can also install it as a command-line tool: https://github.com/thomaspierson/libcss2less

This theme draws some inspiration from DNA's [FrontEnd Boilerplate](https://github.com/dnadesign/dna_frontend_boilerplate)
