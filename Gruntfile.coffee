module.exports = (grunt) ->

  grunt.initConfig({
    coffee: {
      compile: {
        files: [{
          expand: true
          cwd: 'src/'
          src: ['**/*.coffee']
          dest: 'dest/'
          ext: '.js'
        }]
      }
    }
    watch: {
      options: {
        livereload: true
      }
      coffee: {
        tasks: 'coffee'
        files: ['src/**/*.coffee']
      }
    }
    connect: {
      server: {
        options: {
          port: 9000
          base: './'
        }
      }
    }
  })

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.registerTask 'default', ['connect', 'watch']