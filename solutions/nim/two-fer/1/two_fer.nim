
  
proc twoFer*(name = ""): string =
  case name
    of "":
      result = "One for you, one for me."
    else:
      result = "One for " & name & ", one for me."
