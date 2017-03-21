'use babel'

export const view = (character) => {
  const {
    simplified,
    traditional,
    pinyin_tones,
    definition,
  } = character

  let characterToDisplay

  if (simplified === traditional) {
    characterToDisplay = simplified
  } else {
    characterToDisplay = `${simplified}，${traditional}`
  }

  return {
    tooltip: definition,
    display: `${characterToDisplay} — ${pinyin_tones}`,
  }
}
