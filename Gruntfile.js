module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    concat: {
      site: {
        src: [
          'bower_components/jquery/dist/jquery.js',
          'bower_components/modernizr/modernizr.js',
          'bower_components/bootstrap/dist/js/bootstrap.js',
          'javascript/main.js'
        ],
        dest: "javascript/site.js"
      }
    },
    watch: {
      scripts: {
        files: ['javascript/**/*.js', '!javascript/site.js'],
        tasks: ['concat', 'uglify']
      },
      less: {
        files: ['less/**/*.less'],
        tasks: ['less']
      }
    },
    less: {
      all: {
        options: {
          sourceMap: true,
          compress: true,
          sourceMapRootpath: "../"
        },
        files: {
          "css/site.css" : "less/site.less"
        }
      }
    },
    uglify: {
      scripts: {
        files: {
         'javascript/site.min.js' : ['javascript/site.js']
        }
      }
    },
    copy: {
      main: {
        files: [
          {
            expand: true,
            //flatten: true,
            cwd: 'bower_components/open-sans-fontface/fonts',
            src: '**',
            dest: 'fonts/',
            filter: 'isFile'
          }
        ]
      }
    }
  });

  // load plugins
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-copy');

  // Default task(s).
  grunt.registerTask('default', ['watch']);

};