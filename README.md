# Beautiful BurnBright Bootstrap Boilerplate

A basic SilverStripe bolilerplate theme, running on Bootstrap. Uses less as the css preprocessor.

## Requirements

 * [bower](http://bower.io/)
 * [grunt](http://gruntjs.com/)

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

 * Run `grunt` to start the default watch task.
 * `grunt copy` will copy fonts to the right directories.

## Customising this theme

There are a few approaches you could take to customising this theme:

 * Fork the repo, and make changes. Update composer to point to your fork, or include as a submodule. This keeps the theme code 
 * Drop the theme .git folder, and commit the entire theme to your project.
 * Implement changes inside a `bootstrap_mysite` theme. This approach allows you to later on update the base bootstrap theme seperately. This "subtheme" folder will be fairly light weight, and can be committed to the site repo.


## Useful to know

http://css2less.cc/ is useful for quickly converting CSS to less. You can also install it as a command-line tool: https://github.com/thomaspierson/libcss2less
