language = atom.config.get('atom-review-vocab.language') || 'default'
characters = require './characters'
{view} = require "./parsers/#{language}"

class AtomReviewVocabView extends HTMLElement
  init: ->
    @classList.add('atom-review-vocab', 'inline-block')
    @activate()
    @onclick = (e) ->
      @deactivate()
      @activate()

  activate: ->
    @updateCharacter()
    @intervalId = setInterval @updateCharacter.bind(@), 5 * 1000 * 60

  deactivate: ->
    clearInterval @intervalId

  getCharacter: ->
    random = Math.floor Math.random() * characters.length
    @currentCharacter = characters[random]

    {tooltip, display} = view @currentCharacter

    @toolTipDisposable?.dispose()
    @toolTipDisposable = atom.tooltips.add @, title: tooltip

    display

  updateCharacter: ->
    @textContent = @getCharacter()

module.exports = document.registerElement 'atom-review-vocab',
  prototype: AtomReviewVocabView.prototype, extends: 'a'
