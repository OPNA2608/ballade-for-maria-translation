If anything else needs to be decompiled:

1. Extract the original game's `MARIA` directory into the repo checkout.
2. Add whatever calls are necessary to extract the files to `scripts/decompile.sh`, mirroring the original game's directory layout in the repo, and the corresponding calls to remake the ADV files from the modified ones to `scripts/compile.sh`.
3. Adjust the .gitignore setup accordingly.

For compiling everything back into ADV engine files, run: `scripts/compile.sh`. The resulting tree should be in the newly created `dist` directory.
