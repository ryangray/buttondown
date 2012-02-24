# Buttondown

> A Markdown/MultiMarkdown/Pandoc HTML output CSS stylesheet

The general style is clean, with minimal re-definition of the defaults. There are definitions to cater specifically to the classes, ids and markup produced by Pandoc and MultiMarkdown that plain HTML stylesheets don't specifically address.

So many things try to be very bold and colorful or change things just to change them, but just end up hard to read. This tries to look very readable on-screen with sensible print adjustments. One goal to have the HTML (in a good brwoser) look nice enough to read or print without having to go to PDF.

It is mostly just subtle tweaks to keep things from being too plain as the un-styled HTML can look. The body text and header styles are left alone except title, author and date classes are centered and headers are made sans-serif. A Pandoc TOC is not printed, URLs are printed after hyperlinks in parentheses. Block quotes are italicized. Tables are lightly styled with lines above and below the table and below the header with a boldface header. Code blocks are line wrapped. Most things are defined in relative units rather than pixels so that things should scale with font sizes and print nicely. There are many more subtleties.

I suppose I could separate the print styles out so that they could be applied separately to provide a print preview or reading view, but it gets applied automatically when you print, and most things have print-preview.

All elements that Pandoc and MultiMarkdown use should be listed here, even if the style is empty so you can easily add styling to anything.

There are some elements in here for HTML5 output of Pandoc, but I have not gotten around to testing that yet.

I am by no means an experienced Web developer, so some of this CSS may be rather naive. I'm mainly just a Markdown user who wants his documents to look nice. Most of the rules are commented to say why they are there so the intent is known.
