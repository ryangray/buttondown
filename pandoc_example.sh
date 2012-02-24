#!/bin/sh

pandoc --from=markdown --to=html --standalone --self-contained --smart --section-divs --css=buttondown.css --output=pandoc_example.html pandoc_example.md
