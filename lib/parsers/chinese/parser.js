'use babel'

export const parser = (line) => {
  const [
    simplified,
    traditional,
    pinyin_numbers,
    pinyin_tones,
    definition,
  ] = line.split('\t')

  return {
    simplified,
    traditional,
    pinyin_numbers,
    pinyin_tones,
    definition,
  }
}
