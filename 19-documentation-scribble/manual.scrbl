#lang scribble/manual

@title{My Library Manual}
@author{Your Name}

@section{Introduction}

This is a library that does @bold{amazing} things.
You can use it to calculate @code{(+ 1 1)}.

@section{API Reference}

@defproc[(add [a number?] [b number?]) number?]{
  Returns the sum of @racket[a] and @racket[b].
}
