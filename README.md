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

## Useful to konw

http://css2less.cc/ is useful for quickly converting CSS to less. You can also install it as a command-line tool: https://github.com/thomaspierson/libcss2less