import std/strutils

proc hey*(s: string): string =
  var s = s
  removePrefix(s, Whitespace)
  removeSuffix(s, ' ')

  let
    nothing = s.isEmptyOrWhitespace
    is_phrase = s.contains(Letters)
    make_a_question = s.endsWith('?')
  
  removePrefix(s, '?')

  let
    yell_at_him = s == s.toUpper and is_phrase
    yell_a_question = make_a_question and yell_at_him
  
  if make_a_question:
    if yell_a_question:
      return "Calm down, I know what I'm doing!"
    return "Sure."
  elif yell_at_him:
    return "Whoa, chill out!"
  elif nothing:
    return "Fine. Be that way!"
  else:
    return "Whatever."
