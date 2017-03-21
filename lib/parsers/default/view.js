'use babel'

export const view = (character) => {
  const {
    definition,
    word
  } = character

  return {
    tooltip: definition,
    display: word,
  }
}
