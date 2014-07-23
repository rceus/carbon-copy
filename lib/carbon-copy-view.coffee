{View} = require 'atom'

module.exports =
class CarbonCopyView extends View
  @content: ->
    @div class: 'carbon-copy overlay from-top', =>
      @div "The CarbonCopy package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "carbon-copy:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "CarbonCopyView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
