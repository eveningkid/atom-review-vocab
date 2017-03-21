'use babel'

import {
  readdirSync,
  readFileSync,
} from 'fs'

const language = atom.config.get('atom-review-vocab.language') || 'default'
const parser = require(`./parsers/${language}`).parser

const dataDirPath = `${__dirname}/data/${language}`
const directory = readdirSync(dataDirPath)

let text = ''

directory.forEach(filePath => {
  const file = readFileSync(`${dataDirPath}/${filePath}`, 'utf8')
  text += file
})

text = text.split('\n')
.filter(line => line.trim().length)
.map(parser)

export default text
