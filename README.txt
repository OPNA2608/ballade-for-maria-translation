This is a WIP translation of the 1995 PC-98 game "Ballade for Maria", developed by Fairytale Hardcover and published by IDES. I do not understand much Japanese, so this is currently being done by throwing the lines at machine translation services to get a rough translation of the game's script.

Avoid the `profiles` directory if you care about possible spoilers.

TODO:

- [x] Proof of concept
      000.MES is machine-translated.
- [ ] Get a rough translation of the game's entire script & fill out character profiles
      The latter should be useful for figuring out some consistent ways of handling different characters.
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

### CD version

Boot floppy + CD. CD has the game's data files (scripts, graphics) packed into `maria.{000,001,002,...,045}` files on a data track, and the CD-DA OST in audio tracks. Data files can be un- & repacked with https://github.com/slowbeef/dotb-romhack/tree/master/dotb-fmt, but the tool needs abit of love w/r/t Linux support.

If it's possible to undo & redo the data file packaging, and make a new disc image with the same track layout, then porting the script back into the CD release might be possible. Have not seriously investigated this however.
