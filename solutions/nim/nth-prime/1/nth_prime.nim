proc prime*(n: int): int =
  var primes = @[2]
  if n <= 0:
    raise newException(ValueError, "this prime position doesn't exist.")

  var
    candidate = primes[^1] + 1
    prime_counter = 1
    mini_counter = 1
    is_prime = false

  while prime_counter < n:
    is_prime = false
    mini_counter = 1
    for p in primes:
      if candidate mod p == 0:
        break
      elif mini_counter == prime_counter:
        is_prime = true
      else:
        inc(mini_counter)
    if is_prime:
      primes.add(candidate)
      inc(prime_counter)
    inc(candidate)
  result = primes[^1]
