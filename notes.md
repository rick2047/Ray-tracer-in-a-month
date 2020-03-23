# On Julia

These are notes on the julia language, as I learn new concepts and libraries. They will be segregated by topics.

## General

### Strings
- You have to import a whole package to get proper formatted strings? that is sub optimal. (of course there is string interpolation but that can't do stuff like "%1.2f")

- The ability to just hit enter in a string to have a newline is good. But this can be problematic if it adds different newline chars based on the OS.

### Object Orientation

The class structure is a bit weird. Its not really object orientation, the central concept is multiple dispatch and it sounds lovely. Instead of defining classes and rigid methods inside them, we can define the data structures and methods separately. This seems a bit more intuitive and flexible. 

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

The book doesn't clearly describe what exactly the vec3 class is doing. The code is given as is, and what I can infer from it is that it is a 3 dimensional vector and some syntactic sugar. Most of the things a vector can do can just be represented by an array. So what are we exactly adding here? One argument is we are adding named functions. Another is that this exercise will help get a deeper understanding of vectors.

There is a static array package in julia, on one hand using it will defeat the purpose of this chapter, on the other hand I think I can reroute the purpose to understanding how multiple dispatch works.

## 4. Rays, a Simple Camera, and Background

This basically describes a ray as how much it travels in each space dimension per unit length.

>This is of the form calculate which ray goes from the eye to a pixel, compute what that ray intersects, and compute a color for that intersection point.

The ray tracer is a simple concept which derives its power from recursion.

>I’ve often gotten into trouble using square images for debugging because I transpose x and y too often, so I’ll stick with a 200×100 image.

One of the more subtle techniques I have seen which make debugging easier.
