{WorkspaceView} = require 'atom'
CarbonCopy = require '../lib/carbon-copy'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "CarbonCopy", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('carbon-copy')

  describe "when the carbon-copy:toggle event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(atom.workspaceView.find('.carbon-copy')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.workspaceView.trigger 'carbon-copy:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(atom.workspaceView.find('.carbon-copy')).toExist()
        atom.workspaceView.trigger 'carbon-copy:toggle'
        expect(atom.workspaceView.find('.carbon-copy')).not.toExist()
