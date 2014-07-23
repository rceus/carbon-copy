module.exports =
  activate: ->
    atom.workspaceView.command "carbon-copy:copy1", => @copy1()
    atom.workspaceView.command "carbon-copy:paste1", => @paste1()

  copy1: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem
    selection=editor.getSelection()
    root.text = selection.getText()
    #editor.insertText(text)
    #editor.insertText(text)

  paste1: ->
      editor=atom.workspace.activePaneItem
      editor.insertText(text)
