//node modules
var path = require('path');
var fs = require('fs');

//gulp modules
var gulp = require('gulp');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var less = require('gulp-less');
var sourcemaps = require('gulp-sourcemaps');
var jshint = require('gulp-jshint');
var stripDebug = require('gulp-strip-debug');
//var imagemin = require('gulp-imagemin');

var mysitepath = "../bootstrap_mysite";
var ismysite = fs.existsSync(mysitepath);
var root = ismysite ? mysitepath : "";

var inputs = {
	bower: "bower_components",
	node: "node_modules",
	less: "less",
	js: "javascript"
}
var outputs = {
	css: path.join(root, "css"),
	js: path.join(root, "javascript"),
	fonts: path.join(root,"fonts")
};

gulp.task('less', function(){

	var files = [inputs.less + '/site.less'];

	if(ismysite) {
		files.push(
			path.join(mysitepath, "less/custom.less")
		);
	}	

	return gulp.src(files)
		.pipe(concat("site.less")) //join less files into one
		.pipe(less({
			paths: [
				'bower_components',
				'less'
			]
			//TODO: add plugins
		}))
		.pipe(gulp.dest(outputs.css));
});

gulp.task('scripts', function() {

	var files = [
		inputs.bower + "/jquery/dist/jquery.js",
		inputs.bower + "/modernizr/modernizr.js",
		inputs.bower + "/bootstrap/dist/js/bootstrap.js",
		inputs.bower + "/stellar.js/src/jquery.stellar.js",
		inputs.bower + "/wow/dist/wow.js",
		inputs.js + "/main.js"
	];

	return gulp.src(files)
		.pipe(jshint())
		.pipe(concat('site.min.js'))
    	.pipe(stripDebug())
   		.pipe(uglify())
		.pipe(gulp.dest(outputs.js));
});

gulp.task('watch', function() {

	gulp.watch([
		inputs.less + "/**/*.less",
		mysitepath + "/less/**/*.less"
	], ['less']);

	gulp.watch([
		inputs.js + "/**/*.js"
	], ['scripts']);

});

gulp.task('default', ['watch', 'less', 'scripts']);

