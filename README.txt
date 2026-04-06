This is a WIP translation of the 1995 PC-98 game "Ballade for Maria", developed by Fairytale Hardcover and published by IDES. I do not understand much Japanese, so this is currently being done by throwing the lines at machine translation services to get a rough translation of the game's script.

TODO:

- [x] Proof of concept
      000.MES is machine-translated.
- [ ] Get a rough translation of the game's entire script
- [ ] Go over the script and make it less bad
      1:1 machine translation sucks.
- [ ] Fix formatting
      After script is finalised, otherwise manually placed line breaks will be painful.

Suggestions & improvements are appreciated, but LLM output/help will be rejected.

### If anything else needs to be decompiled (i.e. graphics):

1. Extract the original game's `MARIA` directory into the repo checkout.
2. Add whatever calls are necessary to extract the files to `scripts/decompile.sh`, mirroring the original game's directory layout in the repo, and the corresponding calls to remake the ADV files from the modified ones to `scripts/compile.sh`.
3. Adjust the .gitignore setup accordingly.

For compiling everything back into ADV engine files, run: `scripts/compile.sh`. The resulting tree should be in the newly created `dist` directory.
