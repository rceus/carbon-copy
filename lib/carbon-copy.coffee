module.exports =
  activate: ->
    atom.workspaceView.command "carbon-copy:copy1", => @copy1()
    atom.workspaceView.command "carbon-copy:paste1", => @paste1()
    atom.workspaceView.command "carbon-copy:copy2", => @copy2()
    atom.workspaceView.command "carbon-copy:paste2", => @paste2()
  #working for only one variable! Doesn't work if I change the text.
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

  copy2: ->
    editor=atom.workspace.activePaneItem
    selection=editor.getSelection()
    root.text2 = selection.getText()

  paste2: ->
    editor=atom.workspace.activePaneItem
    editor.insertText(text2)
