# Buttondown

A Markdown/MultiMarkdown/Pandoc HTML output CSS stylesheet

Author: Ryan Gray
Date: 15 Feb 2011
Revised: 21 Feb 2012
   
General style is clean, with minimal re-definition of the defaults or overrides of user font settings. The body text and header styles are left alone except title, author and date classes are centered. A Pandoc TOC is not printed, URLs are printed after hyperlinks in parentheses. Block quotes are italicized. Tables are lightly styled with lines above and below the table and below the header with a boldface header. Code blocks are line wrapped. 

All elements that Pandoc and MultiMarkdown use should be listed here, even if the style is empty so you can easily add styling to anything.

There are some elements in here for HTML5 output of Pandoc, but I have not gotten around to testing that yet.

## Stuff tried and failed

It seems that specifying font-family:serif in Safari will always use Times New Roman rather than the user's preferences setting.

Making the font size different or a fixed value for print in case the screen font size is making the print font too big: Making font-size different for print than for screen causes horizontal lines to disappear in math when using MathJax under Safari.
