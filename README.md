# Review Vocabulary Atom Package

![Review chinese vocab](https://media.giphy.com/media/xUPGcJdVHqQsBZ1iaA/giphy.gif)

# What?

What if you could learn your vocabulary **and** be coding at the same time.


# How?

Okay, **don't freak out, it's not that complicated**.  

1. Open the `/atom-review-vocab/lib/data` folder.
2. Unless you're learning chinese (*which is actually the reason why this package exists*), add your vocabulary list inside the `default` folder. [Check the file format](#vocabulary-file-format).
3. Restart Atom (manually or by pressing `ctrl+alt+cmd+L`).
4. Learn! 📖


# Vocabulary File format

Vocabulary files could usually be simple `.txt` files.  
The following formats are the only ones available at the time.

**Every 'space' you'll see in the formats below are actually 'carriage returns' (`\t`).**

Note: feel free to check the default files available in `/lib/data`.

## For `word - definition` vocabulary

```
word definition
word definition

bonjour hello;good morning
```

(= `bonjour\thello;good morning\n`)


## For chinese vocabulary

```
simplified traditional pinyinWithTonesNumbers pinyinWithTonesAccents meaning

还 還	hai2, huan2	hái, huán	still; yet; in addition; even | repay; to return
```

(if you're really using it for chinese characters, you should definitely get in touch with me [@eveningkid](https://twitter.com/eveningkid), I'm sure we could become friends!)
