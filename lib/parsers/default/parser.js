'use babel'

export const parser = (line) => {
  const [
    word,
    definition,
  ] = line.split('\t')

  return {
    word,
    definition,
  }
}
