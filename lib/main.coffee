module.exports =

  dependenciesInstalled: null

  activate: (state) ->
    require('atom-package-deps').install 'asciidoc-assistant'
      .then =>
        @dependenciesInstalled = true
      .catch (error) ->
        console.error error

  deactivate: ->
    @dependenciesInstalled = null
