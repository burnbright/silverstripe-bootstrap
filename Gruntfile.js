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
          'bower_components/stellar.js/src/jquery.stellar.js',
          'bower_components/wow/dist/wow.js',
          'javascript/main.js'
        ],
        dest: "javascript/site.js"
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
            cwd: 'bower_components/open-sans-fontface/fonts',
            src: '**',
            dest: 'fonts/open-sans',
            filter: 'isFile'
          },
          {
            expand: true,
            cwd: 'bower_components/ionicons/fonts',
            src: '**',
            dest: 'fonts/ionicons',
            filter: 'isFile'
          }
        ]
      }
    },
    watch: {
      scripts: {
        files: ['javascript/**/*.js', '!javascript/site.js', '!javascript/site.min.js'],
        tasks: ['concat', 'uglify'],
        options: {
          interrupt: true
        }
      },
      less: {
        files: ['less/**/*.less'],
        tasks: ['less'],
        options: {
          interrupt: true
        }
      },
      configFiles: {
        files: [ 'Gruntfile.js', 'config/*.js' ],
        options: {
          reload: true
        }
      }
    }
  });

  // load plugins
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-copy');
  grunt.loadNpmTasks('grunt-contrib-watch');

  // Default task(s).
  grunt.registerTask('default', ['watch']);

};