var path = require('path');
var fs = require('fs');

module.exports = function(grunt) {

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

	var configs = {
		pkg: grunt.file.readJSON("package.json")
	};

	configs.concat = {
		site: {
			src: [
					inputs.bower + "/jquery/dist/jquery.js",
					inputs.bower + "/modernizr/modernizr.js",
					inputs.bower + "/bootstrap/dist/js/bootstrap.js",
					inputs.bower + "/stellar.js/src/jquery.stellar.js",
					inputs.bower + "/wow/dist/wow.js",
					inputs.js + "/main.js"
			],
			dest: outputs.js + "/site.js"
		}
	};

	configs.less = {
		all: {
			options: {
				//only add this in when you really need it, as it takes appr. 1.5s extra to execute
				//sourceMap: true,
				compress: true,
				sourceMapRootpath: "../"
			},
			files: { }
		}
	};
	configs.less.all.files[outputs.css + "/site.css"] = [inputs.less + "/site.less"];

	configs.uglify = {
		scripts: {
			files: { }
		}
	};
	configs.uglify.scripts.files[outputs.js + "/site.min.js"] = [outputs.js + "/site.js"];

	configs.copy = {
		main: {
			files: [
				{
					expand: true,
					cwd: inputs.bower + "/open-sans-fontface/fonts",
					src: "**",
					dest: outputs.fonts + "/open-sans",
					filter: "isFile"
				},
				{
					expand: true,
					cwd: inputs.bower + "/ionicons/fonts",
					src: "**",
					dest: outputs.fonts + "/ionicons",
					filter: "isFile"
				}
			]
		}
	 };

	configs.watch = {
		scripts: {
			files: [
				inputs.js + "/**/*.js",
				outputs.js + "/**/*.js",
				"!" + outputs.js + "/site.js",
				"!" + outputs.js + "/site.min.js"
			],
			tasks: ["concat", "uglify"],
			options: {
				interrupt: true
			}
		},
		less: {
			files: ["less/**/*.less"],
			tasks: ["less"],
			options: {
				interrupt: true
			}
		},
		configFiles: {
			files: [ "Gruntfile.js", "config/*.js" ],
			options: {
				reload: true
			}
		}
	};

	//mysite specific updates
	if(ismysite){
		configs.less.all.files[outputs.css + "/site.css"].push(
			path.join(mysitepath, "less/custom.less")
		);
		configs.watch.less.files.push(
			path.join(mysitepath, "less/custom.less")
		);

		configs.concat.site.src += [
			path.join(mysitepath, "javascript/**/*.js"),
			"!"+path.join(mysitepath, "javascript/**/*.min.js"),
		];
	}

	// Project configuration.
	grunt.initConfig(configs);

	// load plugins
	grunt.loadNpmTasks("grunt-contrib-concat");
	grunt.loadNpmTasks("grunt-contrib-less");
	grunt.loadNpmTasks("grunt-contrib-uglify");
	grunt.loadNpmTasks("grunt-contrib-copy");

	grunt.loadNpmTasks("grunt-contrib-watch");

	// Default task(s).
	grunt.registerTask("default", ["watch"]);

};
