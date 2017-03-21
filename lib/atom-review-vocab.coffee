AtomReviewVocabView = require './atom-review-vocab-view'

module.exports = AtomReviewVocab =
  config:
    language:
      type: 'string'
      default: 'default'

  activate: (state) ->
    @atomReviewVocabView = new AtomReviewVocabView()
    @atomReviewVocabView.init()

  deactivate: ->
    @atomReviewVocabView.destroy()
    @statusBarTile?.destroy()

  consumeStatusBar: (statusBar) ->
    @statusBar = statusBar

    # Let's find the max priority so we make sure this will
    # be shown on the upper left, on the right side
    @priority = -1

    statusBar.getRightTiles().forEach((tile) ->
      if tile.getPriority() >= @priority
        @priority = tile.getPriority() + 1
    )

    @statusBarTile = @statusBar.addRightTile({item: @atomReviewVocabView, priority: @priority})
