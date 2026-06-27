proc prime*(n: int): int =
  var primes = @[2]
  if n <= 0:
    raise newException(ValueError, "this prime position doesn't exist.")

  var
    candidate = primes[^1]
    prime_counter = 1
    mini_counter = 1
    is_prime = false

  while prime_counter < n:
    candidate += 1
    if candidate mod 2 == 0: continue

    is_prime = false
    mini_counter = 1
    for p in primes:
      if candidate mod p == 0:
        break
      elif mini_counter == prime_counter:
        is_prime = true
      else:
        mini_counter += 1
    
    if is_prime:
      primes.add(candidate)
      prime_counter += 1
  
  result = primes[^1]
