# On Julia

These are notes on the julia language, as I learn new concepts and libraries. They will be segregated by topics.

## General

### Strings
- You have to import a whole package to get proper formatted strings? that is sub optimal. (of course there is string interpolation but that can't do stuff like "%1.2f")

- The ability to just hit enter in a string to have a newline is good. But this can be problematic if it adds different newline chars based on the OS. 
## IDE

### Juno

I gave juno a try but the debugger doesn't seem to work very well and Atom text editor feels... sluggish.
- Everything feels just a little bit wrong.
- Markdown preview doesn't align.

### VS Code
Another new editor I have never worked with before. Seems to have a julia extension, installed and under evaluation.

- VS code doesn't have a variable viewer. Big negative.

## Unit testing
I consider Unit testing as the mark of any good project. The goal is not to produce the most tested code but to using unit testing as a tool to reason about how to implement algorithms.

## Plotting

# On the book
These are notes about concepts in the book, written down chapter by chapter as I learn.
## 1. Overview
>  I use C++ as the driving language, but you don’t need to. However, I suggest you do, because it’s fast, portable, and most production movie and video game renderers are written in C++.

Julia is supposed to be performant, can we get the same performance out of it?

## 2. Output an Image

The book outputs the image to a file. We can take two approaches here. Either we rely on a plotting library to write the image file or manually write a function to write a ppm file. We will first try to follow the book and move to plotting libraries if need be.

Just translated the C++ code to Julia. Wasn't that big of a problem except for row and column numbers in the loop.

## 3. The vec3 Class

This section is where more meaty stuff begins. We need to have a class, and when there is a class there should be unit tests.

> For our purposes, three coordinates suffices. We’ll use the same class vec3 for colors, locations, directions, offsets, whatever. Some people don’t like this because it doesn’t prevent you from doing something silly, like adding a color to a location.

This may be a good candidate to have inheritance?
