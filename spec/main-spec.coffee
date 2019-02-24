
describe 'asciidoc-assistant', ->

  mainModule = null

  beforeEach ->

    waitsForPromise ->
      atom.packages.activatePackage 'asciidoc-assistant'
        .then (pack) ->
          mainModule = pack.mainModule
          return

  describe 'when the asciidoc-assistant package is activated', ->
    it 'activates successfully', ->
      expect(mainModule).toBeDefined()
      expect(mainModule).toBeTruthy()
      expect(mainModule.activate).toBeDefined()
      expect(mainModule.deactivate).toBeDefined()
