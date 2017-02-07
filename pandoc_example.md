---
title: Buttondown Stylesheet Example
subtitle: Pandoc Markdown Version
author: Ryan Gray
date: February 2016
abstract: Demonstrates the Buttondown CSS stylings for a Pandoc HTML output.
---

Headers
=======

Above this, we have the title, subtitle, author, date, and abstract 
Pandoc metadata. These are specially classed H1, H2, H3, and DIV 
elements that we add styling to.

## Level 2

With Pandoc's `--section-divs` option, nested header levels create 
nested DIVs in HTML. This stylesheet creates nested indentation 
for them to nest visually.

### Level 3

I you can, of course, modify this CSS file or override some elements with 
your own other CSS after `buttondown.css` to change some things like 
turning off nested indenting.

#### Level 4

Buttondown doesn't re-define the font size or weight of the 
headers, but it does define the font families for them as sans-
serf. I have personally been using these font-size settings:

```css
h1 {
    font-size: 170%; /* Tone it down from 200% */
    }
h2 {
    font-size: 130%; /* Tone it down from 150% */
    }
h3 {
    font-size: 120%; /* Up from 116% */
    }
h4 {
    font-size: 110%; /* Up from 100% */
    }
h5 {
    font-size: 90%; /* Up from 80% */
    }
h6 {
    font-size: 80%; /* Up from 70% */
    }
```

##### Level 5

It doesn't re-define the body text font, and it doesn't make the text body 
narrow --- it leaves it full width. I think this creates a good base to 
layer on some style flavoring CSS files.

###### Level 6

Level 6 can be quite small.


Lists
=====

Unordered lists
---------------

### A simple list:

A paragraph before.

* Alpha
* Beta
* Gamma

A paragraph after.

### A nested list:

* Alpha
    * Apple
    * Orange
* Beta
    - A multi-line item to show  
      where the wrapping and sublist line up.
        - Earth
        - Moon
    - Pineapple
* Gamma (with numbered sublist)
    1. One
    2. Two

### A paragraph spaced one:

Not all style sheets make these have more spacing.

* Alpha

* Beta

* Gamma

And the spacing after might be too tight.

Ordered lists
-------------

### A simple one:

A paragraph before.

1. One
2. Two
3. Three

A paragraph after.

### A nested one:

The outer level is loose format.

1. One

    1. Alpha
    2. Beta
    
2. Two (with unordered sublist)

    * Gamma
    * Delta
    
3. Three

    1. Apple
        1. Circle
        2. Triangle
            1. North
                1. East
                2. West
            2. South
                * Up
                * Down
        3. Square
    1. Orange

The inner levels were left as tight format.

Block Quotes
============

We simply italicize them and don't do any fancy quote bar or decoration 
since they are already indented on the left and right.

> We simply italicize them and don't do any fancy quote bar or decoration 
since they are already indented on the left and right.


Code
====

Code blocks are styled more to be set apart a bit more than just the monospaced 
font. A light background color and border (in case the background doesn't print, 
but it looks nice too).

	x = e * 10 / 2;
	y = p - 7;

On screen, the blocks provide scroll boxes and the `inline code spans` 
word wrap. For print, the code blocks also change to word wrap. On screen, the 
`code spans` also get a little border, but lose it in print.

Links
=====

Have a subtler dotted underline with hover emphasizing with a solid line. When 
printing, remove all styling and print external URLs after the link text to be 
useful in a printout. There is no filter to not print very long URLs though.

Link text to [Google][]. An automatic link to <http://wikipedia.org>.

I haven't figured out how to not redundantly print the URL after a simple link 
whose link text is the URL, so maybe that fancy print feature should be moved to 
an extras CSS file.

[Google]: http://www.google.com

Horizontal rule
===============

A thin line that doesn't have that shadow thing that looks terrible, especially 
in print. 

- - -

See the end for what footnotes look like[^1].

[^1]: Footnotes set off with a double-line rule.

Images
======

An inline image ![][altair], and one with [![][altair] that's linked][google].

[altair]: http://www.jodypaul.com/gr/altair8800Thumb.gif "www.jodypaul.com"
[altair baseline]: http://www.jodypaul.com/gr/altair8800Thumb.gif "www.jodypaul.com" {.baseline}
[altair top]: http://www.jodypaul.com/gr/altair8800Thumb.gif "www.jodypaul.com" {.top}
[altair border]: http://www.jodypaul.com/gr/altair8800Thumb.gif "www.jodypaul.com" {.border .pad .rounded .shadow}

Inline images with classes
--------------------------

Baseline: ![][altair baseline], 

Top: ![][altair top].

Border, pad, rounded, shadow: ![][altair border]

It seems images with different vertical alignments won't work in the same paragraph.

Figure style image
------------------

![Wikipedia logo][logo]

[logo]: https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/842px-Wikipedia-logo-v2.svg.png "Wikipedia logo" {.max45}


Definition Lists
================

Still may tweak this. Trying to use subtle lines to help group it, but it feels 
a bit too table-like. However, without them, it doesn't seem to stand out much.

Term

:   Definition of the term

Term2

:   First definition of Term2
    It can be a long, wrapped paragraph like this.
    
    A definition can include multiple paragraphs if they are indented
    the same in Pandoc and MultiMarkdown 3. MultiMarkdown 2 doesn't
    support this, so it will be interpreted there as a code block
    following the Term2 definition.
    
    - They can also include Markdown
    - If it supports multiple paragraphs, a definition can contain lists and things
    - But the first has to start as a regular paragraph

Term3

:   A term can have multiple definitions. 

:   The second definition of Term3. Depending on the stylesheet for HTML
    you are using or the output format (LaTeX, etc.), this second
    definition may appear styled as a separate term but without the term
    itself.


Tables
======

These get more styling than most things, yet it's still very little compared to 
most table stylings, but way better than an un-styled HTML table. It's to emulate 
a simple textbook style, but we throw in a hover row highlight to be a little 
useful on-screen when scrubbing around the table.

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.

Math
====

There is inline math: $E=mc^2$

There is display math:

$$ q = \frac{1}{2}\rho\nu^2 $$

The CSS has some empty elements for these but adding style is not advised as it 
will mess up the HTML renderers like MathJax.
