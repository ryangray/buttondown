# Buttondown

> A Markdown HTML output CSS stylesheet with emphasis on [Pandoc][] HTML output

[Pandoc]: https://github.com/jgm/pandoc

So many HTML style sheets try to be very bold and colorful or change things just to change them, but just end up hard to read. This tries to look very readable on-screen with sensible print adjustments. One goal is to have the HTML (in a good browser) look nice enough to read or print without having to go to PDF or Word, at least for short documents. This should also serve as a good base styling to layer specific looks over.

The general style is clean, with minimal re-definition of the defaults to keep things from being too plain as the un-styled HTML can look but not get crazy. There are definitions to cater specifically to the classes, ids and markup produced by Pandoc that some HTML style sheets don't specifically address. This will mostly work for MultiMarkdown, but it is not yet tailored to it. Most all elements that Pandoc uses should be listed, even if the style is empty so you can easily add styling to anything.

Some things might be a little opinionated, like the Pandoc TOC is not printed, URLs are printed after hyperlinks in parentheses, and code blocks are set off with a border and background. Tables are lightly styled so they show up but look more like a classic textbook than a spreadsheet. Most things are defined in relative units rather than pixels so that things should scale with font sizes and print nicely. 

I am by no means an experienced Web developer, so some of this CSS may be rather naive. I'm mainly just a Markdown user who wants his  documents to look nice. Most of the rules are commented to say why they are there so the intent is known. 
